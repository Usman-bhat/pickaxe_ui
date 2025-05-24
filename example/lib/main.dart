import 'package:flutter/material.dart';
import 'package:pickaxe_ui/pickaxe_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pickaxe UI Demo',
      debugShowCheckedModeBanner: false,
      theme: PickaxeTheme.dark,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image at bottom
        Positioned.fill(
          child: Image.asset(
            PickaxeBackgrounds.backgroundGate,
            fit: BoxFit.cover,
          ),
        ),
        // Main content
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: PickaxeTexture(
              assetPath: PickaxeTextures.defaultGrassSide,
              repeat: ImageRepeat.repeat,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                    const Spacer(),
                    for (var item in ['TEXT', 'INPUT', 'CONTACT', 'SUBSCRIBE'])
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: PickaxeTexture(
                          assetPath: PickaxeTextures.defaultDirt,
                          repeat: ImageRepeat.repeat,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: PickaxeText(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(width: 12),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                // Name Input
                PickaxeTexture(
                  assetPath: PickaxeTextures.defaultDirt,
                  repeat: ImageRepeat.repeat,
                  opacity: 0.6,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: PickaxeTextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Message Input
                PickaxeTexture(
                  assetPath: PickaxeTextures.defaultDirt,
                  repeat: ImageRepeat.repeat,
                  opacity: 0.6,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: PickaxeTextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Send Button
                PickaxeButton(
                  onPressed: () {
                    // Your send logic
                  },
                  child: PickaxeTexture(
                    assetPath: PickaxeTextures.defaultGrass,
                    repeat: ImageRepeat.repeat,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: PickaxeText(
                        'SEND',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Subscribe Bar
                Row(
                  children: [
                    Expanded(
                      child: PickaxeTexture(
                        assetPath: PickaxeTextures.oldGrassTop,
                        repeat: ImageRepeat.repeat,
                        opacity: 0.6,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: PickaxeTextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    PickaxeTexture(
                      assetPath: PickaxeTextures.defaultDirt,
                      repeat: ImageRepeat.repeat,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: PickaxeText(
                          'SUBSCRIBE',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

