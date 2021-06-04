package com.company.JavaPractice.util;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@org.aspectj.lang.annotation.Aspect
public class Aspect {

    @Around("allServiceMethods()")
    public Object logParameters(ProceedingJoinPoint joinPoint) {
        long start = System.currentTimeMillis();
        Object result = null;

        try {
            result = joinPoint.proceed();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

        long end = System.currentTimeMillis();
        long time = end - start;
        log.info(String.format(
                "%s : %s, time %d ms",
                joinPoint.getTarget().getClass().getSimpleName(),
                joinPoint.getSignature().getName(),
                time
        ));

        return result;
    }

    @Pointcut("within(com.company.JavaPractice.service.*)")
    public void allServiceMethods() {}
}
