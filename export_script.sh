for i in 'query1' 'query2' 'query3' 'query4'
do
	echo "Creating export for $i"
	commcare-export --output-format xlsx --output $i'-export'.xlsx --project <<projectspace>> --query './'$i'.xlsx' 
  --username email@example.org --auth-mode apikey --password xxxxxxxxx
done
