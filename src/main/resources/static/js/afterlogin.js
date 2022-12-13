// 페이지 로딩후 개인정보 불러옴.
window.addEventListener("load", () => getUserInfo());

function getUserInfo() {
    $.ajax({
        url: 'user/getUserInfo',
        data: {
            "user_id": SS_USER_ID
        },
        dataType: 'json',
        type: 'POST',
        async: false,
        success: function (data) {
            putUserInfo(data);
        }, error: function () {
            // TODO 응답 에러처리, (세션 일치 확인)
        }
    })
}

// 프로파일 수정

function putUserInfo(data) {
    document.getElementById("profile_user_id").innerText = SS_USER_ID;
    document.getElementById("profile_user_name").innerText = data.user_name;
    document.getElementById("profile_user_email").innerText = data.user_email;
    document.getElementById("profile_user_addr").innerText = data.user_addr;
}

const btnUpdatePwd = document.getElementById("btnUpdatePwd");
btnUpdatePwd.addEventListener("click", () => validatePwd())

const pwd1 = document.getElementById("prop_pwd");
const pwd2 = document.getElementById("prop_pwd2");
const regExPwd = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;

function validatePwd() {
    if (!pwd1.value.match(regExPwd)) {
        return alert("비밀번호 양식을 확인해주세요.");
    } else {
        if (pwd1.value === pwd2.value) {
            return updatePwd(pwd1.value);
        } else {
            alert("비밀번호가 다릅니다.");
            return false;
        }
    }
}

function updatePwd(p) {
    $.ajax({
        url: "/user/updatePsw",
        data: JSON.stringify({
            "user_id": SS_USER_ID,
            "user_password": p
        }),
        contentType: "application/json; charset=UTF-8",
        type: 'POST',
        async: false,
        statusCode: {
            200: () => {
                alert("비밀번호가 변경되었습니다.");
                pwd1.value = "";
                pwd2.value = "";
            },
            400: () => {
                alert("유효하지 않은 접근입니다.");
                return logout();
            },
            409: () => {
                alert("이전과 다른 비밀번호를 입력해 주세요.");
            },
            500: () => {
                alert("서버에 장애가 발생하였습니다");
            }
        },
        error: () => {
            alert("비밀번호 변경에 실패하였습니다.");
        }
    });
}

function clearPsw() {
    pwd1.value = null;
    pwd2.value = null;
}

/*const lowerCaseLetters = /[a-z]/g;
const upperCaseLetters = /[A-Z]/g;
const numbers = /[0-9]/g;
const msgLowerCaseLetters = document.getElementById("msgLowerCaseLetters");
const msgUpperCaseLetters = document.getElementById("msgUpperCaseLetters");
const msgNumbers = document.getElementById("msgNumbers");
const msgMatchPsw = document.getElementById("msgMatchPsw")
psw1.onkeyup = () => {
    if (psw1.value.match(lowerCaseLetters)) {
        msgLowerCaseLetters.style.display = "none";
    } else {
        msgLowerCaseLetters.style.display = "inline-block";
    }
    if (psw1.value.match(upperCaseLetters)) {
        msgUpperCaseLetters.style.display = "none";
    } else {
        msgUpperCaseLetters.style.display = "inline-block";
    }
    if (psw1.value.match(numbers)) {
        msgNumbers.style.display = "none";
    } else {
        msgNumbers.style.display = "inline-block";
    }
    if (psw1.value.match(regExPsw)) {
        msgMatchPsw.style.display = "inline-block";
    } else {
        msgMatchPsw.style.display = "none";
    }
}*/

function updateUserEmail() {
    const email_input = document.getElementById("profile_update_email");
    if (email_input.value !== ("" || null || undefined)) {
        $.ajax({
            url: "user/updateEmail",
            data: JSON.stringify({
                "user_id": SS_USER_ID,
                "user_email": document.getElementById("profile_email").value
            }),
            contentType: "application/json; charset=UTF-8",
            type: 'POST',
            statusCode: {
                409: function () {
                    alert("이전과 다른 이메일을 입력해 주세요.");
                }
            }, success: function () {
                alert("이메일이 변경되었습니다.");
            }, error: function () {
                alert("이메일 변경에 실패하였습니다.");
            }, complete: function () {
                document.getElementById("user_updateEmail").reset();
                getUserInfo();
            }
        })
    }
}

// 로그아웃

const aLogout = document.getElementById("aLogout");
aLogout.addEventListener("click", () => {
    return logout()
});

function logout() {
    $.ajax({
        url: "/user/logout",
        type: "post",
        contentType: "application/json; charset=UTF-8",
        dataType: "json",
        statusCode: {
            200: () => {
                window.location.reload();
            }
        }
    })
}

//password script
var myInput = document.getElementById("prop_pwd");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function () {
    document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function () {
    document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function () {
    // Validate lowercase letters
    var lowerCaseLetters = /[a-z]/g;
    if (myInput.value.match(lowerCaseLetters)) {
        letter.classList.remove("invalid");
        letter.classList.add("valid");
    } else {
        letter.classList.remove("valid");
        letter.classList.add("invalid");
    }

    // Validate capital letters
    var upperCaseLetters = /[A-Z]/g;
    if (myInput.value.match(upperCaseLetters)) {
        capital.classList.remove("invalid");
        capital.classList.add("valid");
    } else {
        capital.classList.remove("valid");
        capital.classList.add("invalid");
    }

    // Validate numbers
    var numbers = /[0-9]/g;
    if (myInput.value.match(numbers)) {
        number.classList.remove("invalid");
        number.classList.add("valid");
    } else {
        number.classList.remove("valid");
        number.classList.add("invalid");
    }

    // Validate length
    if (myInput.value.length >= 8) {
        length.classList.remove("invalid");
        length.classList.add("valid");
    } else {
        length.classList.remove("valid");
        length.classList.add("invalid");
    }
}
// 비밀번호 일치 검사
var repeatPsw = document.getElementById("inputPwdRepeat");
var chkRepeatPsw = false;

/*repeatPsw.onfocus = () => {
    document.getElementById("chkPwd").style.display = "block";
}

repeatPsw.onblur = () => {
    document.getElementById("chkPwd").style.display = "none";
}
*/
repeatPsw.onkeyup = () => {
    if (repeatPsw.value === null) {
        // document.getElementById("pswOk").style.display = "none";
        // document.getElementById("pswWrong").style.display = "none";
        chkRepeatPsw = null;
    } else {
        if (myInput.value === repeatPsw.value) {
            // document.getElementById("pswWrong").style.display = "none";
            // document.getElementById("pswOk").style.display = "inline";
            chkRepeatPsw = true;
        } else {
            // document.getElementById("pswOk").style.display = "none";
            // document.getElementById("pswWrong").style.display = "inline";
            chkRepeatPsw = false;
        }
    }
}