Map<String,Integer> studentRank = new Map<String,Integer>();
studentRank.put('Beyhan', 10);
studentRank.put('Musa', 7);
studentRank.put('Dovlet', 7);
studentRank.put('Durdana', 10);
studentRank.put('Bayram', 7);
studentRank.put('Enes', 11);
for (string eachStudent : studentRank.keySet()) {
    System.debug('Studentlerimizin isimleri: '+ eachStudent );
    System.debug('Studentlerimizin Rankleri: '+ studentRank.get(eachStudent));
}