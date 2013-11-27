
main.o:     file format elf32-i386


Disassembly of section .text:

00000000 <printf>:
   0:	53                   	push   %ebx
   1:	83 ec 18             	sub    $0x18,%esp
   4:	8d 44 24 24          	lea    0x24(%esp),%eax
   8:	89 44 24 08          	mov    %eax,0x8(%esp)
   c:	8b 44 24 20          	mov    0x20(%esp),%eax
  10:	89 44 24 04          	mov    %eax,0x4(%esp)
  14:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  1b:	e8 fc ff ff ff       	call   1c <printf+0x1c>
  20:	89 c3                	mov    %eax,%ebx
  22:	89 44 24 08          	mov    %eax,0x8(%esp)
  26:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  2d:	00 
  2e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  35:	e8 fc ff ff ff       	call   36 <printf+0x36>
  3a:	89 d8                	mov    %ebx,%eax
  3c:	83 c4 18             	add    $0x18,%esp
  3f:	5b                   	pop    %ebx
  40:	c3                   	ret    

00000041 <init>:
  41:	55                   	push   %ebp
  42:	57                   	push   %edi
  43:	56                   	push   %esi
  44:	53                   	push   %ebx
  45:	83 ec 2c             	sub    $0x2c,%esp
  48:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  4f:	e8 fc ff ff ff       	call   50 <init+0xf>
  54:	b8 00 00 00 00       	mov    $0x0,%eax
  59:	bb 00 00 00 00       	mov    $0x0,%ebx
  5e:	cd 80                	int    $0x80
  60:	85 c0                	test   %eax,%eax
  62:	79 07                	jns    6b <init+0x2a>
  64:	f7 d8                	neg    %eax
  66:	a3 00 00 00 00       	mov    %eax,0x0
  6b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  72:	00 
  73:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  7a:	00 
  7b:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
  82:	e8 fc ff ff ff       	call   83 <init+0x42>
  87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  8e:	e8 fc ff ff ff       	call   8f <init+0x4e>
  93:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  9a:	e8 fc ff ff ff       	call   9b <init+0x5a>
  9f:	a1 00 00 00 00       	mov    0x0,%eax
  a4:	89 c2                	mov    %eax,%edx
  a6:	c1 e2 0a             	shl    $0xa,%edx
  a9:	89 54 24 08          	mov    %edx,0x8(%esp)
  ad:	89 44 24 04          	mov    %eax,0x4(%esp)
  b1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  b8:	e8 43 ff ff ff       	call   0 <printf>
  bd:	a1 08 00 00 00       	mov    0x8,%eax
  c2:	2b 05 00 00 00 00    	sub    0x0,%eax
  c8:	89 44 24 04          	mov    %eax,0x4(%esp)
  cc:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  d3:	e8 28 ff ff ff       	call   0 <printf>
  d8:	b8 02 00 00 00       	mov    $0x2,%eax
  dd:	cd 80                	int    $0x80
  df:	89 c3                	mov    %eax,%ebx
  e1:	85 c0                	test   %eax,%eax
  e3:	79 09                	jns    ee <init+0xad>
  e5:	f7 d8                	neg    %eax
  e7:	a3 00 00 00 00       	mov    %eax,0x0
  ec:	eb 78                	jmp    166 <init+0x125>
  ee:	85 c0                	test   %eax,%eax
  f0:	75 60                	jne    152 <init+0x111>
  f2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f9:	e8 fc ff ff ff       	call   fa <init+0xb9>
  fe:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 105:	00 
 106:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 10d:	00 
 10e:	c7 04 24 2d 00 00 00 	movl   $0x2d,(%esp)
 115:	e8 fc ff ff ff       	call   116 <init+0xd5>
 11a:	85 c0                	test   %eax,%eax
 11c:	74 0c                	je     12a <init+0xe9>
 11e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 125:	e8 fc ff ff ff       	call   126 <init+0xe5>
 12a:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 131:	00 
 132:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
 139:	00 
 13a:	c7 04 24 35 00 00 00 	movl   $0x35,(%esp)
 141:	e8 fc ff ff ff       	call   142 <init+0x101>
 146:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 14d:	e8 fc ff ff ff       	call   14e <init+0x10d>
 152:	85 c0                	test   %eax,%eax
 154:	7e 10                	jle    166 <init+0x125>
 156:	8d 74 24 1c          	lea    0x1c(%esp),%esi
 15a:	89 34 24             	mov    %esi,(%esp)
 15d:	e8 fc ff ff ff       	call   15e <init+0x11d>
 162:	39 d8                	cmp    %ebx,%eax
 164:	75 f4                	jne    15a <init+0x119>
 166:	bd 02 00 00 00       	mov    $0x2,%ebp
 16b:	8d 74 24 1c          	lea    0x1c(%esp),%esi
 16f:	89 e8                	mov    %ebp,%eax
 171:	cd 80                	int    $0x80
 173:	89 c7                	mov    %eax,%edi
 175:	89 c3                	mov    %eax,%ebx
 177:	85 c0                	test   %eax,%eax
 179:	0f 89 d6 00 00 00    	jns    255 <init+0x214>
 17f:	f7 df                	neg    %edi
 181:	89 3d 00 00 00 00    	mov    %edi,0x0
 187:	c7 04 24 3d 00 00 00 	movl   $0x3d,(%esp)
 18e:	e8 6d fe ff ff       	call   0 <printf>
 193:	eb da                	jmp    16f <init+0x12e>
 195:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 19c:	e8 fc ff ff ff       	call   19d <init+0x15c>
 1a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1a8:	e8 fc ff ff ff       	call   1a9 <init+0x168>
 1ad:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1b4:	e8 fc ff ff ff       	call   1b5 <init+0x174>
 1b9:	e8 fc ff ff ff       	call   1ba <init+0x179>
 1be:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1c5:	00 
 1c6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 1cd:	00 
 1ce:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 1d5:	e8 fc ff ff ff       	call   1d6 <init+0x195>
 1da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1e1:	e8 fc ff ff ff       	call   1e2 <init+0x1a1>
 1e6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1ed:	e8 fc ff ff ff       	call   1ee <init+0x1ad>
 1f2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1f9:	00 
 1fa:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
 201:	00 
 202:	c7 04 24 35 00 00 00 	movl   $0x35,(%esp)
 209:	e8 fc ff ff ff       	call   20a <init+0x1c9>
 20e:	89 04 24             	mov    %eax,(%esp)
 211:	e8 fc ff ff ff       	call   212 <init+0x1d1>
 216:	89 34 24             	mov    %esi,(%esp)
 219:	e8 fc ff ff ff       	call   21a <init+0x1d9>
 21e:	39 d8                	cmp    %ebx,%eax
 220:	75 f4                	jne    216 <init+0x1d5>
 222:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 226:	89 44 24 08          	mov    %eax,0x8(%esp)
 22a:	89 7c 24 04          	mov    %edi,0x4(%esp)
 22e:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
 235:	e8 c6 fd ff ff       	call   0 <printf>
 23a:	b8 24 00 00 00       	mov    $0x24,%eax
 23f:	cd 80                	int    $0x80
 241:	85 c0                	test   %eax,%eax
 243:	0f 89 26 ff ff ff    	jns    16f <init+0x12e>
 249:	f7 d8                	neg    %eax
 24b:	a3 00 00 00 00       	mov    %eax,0x0
 250:	e9 1a ff ff ff       	jmp    16f <init+0x12e>
 255:	85 c0                	test   %eax,%eax
 257:	0f 84 38 ff ff ff    	je     195 <init+0x154>
 25d:	eb b7                	jmp    216 <init+0x1d5>

0000025f <main>:
 25f:	55                   	push   %ebp
 260:	89 e5                	mov    %esp,%ebp
 262:	57                   	push   %edi
 263:	56                   	push   %esi
 264:	53                   	push   %ebx
 265:	83 e4 f0             	and    $0xfffffff0,%esp
 268:	81 ec a0 00 00 00    	sub    $0xa0,%esp
 26e:	0f b7 05 fc 01 09 00 	movzwl 0x901fc,%eax
 275:	a3 00 00 00 00       	mov    %eax,0x0
 27a:	be 80 00 09 00       	mov    $0x90080,%esi
 27f:	bf 00 00 00 00       	mov    $0x0,%edi
 284:	b9 08 00 00 00       	mov    $0x8,%ecx
 289:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 28b:	0f b7 05 02 00 09 00 	movzwl 0x90002,%eax
 292:	c1 e0 0a             	shl    $0xa,%eax
 295:	05 00 00 10 00       	add    $0x100000,%eax
 29a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 29f:	a3 08 00 00 00       	mov    %eax,0x8
 2a4:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 2a9:	7e 0c                	jle    2b7 <main+0x58>
 2ab:	c7 05 08 00 00 00 00 	movl   $0x1000000,0x8
 2b2:	00 00 01 
 2b5:	eb 07                	jmp    2be <main+0x5f>
 2b7:	3d 00 00 c0 00       	cmp    $0xc00000,%eax
 2bc:	7e 0c                	jle    2ca <main+0x6b>
 2be:	c7 05 04 00 00 00 00 	movl   $0x400000,0x4
 2c5:	00 40 00 
 2c8:	eb 1d                	jmp    2e7 <main+0x88>
 2ca:	3d 00 00 60 00       	cmp    $0x600000,%eax
 2cf:	7e 0c                	jle    2dd <main+0x7e>
 2d1:	c7 05 04 00 00 00 00 	movl   $0x200000,0x4
 2d8:	00 20 00 
 2db:	eb 0a                	jmp    2e7 <main+0x88>
 2dd:	c7 05 04 00 00 00 00 	movl   $0x100000,0x4
 2e4:	00 10 00 
 2e7:	a1 04 00 00 00       	mov    0x4,%eax
 2ec:	a3 00 00 00 00       	mov    %eax,0x0
 2f1:	c7 44 24 04 00 00 08 	movl   $0x80000,0x4(%esp)
 2f8:	00 
 2f9:	89 04 24             	mov    %eax,(%esp)
 2fc:	e8 fc ff ff ff       	call   2fd <main+0x9e>
 301:	03 05 00 00 00 00    	add    0x0,%eax
 307:	a3 00 00 00 00       	mov    %eax,0x0
 30c:	8b 15 08 00 00 00    	mov    0x8,%edx
 312:	89 54 24 04          	mov    %edx,0x4(%esp)
 316:	89 04 24             	mov    %eax,(%esp)
 319:	e8 fc ff ff ff       	call   31a <main+0xbb>
 31e:	e8 fc ff ff ff       	call   31f <main+0xc0>
 323:	e8 fc ff ff ff       	call   324 <main+0xc5>
 328:	e8 fc ff ff ff       	call   329 <main+0xca>
 32d:	e8 fc ff ff ff       	call   32e <main+0xcf>
 332:	b8 80 00 00 00       	mov    $0x80,%eax
 337:	ba 70 00 00 00       	mov    $0x70,%edx
 33c:	ee                   	out    %al,(%dx)
 33d:	eb 00                	jmp    33f <main+0xe0>
 33f:	eb 00                	jmp    341 <main+0xe2>
 341:	b2 71                	mov    $0x71,%dl
 343:	ec                   	in     (%dx),%al
 344:	eb 00                	jmp    346 <main+0xe7>
 346:	eb 00                	jmp    348 <main+0xe9>
 348:	88 44 24 60          	mov    %al,0x60(%esp)
 34c:	0f b6 d8             	movzbl %al,%ebx
 34f:	b8 82 00 00 00       	mov    $0x82,%eax
 354:	b2 70                	mov    $0x70,%dl
 356:	ee                   	out    %al,(%dx)
 357:	eb 00                	jmp    359 <main+0xfa>
 359:	eb 00                	jmp    35b <main+0xfc>
 35b:	b2 71                	mov    $0x71,%dl
 35d:	ec                   	in     (%dx),%al
 35e:	eb 00                	jmp    360 <main+0x101>
 360:	eb 00                	jmp    362 <main+0x103>
 362:	88 44 24 50          	mov    %al,0x50(%esp)
 366:	0f b6 f0             	movzbl %al,%esi
 369:	b8 84 00 00 00       	mov    $0x84,%eax
 36e:	b2 70                	mov    $0x70,%dl
 370:	ee                   	out    %al,(%dx)
 371:	eb 00                	jmp    373 <main+0x114>
 373:	eb 00                	jmp    375 <main+0x116>
 375:	b2 71                	mov    $0x71,%dl
 377:	ec                   	in     (%dx),%al
 378:	eb 00                	jmp    37a <main+0x11b>
 37a:	eb 00                	jmp    37c <main+0x11d>
 37c:	88 44 24 40          	mov    %al,0x40(%esp)
 380:	0f b6 f8             	movzbl %al,%edi
 383:	b8 87 00 00 00       	mov    $0x87,%eax
 388:	b2 70                	mov    $0x70,%dl
 38a:	ee                   	out    %al,(%dx)
 38b:	eb 00                	jmp    38d <main+0x12e>
 38d:	eb 00                	jmp    38f <main+0x130>
 38f:	b2 71                	mov    $0x71,%dl
 391:	ec                   	in     (%dx),%al
 392:	eb 00                	jmp    394 <main+0x135>
 394:	eb 00                	jmp    396 <main+0x137>
 396:	88 44 24 30          	mov    %al,0x30(%esp)
 39a:	0f b6 c0             	movzbl %al,%eax
 39d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 3a1:	b8 88 00 00 00       	mov    $0x88,%eax
 3a6:	b2 70                	mov    $0x70,%dl
 3a8:	ee                   	out    %al,(%dx)
 3a9:	eb 00                	jmp    3ab <main+0x14c>
 3ab:	eb 00                	jmp    3ad <main+0x14e>
 3ad:	b2 71                	mov    $0x71,%dl
 3af:	ec                   	in     (%dx),%al
 3b0:	eb 00                	jmp    3b2 <main+0x153>
 3b2:	eb 00                	jmp    3b4 <main+0x155>
 3b4:	88 44 24 20          	mov    %al,0x20(%esp)
 3b8:	0f b6 c8             	movzbl %al,%ecx
 3bb:	b8 89 00 00 00       	mov    $0x89,%eax
 3c0:	b2 70                	mov    $0x70,%dl
 3c2:	ee                   	out    %al,(%dx)
 3c3:	eb 00                	jmp    3c5 <main+0x166>
 3c5:	eb 00                	jmp    3c7 <main+0x168>
 3c7:	b2 71                	mov    $0x71,%dl
 3c9:	ec                   	in     (%dx),%al
 3ca:	eb 00                	jmp    3cc <main+0x16d>
 3cc:	eb 00                	jmp    3ce <main+0x16f>
 3ce:	88 44 24 10          	mov    %al,0x10(%esp)
 3d2:	0f b6 c0             	movzbl %al,%eax
 3d5:	89 44 24 08          	mov    %eax,0x8(%esp)
 3d9:	b8 80 00 00 00       	mov    $0x80,%eax
 3de:	b2 70                	mov    $0x70,%dl
 3e0:	ee                   	out    %al,(%dx)
 3e1:	eb 00                	jmp    3e3 <main+0x184>
 3e3:	eb 00                	jmp    3e5 <main+0x186>
 3e5:	b2 71                	mov    $0x71,%dl
 3e7:	ec                   	in     (%dx),%al
 3e8:	eb 00                	jmp    3ea <main+0x18b>
 3ea:	eb 00                	jmp    3ec <main+0x18d>
 3ec:	0f b6 c0             	movzbl %al,%eax
 3ef:	39 c3                	cmp    %eax,%ebx
 3f1:	0f 85 3b ff ff ff    	jne    332 <main+0xd3>
 3f7:	8b 54 24 60          	mov    0x60(%esp),%edx
 3fb:	83 e2 0f             	and    $0xf,%edx
 3fe:	c1 fb 04             	sar    $0x4,%ebx
 401:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 404:	01 c0                	add    %eax,%eax
 406:	01 c2                	add    %eax,%edx
 408:	89 54 24 7c          	mov    %edx,0x7c(%esp)
 40c:	8b 54 24 50          	mov    0x50(%esp),%edx
 410:	83 e2 0f             	and    $0xf,%edx
 413:	c1 fe 04             	sar    $0x4,%esi
 416:	8d 04 b6             	lea    (%esi,%esi,4),%eax
 419:	01 c0                	add    %eax,%eax
 41b:	01 c2                	add    %eax,%edx
 41d:	89 94 24 80 00 00 00 	mov    %edx,0x80(%esp)
 424:	8b 54 24 40          	mov    0x40(%esp),%edx
 428:	83 e2 0f             	and    $0xf,%edx
 42b:	c1 ff 04             	sar    $0x4,%edi
 42e:	8d 04 bf             	lea    (%edi,%edi,4),%eax
 431:	01 c0                	add    %eax,%eax
 433:	01 c2                	add    %eax,%edx
 435:	89 94 24 84 00 00 00 	mov    %edx,0x84(%esp)
 43c:	8b 54 24 30          	mov    0x30(%esp),%edx
 440:	83 e2 0f             	and    $0xf,%edx
 443:	8b 44 24 0c          	mov    0xc(%esp),%eax
 447:	c1 f8 04             	sar    $0x4,%eax
 44a:	8d 04 80             	lea    (%eax,%eax,4),%eax
 44d:	01 c0                	add    %eax,%eax
 44f:	01 c2                	add    %eax,%edx
 451:	89 94 24 88 00 00 00 	mov    %edx,0x88(%esp)
 458:	8b 54 24 10          	mov    0x10(%esp),%edx
 45c:	83 e2 0f             	and    $0xf,%edx
 45f:	8b 44 24 08          	mov    0x8(%esp),%eax
 463:	c1 f8 04             	sar    $0x4,%eax
 466:	8d 04 80             	lea    (%eax,%eax,4),%eax
 469:	01 c0                	add    %eax,%eax
 46b:	01 d0                	add    %edx,%eax
 46d:	89 84 24 90 00 00 00 	mov    %eax,0x90(%esp)
 474:	8b 54 24 20          	mov    0x20(%esp),%edx
 478:	83 e2 0f             	and    $0xf,%edx
 47b:	89 c8                	mov    %ecx,%eax
 47d:	c1 f8 04             	sar    $0x4,%eax
 480:	8d 04 80             	lea    (%eax,%eax,4),%eax
 483:	01 c0                	add    %eax,%eax
 485:	8d 44 02 ff          	lea    -0x1(%edx,%eax,1),%eax
 489:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%esp)
 490:	8d 44 24 7c          	lea    0x7c(%esp),%eax
 494:	89 04 24             	mov    %eax,(%esp)
 497:	e8 fc ff ff ff       	call   498 <main+0x239>
 49c:	a3 00 00 00 00       	mov    %eax,0x0
 4a1:	e8 fc ff ff ff       	call   4a2 <main+0x243>
 4a6:	a1 04 00 00 00       	mov    0x4,%eax
 4ab:	89 04 24             	mov    %eax,(%esp)
 4ae:	e8 fc ff ff ff       	call   4af <main+0x250>
 4b3:	e8 fc ff ff ff       	call   4b4 <main+0x255>
 4b8:	e8 fc ff ff ff       	call   4b9 <main+0x25a>
 4bd:	fb                   	sti    
 4be:	89 e0                	mov    %esp,%eax
 4c0:	6a 17                	push   $0x17
 4c2:	50                   	push   %eax
 4c3:	9c                   	pushf  
 4c4:	6a 0f                	push   $0xf
 4c6:	68 cc 04 00 00       	push   $0x4cc
 4cb:	cf                   	iret   
 4cc:	b8 17 00 00 00       	mov    $0x17,%eax
 4d1:	8e d8                	mov    %eax,%ds
 4d3:	8e c0                	mov    %eax,%es
 4d5:	8e e0                	mov    %eax,%fs
 4d7:	8e e8                	mov    %eax,%gs
 4d9:	b8 02 00 00 00       	mov    $0x2,%eax
 4de:	cd 80                	int    $0x80
 4e0:	85 c0                	test   %eax,%eax
 4e2:	74 07                	je     4eb <main+0x28c>
 4e4:	ba 1d 00 00 00       	mov    $0x1d,%edx
 4e9:	eb 05                	jmp    4f0 <main+0x291>
 4eb:	e8 fc ff ff ff       	call   4ec <main+0x28d>
 4f0:	89 d0                	mov    %edx,%eax
 4f2:	cd 80                	int    $0x80
 4f4:	eb fa                	jmp    4f0 <main+0x291>
