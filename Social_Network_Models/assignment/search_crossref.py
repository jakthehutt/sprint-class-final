import urllib.request
import urllib.parse
import json
import ssl

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

def search(query, rows=5):
    url = f"https://api.crossref.org/works?query={urllib.parse.quote(query)}&select=title,author,issued,DOI,container-title&rows={rows}"
    req = urllib.request.Request(url, headers={'User-Agent': 'mailto:test@example.com'})
    try:
        with urllib.request.urlopen(req, context=ctx) as response:
            data = json.loads(response.read().decode())
            for item in data['message']['items']:
                authors = ", ".join([a.get('family', '') for a in item.get('author', [])])
                title = item.get('title', [''])[0]
                year = item.get('issued', {}).get('date-parts', [[None]])[0][0]
                journal = item.get('container-title', [''])[0]
                print(f"- {authors} ({year}). {title}. {journal}. DOI: {item.get('DOI')}")
    except Exception as e:
        print(f"Error: {e}")

print("--- EU Public Affairs Advocacy ---")
search("European Union public affairs advocacy lobbying strategies")

print("\n--- Stakeholder Mapping Public Policy ---")
search("stakeholder mapping public policy analysis")

print("\n--- Coalition Clustering Discourse Network Analysis ---")
search("advocacy coalition discourse network analysis clustering")

print("\n--- ERGM policy networks micro-mechanisms ---")
search("exponential random graph models policy networks advocacy")
