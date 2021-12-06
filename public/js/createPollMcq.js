let mcq = document.getElementById("option-mcq");
let tf = document.getElementById("option-TF");
let div_mcq = document.getElementById("div-mcq");
let div_tf = document.getElementById("div-tf");

mcq.addEventListener("click",()=>{
    if(div_mcq.style.display === "none"){
        div_mcq.style.display = "block";
        div_tf.style.display = "none";
        mcq.style.backgroundColor = "#2B4F82";
        mcq.style.color = "#FFFFFF";
        tf.style.backgroundColor = "#FFFFFF";
        tf.style.color = "#2B4F82";
    }
});

tf.addEventListener("click",()=>{
    if(div_tf.style.display === "none"){
        div_tf.style.display = "block";
        div_mcq.style.display = "none";
        tf.style.backgroundColor = "#2B4F82";
        tf.style.color = "#FFFFFF";
        mcq.style.backgroundColor = "#FFFFFF";
        mcq.style.color = "#2B4F82";
    }
});
