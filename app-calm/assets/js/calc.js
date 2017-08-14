window.onload = function () {

    var calc_result = document.getElementById('result');
    const emSize = getEmPixels(calc_result) + "px";
    calc_result.style.fontSize = emSize;

    //Round to two decimal places as recommended by MDN
    function roundToTwo(num) {
        return +(Math.round(num + "e+2") + "e-2");
    }

    //Calculator Object constructor
    function Calculator() {
        this.firstValue = 0;
        //Should start in 0
        this.result = 0;
        this.operator = '+';

        //Plus operation
        this.plus = function () {
            if (typeof (this.result) === 'number' && typeof (this.firstValue) === 'number') {
                this.result = roundToTwo(Number(this.firstValue) + Number(this.result));
                printResult(this);
            } else {
                printResult(this);
                this.result = "NaN";
            }
        };

        //Minus operation
        this.minus = function () {
            if (typeof (this.result) === 'number' && typeof (this.firstValue) === 'number') {
                this.result = roundToTwo(this.firstValue - this.result);
                printResult(this);
            } else {
                printResult(this);
                this.result = "NaN";
            }
        };

        //Times operation
        this.times = function () {
            if (typeof (this.result) === 'number' && typeof (this.firstValue) === 'number') {
                this.result = roundToTwo(this.firstValue * this.result);
                printResult(this);
            } else {
                printResult(this);
                this.result = "NaN";
            }
        };

        //Divide operation
        this.divide = function () {
            if (typeof (this.result) === 'number' && typeof (this.firstValue) === 'number') {
                this.result = roundToTwo(this.firstValue / this.result);
                printResult(this);
            } else {
                printResult(this);
                this.result = "NaN";
            }
        };

        //Remainder operation
        this.remainder = function () {
            if (typeof (this.result) === 'number' && typeof (this.firstValue) === 'number') {
                this.result = roundToTwo(this.firstValue % this.result);
                printResult(this);
            } else {
                printResult(this);
                this.result = "NaN";
            }
        };

        //Reset result to 0 
        this.reset = function () {
            this.result = 0;
            this.firstValue = 0;
            printResult(this);
        }
    }

    //Print Everytime a method is called
    function printResult(self) {
        //Get font size as a number
        var f_size = Number(calc_result.style.fontSize
            .toString()
            .substring(0, calc_result.style.fontSize.indexOf('p'))
        );

        //Get width of result and its container
        var calc_width = calc_result.clientWidth + 36;
        var doc_width = document.body.clientWidth;
        if (calc_width > doc_width && f_size > 16) {
            calc_width = calc_result.clientWidth;
            doc_width = document.body.clientWidth;
            f_size -= 16;
            calc_result.style.fontSize = f_size + "px";

        }
        if (self.result === 0) {
            calc_result.style.fontSize = emSize + "px";
        } else if (self.result === 'NaN') {
            setTimeout(() => self.reset(), 3000)
        }

        //Print the result on screen
        calc_result.innerText = self.result;
    }

    //Create the calculator
    var calculator = new Calculator();

    //Add digits to the result
    function addDigit(e) {
        var targ = e.target;
        var targVal = targ.innerText;
        if (targVal === '.') {
            calculator.result = calculator.result.toString() + ".";
        } else if (calculator.result === 0) {
            calculator.result = Number(targVal);
        } else {
            calculator.result = Number(calculator.result + targVal.toString());
        }

        printResult(calculator);
    }

    //Check how it will be operated
    function operateMe(e) {
        var targ = e.target;
        var targVal = targ.innerText;
        if (targVal === '=') {

            switch (calculator.operator) {
                case '÷':
                    calculator.divide();
                    calculator.firstValue = 0;
                    break;
                case 'x':
                    calculator.times();
                    calculator.firstValue = 0;
                    break;
                case '–':
                    calculator.minus();
                    calculator.firstValue = 0;
                    break;
                case '+':
                    calculator.plus();
                    calculator.firstValue = 0;
                    break;
                case '%':
                    calculator.remainder();
                    calculator.firstValue = 0;
                    break;
            }
        } else {
            calculator.firstValue = calculator.result;
            calculator.result = 0;
            calculator.operator = targVal;
            calc_result.innerText = '';
            printResult(calculator);
        }
    }

    function espFunc(e) {
        var targ = e.target;
        var targVal = targ.innerText;
        if (calculator.result !== 0) {
            switch (targVal) {
                case '':
                    var newRes = calculator.result.toString();
                    newRes = newRes.substring(0, newRes.length - 1);
                    calculator.result = Number(newRes);
                    printResult(calculator);
                    break;

                case 'AC':
                    calc_result.style.fontSize = emSize;
                    calculator.result = 0;
                    calculator.firstValue = 0;
                    printResult(calculator);
                    break;

                case '%':
                    calculator.firstValue = calculator.result;
                    calculator.result = 0;
                    calculator.operator = targVal;
                    calc_result.innerText = '';
                    printResult(calculator);
                    break;
            }
        }
    }

    //Event listener on digits
    digits = document.getElementById('digits');
    digits.addEventListener('click', addDigit, false);

    //Event listener on operations
    operations = document.getElementById('operations');
    operations.addEventListener('click', operateMe, false);

    //Event listener on special functions
    functions = document.getElementById('functions');
    functions.addEventListener('click', espFunc, false);

}