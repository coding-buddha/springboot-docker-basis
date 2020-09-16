package edu.pasudo123.study.docker.index;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class IndexService {

    public void doSomeThing() {
        for(int i = 1; i < 10; i++) {
            for(int j = 1; j < 10; j++) {
                log.info("{} x {} = {}", i, j, i * j);
            }
        }
    }
}
