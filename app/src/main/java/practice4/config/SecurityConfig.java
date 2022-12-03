package practice4.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    UserDetailsService userDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
            .passwordEncoder(passwordEncoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                    //ITEM CONTROLLER
                    .antMatchers("/item", "/item/get/**").permitAll()
                    .antMatchers("/item/create/**",
                            "/item/delete/**").hasRole("ADMIN")
                    //MAIN CONTROLLER
                    .antMatchers("/").permitAll()
                    //ORDER CONTROLLER
                    .antMatchers("/order/send/**",
                            "/order/takeBack/**",
                            "/order/rename/**",
                            "/order/create/**",
                            "/order/delete/**",
                            "/order/change/**").hasRole("USER")
                    .antMatchers("/order/accept/**").hasRole("ADMIN")
                    .antMatchers("/order/**").hasAnyRole("USER", "ADMIN")
                    //STOCK CONTROLLER
                    .antMatchers("/stock",
                            "/stock/get/**").permitAll()
                    .antMatchers("/stock/add/**",
                            "/stock/delete/**",
                            "/stock/change/**").hasRole("ADMIN")
                    //USER CONTROLLER
                    .antMatchers("/user/**").hasAnyRole("USER", "ADMIN")
                    //ACCESS CONTROLLER
                    .antMatchers("/login/**",
                            "/registration/**",
                            "/fail",
                            "/addUser/**").permitAll()
                    //RESOURCES
                    .antMatchers("/css/**").permitAll()
                    .antMatchers("/images/**").permitAll()
                    // LOGS 
                    .antMatchers("/export/logs").permitAll()
                    .anyRequest().denyAll()
                .and()
                .formLogin()
                    .loginPage("/login").permitAll()
                    .usernameParameter("username")
                    .passwordParameter("password")
                    .defaultSuccessUrl("/user/")
                    .failureForwardUrl("/fail/")
                .and()
                    .logout();
    }

}
