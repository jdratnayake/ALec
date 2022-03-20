const quizSummary_label = document.getElementById("quizSummary-label").value.split(" ");
const quizSummary_data = document.getElementById("quizSummary-data").value.split(" ");

new Chart(document.getElementById("myChart"), {
    type: 'bar',
    data: {
        labels: quizSummary_label,
        datasets: [
            {
                label: "Participants",

                backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(255, 159, 64, 0.2)', 'rgba(255, 205, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(201, 203, 207, 0.2)'],

                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)',
                    'rgb(54, 162, 235)',
                    'rgb(153, 102, 255)',
                    'rgb(201, 203, 207)'
                ],

                borderWidth: 1,

                data: quizSummary_data
            }
        ]
    },
    options: {
        legend: { display: false },
        title: {
            display: true,
            text: 'Predicted world population (millions) in 2050'
        },
        scale: {
            ticks: {
                precision: 0
            }
        }
    }
});