// Quiz results - START
const quizSummary_label = document.getElementById("quizSummary-label").value.split("_");
const quizSummary_data = document.getElementById("quizSummary-data").value.split("_");

const quizLabels = quizSummary_label;

const quizData = {
    labels: quizLabels,
    datasets: [{
        label: 'My First Dataset',
        data: quizSummary_data,
        backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 205, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(201, 203, 207, 0.2)'
        ],
        borderColor: [
            'rgb(255, 99, 132)',
            'rgb(255, 159, 64)',
            'rgb(255, 205, 86)',
            'rgb(75, 192, 192)',
            'rgb(54, 162, 235)',
            'rgb(153, 102, 255)',
            'rgb(201, 203, 207)'
        ],
        borderWidth: 1
    }]
};

const quizConfig = {
    type: 'bar',
    data: quizData,
    options: {
        responsive: true,
        plugins: {
            legend: {
                display: false,
                position: 'top',
            },
            title: {
                display: true,
                text: ''
            }
        },
        scale: {
            ticks: {
                precision: 0
            }
        }
    },
};

new Chart("myChartQuiz", quizConfig);
// Quiz results - END


// Quiz question success rate - START
const quizQuestionSummary_label = document.getElementById("quizQuestionSummary-label").value.split("_");
const quizQuestionSummary_data = document.getElementById("quizQuestionSummary-data").value.split("_");

const labels = quizQuestionSummary_label;
const data = {
    labels: labels,
    datasets: [
        {
            label: '',
            data: quizQuestionSummary_data,
            borderColor: ['rgba(255, 172, 190, 0.2)'],
            backgroundColor: ['rgba(255, 172, 190, 1)'],
            order: 1
        },
        {
            label: '',
            data: quizQuestionSummary_data,
            borderColor: ['rgba(93, 166, 216, 1)'],
            backgroundColor: ['rgba(93, 166, 216, 1)'],
            type: 'line',
            order: 0
        }
    ]
};

const config = {
    type: 'bar',
    data: data,
    options: {
        responsive: true,
        plugins: {
            legend: {
                display: false,
                position: 'top',
            },
            title: {
                display: true,
                text: ''
            }
        }
    },
};

new Chart("myChartQuizQuestion", config);
// Quiz question success rate - END