#!\usr\bin\bash

# 1. Stwórz kod za pomocą, którego z liczb w zakresie 0-150 wyświetlone zostaną liczby podzielne przez 4 i nie podzielne przez 10

# 2. Stwórz kod za pomocą, którego z w zakresie 5 – 115 zostaną wyświetlone liczby nieparzyste większe od 12 i mniejsze od 112

# 3. Stwórz kod za pomocą, którego z liczb w zakresie 0-1000 wyświetlone zostaną liczby podzielne przez 50 i nie podzielne przez 200

echo "zadanie 3"
for ((i=0; i<=1000; i+=50));do 
	if (( $i % 200!=0 ));then
echo $i
	fi
done

# 4. Korzystając z pętli while napisz kod, który wyświetli liczby od 37 do 21 z pominięciem liczb parzystych

# 5. Korzystając z pętli while napisz kod, który wyświetli liczby od 17 do 4 z pominięciem liczb 11,9,3

# 6. Korzystając z pętli while napisz kod, który wyświetli liczby od 19 do 11 z pominięciem liczb od 12 do 17
echo "zadanie 6"
i=19
while (( i>=11));do 
	if (( i < 12 || i > 17 ));then
echo $i
	fi
((i=i-1))
done

# 7. Korzystając z pętli oblicz sumę wartości nieparzystych wpisanych w tablicę.
echo "zadanie 7"
declare -a tab=(23 40 56 3 10 12 19) #suma nieparzystych powinna wyjsc 45
suma=0
echo "tablica: "${tab[@]}
for x in ${tab[@]};do
	if (( x %2 !=0 ));then
		suma=$((suma+x))
	fi
done
	echo "suma liczb nieparzystych z tablicy: " $suma

# 8. Stwórz kod sortujący tablicę ustawiając wartości od najmniejszej do największej co iterację wyświetl aktualny stan tablicy

echo "zadanie 8"

declare -a tab=(23 40 56 3 10 12 19)
x=${#tab[@]}

echo "tablica:" ${tab[@]}

for ((i=0; i<x; i++)); do
	for ((j=0; j<x; j++)); do
		if (( ${tab[j]} > ${tab[i]} ));then
		a=${tab[j]}
		tab[j]=${tab[j+1]}
		tab[j+1]=$a
		fi
	done
done
echo "tablica:" ${tab[@]}
