package codegym.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculateController {
    @GetMapping("/calc")
    public String index() {
        return "calculation";
    }

    @PostMapping("/calc")
    public String doCalc(@RequestParam("number1") double number1,
                         @RequestParam("number2") double number2,
                         @RequestParam("Submit") String method,
                         Model model) {
        double result = 0;
        String message = "";
        switch (method) {
            case "cong":
                result = number1 + number2;
                break;
            case "tru":
                result = number1 - number2;
                break;
            case "nhan":
                result = number1 * number2;
                break;
            case "chia":
                if(number2 == 0) {
                    message = "Khong the chia cho 0";
                } else {
                    result = number1 / number2;
                }
                break;
        }
        model.addAttribute("result", result);
        model.addAttribute("message", message);

        return "calculation";
    }
}
