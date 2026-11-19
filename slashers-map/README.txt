ACID ARENA MAP v3 - textured, ~2M triangles (built headless: Blender 5.3 + art2d procedural PBR textures)

Import each map_*.glb with Studio > Import 3D (each is <= 17 MB, every mesh <= 15k tris, one material per MeshPart).
Files: map_islands_01-09, map_walls_01-05, map_acid_01-02, map_atmosphere_01.
Meshes are named <part>__<material> (cliff, sand, wall, stone, flag, planks, bark, lacq_red, lacq_blk, acid, leaf, glow, iron, flat).
Embedded textures are 512 JPEG. For best quality use roblox_textures/<material>/ (1024 ColorMap/NormalMap/RoughnessMap/MetalnessMap)
in a SurfaceAppearance on the matching meshes. Vertex colours are in the GLB but Roblox may ignore them.
Set Material=Neon on *__glow and *__acid; atmosphere file: CanCollide off, Transparency ~0.75.
Run ApplyLighting.luau in the command bar for the lighting in the previews.
Not verified inside Studio (it was closed). Estimated cost: ~2M tris is heavy for low-end mobile - consider importing only the islands + acid for mobile servers.
