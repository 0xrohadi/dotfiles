cd sqlmap-dev
python3 sqlmap.py -u $1 --crawl=1 --random-agent --batch --forms --threads=5 --level=5 --risk=3
