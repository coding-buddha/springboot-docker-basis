package edu.pasudo123.study.docker.index;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/indexes")
@RequiredArgsConstructor
public class IndexController {

    private final IndexService indexService;

    @GetMapping
    public String getIndex() {
        indexService.doSomeThing();
        return "index";
    }
}
