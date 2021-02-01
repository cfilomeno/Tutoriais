chartIt();        

        async function chartIt() {
            const data = await getData();
            const ctx = document.getElementById('myChart').getContext('2d');            
            const myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: data.xs,
                    datasets: [
                        {
                        label: 'XRD TiO2',
                        data: data.ys,
                        fill: false,
                        pointRadius: 0, 
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1
                        }
                    ]
                },
                options: {
                    scales: {
                        yAxes: [{
                             ticks: {
                                callback: function(value, index, values) {
                                    return value + 'º';
                                }
                            }
                        }]
                        
                    }
                }
            })                    
        };           

        
        async function getData() {
            const xs = [];
            const ys = [];
            
            const response = await fetch('TiO2.txt');
            const data = await response.text();
            

            const table = data.split('\n').slice(1);
            table.forEach(row => {
                const columns = row.split(',');
                const year = columns[0];
                xs.push(year)
                const temp = columns[1];
                ys.push(parseFloat(temp) + 14);
                console.log(year, temp);

            });
            return {xs, ys};
        }
                  