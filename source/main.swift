import stdlib
import libctru

@_silgen_name("printf")
func printf(_ format: StaticString, _ parameters: StaticString ...)

@_silgen_name("swift_main")
func swift_main() -> Int {

    var top = PrintConsole()
    var bottom = PrintConsole()

    gfxInitDefault()
    consoleInit(GFX_TOP, &top)
	consoleInit(GFX_BOTTOM, &bottom);

    consoleSelect(&top)
    printf("Cool, Cool, I can do things")
    
    consoleSelect(&bottom)
    printf("Fortunately with an insane amount of\nbad hacks everything is possible!!")

	while (aptMainLoop())
	{
		//Scan all the inputs. This should be done once for each frame
		hidScanInput()

		// Flush and swap framebuffers
		gfxFlushBuffers()
		gfxSwapBuffers()

		//Wait for VBlank
		gspWaitForEvent(GSPGPU_EVENT_VBlank0, true)
	}

	gfxExit()

    return 0
}