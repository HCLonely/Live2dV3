echo. > C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
for /F "tokens=*" %%F in (list.txt) do (
	echo %%F >> log.txt
	cd %%F
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: cd5fca48f5b16ee23edf2fc130f58a2486458" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/%%~nxA\"}]}" -w "\n" >> C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
		echo. %%A >> C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
	)
	cd motions
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: cd5fca48f5b16ee23edf2fc130f58a2486458" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/motions/%%~nxA\"}]}" C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
		echo. %%A >> C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
	)
	cd ..
	cd textures
	for %%A in (*) do (
		curl -X DELETE "https://api.cloudflare.com/client/v4/zones/f8e3210ff3a9d59b07a980e0df8779a2/purge_cache" -H "X-Auth-Email: alg.4chan@gmail.com" -H "X-Auth-Key: cd5fca48f5b16ee23edf2fc130f58a2486458" -H "Content-Type: application/json" --data "{\"files\":[{\"url\":\"https://l2d.alg-wiki.com/assets/%%F/textures/%%~nxA\"}]}" C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
		echo. %%A >> C:\Users\Nukeclear\Documents\GitHub\AzurLaneL2DViewer\assets\log.txt
	)
	cd ..
	cd ..
)
pause