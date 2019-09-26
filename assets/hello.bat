echo. > log.txt
for /F "tokens=*" %%F in (list.txt) do (
	echo %%F >> log.txt
	cd %%F
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: a76f9a5f2addc578a0a49df8dcf92cb92836f" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/%%~nxA\"}]}" -w "\n" >> ..\log.txt
		echo. >> ..\log.txt
	)
	cd motions
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: a76f9a5f2addc578a0a49df8dcf92cb92836f" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/motions/%%~nxA\"}]}" >> ..\..\log.txt
		echo. >> ..\..\log.txt
	)
	cd ..
	cd textures
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: a76f9a5f2addc578a0a49df8dcf92cb92836f" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/textures/%%~nxA\"}]}" >> ..\..\log.txt
		echo. >> ..\..\log.txt
	)
	cd ..
	cd ..
)
pause