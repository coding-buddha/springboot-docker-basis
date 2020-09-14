package edu.pasudo123.study.docker.index;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/indexes")
public class IndexController {

    @GetMapping
    public String getIndex() {
        return "index";
    }
}
