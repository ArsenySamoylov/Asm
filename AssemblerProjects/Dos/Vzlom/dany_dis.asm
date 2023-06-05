
./exec.exe:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	4d                   	dec    bp
   1:	5a                   	pop    dx
   2:	6d                   	ins    WORD PTR es:[di],dx
   3:	01 03                	add    WORD PTR [bp+di],ax
   5:	00 02                	add    BYTE PTR [bp+si],al
   7:	00 03                	add    BYTE PTR [bp+di],al
   9:	00 20                	add    BYTE PTR [bx+si],ah
   b:	00 ff                	add    bh,bh
   d:	ff 54 00             	call   WORD PTR [si+0x0]
  10:	00 02                	add    BYTE PTR [bp+si],al
  12:	00 00                	add    BYTE PTR [bx+si],al
  14:	00 00                	add    BYTE PTR [bx+si],al
  16:	17                   	pop    ss
  17:	00 1c                	add    BYTE PTR [si],bl
  19:	00 00                	add    BYTE PTR [bx+si],al
  1b:	00 71 01             	add    BYTE PTR [bx+di+0x1],dh
  1e:	00 00                	add    BYTE PTR [bx+si],al
  20:	04 03                	add    al,0x3
	...
  2e:	00 00                	add    BYTE PTR [bx+si],al
  30:	45                   	inc    bp
  31:	4a                   	dec    dx
  32:	4d                   	dec    bp
  33:	5a                   	pop    dx
  34:	41                   	inc    cx
  35:	4c                   	dec    sp
  36:	59                   	pop    cx
  37:	58                   	pop    ax
  38:	56                   	push   si
  39:	42                   	inc    dx
  3a:	57                   	push   di
  3b:	46                   	inc    si
  3c:	43                   	inc    bx
  3d:	52                   	push   dx
  3e:	51                   	push   cx
  3f:	55                   	push   bp
  40:	4f                   	dec    di
  41:	4e                   	dec    si
  42:	54                   	push   sp
  43:	53                   	push   bx
  44:	50                   	push   ax
  45:	49                   	dec    cx
  46:	4b                   	dec    bx
  47:	48                   	dec    ax
  48:	47                   	inc    di
  49:	44                   	inc    sp
  4a:	59                   	pop    cx
  4b:	52                   	push   dx
  4c:	55                   	push   bp
  4d:	48                   	dec    ax
  4e:	51                   	push   cx
  4f:	53                   	push   bx
  50:	4c                   	dec    sp
  51:	44                   	inc    sp
  52:	50                   	push   ax
  53:	58                   	pop    ax
  54:	4e                   	dec    si
  55:	47                   	inc    di
  56:	4f                   	dec    di
  57:	4b                   	dec    bx
  58:	4d                   	dec    bp
  59:	49                   	dec    cx
  5a:	45                   	inc    bp
  5b:	42                   	inc    dx
  5c:	46                   	inc    si
  5d:	5a                   	pop    dx
  5e:	43                   	inc    bx
  5f:	57                   	push   di
  60:	56                   	push   si
  61:	4a                   	dec    dx
  62:	41                   	inc    cx
  63:	54                   	push   sp
  64:	46                   	inc    si
  65:	56                   	push   si
  66:	50                   	push   ax
  67:	4a                   	dec    dx
  68:	49                   	dec    cx
  69:	41                   	inc    cx
  6a:	4f                   	dec    di
  6b:	59                   	pop    cx
  6c:	45                   	inc    bp
  6d:	44                   	inc    sp
  6e:	52                   	push   dx
  6f:	5a                   	pop    dx
  70:	58                   	pop    ax
  71:	57                   	push   di
  72:	47                   	inc    di
  73:	43                   	inc    bx
  74:	54                   	push   sp
  75:	4b                   	dec    bx
  76:	55                   	push   bp
  77:	51                   	push   cx
  78:	53                   	push   bx
  79:	42                   	inc    dx
  7a:	4e                   	dec    si
  7b:	4d                   	dec    bp
  7c:	48                   	dec    ax
  7d:	4c                   	dec    sp
  7e:	00 45 4b             	add    BYTE PTR [di+0x4b],al
  81:	4d                   	dec    bp
  82:	46                   	inc    si
  83:	4c                   	dec    sp
  84:	47                   	inc    di
  85:	44                   	inc    sp
  86:	51                   	push   cx
  87:	56                   	push   si
  88:	5a                   	pop    dx
  89:	4e                   	dec    si
  8a:	54                   	push   sp
  8b:	4f                   	dec    di
  8c:	57                   	push   di
  8d:	59                   	pop    cx
  8e:	48                   	dec    ax
  8f:	58                   	pop    ax
  90:	55                   	push   bp
  91:	53                   	push   bx
  92:	50                   	push   ax
  93:	41                   	inc    cx
  94:	49                   	dec    cx
  95:	42                   	inc    dx
  96:	52                   	push   dx
  97:	43                   	inc    bx
  98:	4a                   	dec    dx
  99:	41                   	inc    cx
  9a:	4a                   	dec    dx
  9b:	44                   	inc    sp
  9c:	4b                   	dec    bx
  9d:	53                   	push   bx
  9e:	49                   	dec    cx
  9f:	52                   	push   dx
  a0:	55                   	push   bp
  a1:	58                   	pop    ax
  a2:	42                   	inc    dx
  a3:	4c                   	dec    sp
  a4:	48                   	dec    ax
  a5:	57                   	push   di
  a6:	54                   	push   sp
  a7:	4d                   	dec    bp
  a8:	43                   	inc    bx
  a9:	51                   	push   cx
  aa:	47                   	inc    di
  ab:	5a                   	pop    dx
  ac:	4e                   	dec    si
  ad:	50                   	push   ax
  ae:	59                   	pop    cx
  af:	46                   	inc    si
  b0:	56                   	push   si
  b1:	4f                   	dec    di
  b2:	45                   	inc    bp
  b3:	42                   	inc    dx
  b4:	44                   	inc    sp
  b5:	46                   	inc    si
  b6:	48                   	dec    ax
  b7:	4a                   	dec    dx
  b8:	4c                   	dec    sp
  b9:	43                   	inc    bx
  ba:	50                   	push   ax
  bb:	52                   	push   dx
  bc:	54                   	push   sp
  bd:	58                   	pop    ax
  be:	56                   	push   si
  bf:	5a                   	pop    dx
  c0:	4e                   	dec    si
  c1:	59                   	pop    cx
  c2:	45                   	inc    bp
  c3:	49                   	dec    cx
  c4:	57                   	push   di
  c5:	47                   	inc    di
  c6:	41                   	inc    cx
  c7:	4b                   	dec    bx
  c8:	4d                   	dec    bp
  c9:	55                   	push   bp
  ca:	53                   	push   bx
  cb:	51                   	push   cx
  cc:	4f                   	dec    di
  cd:	45                   	inc    bp
  ce:	53                   	push   bx
  cf:	4f                   	dec    di
  d0:	56                   	push   si
  d1:	50                   	push   ax
  d2:	5a                   	pop    dx
  d3:	4a                   	dec    dx
  d4:	41                   	inc    cx
  d5:	59                   	pop    cx
  d6:	51                   	push   cx
  d7:	55                   	push   bp
  d8:	49                   	dec    cx
  d9:	52                   	push   dx
  da:	48                   	dec    ax
  db:	58                   	pop    ax
  dc:	4c                   	dec    sp
  dd:	4e                   	dec    si
  de:	46                   	inc    si
  df:	54                   	push   sp
  e0:	47                   	inc    di
  e1:	4b                   	dec    bx
  e2:	44                   	inc    sp
  e3:	43                   	inc    bx
  e4:	4d                   	dec    bp
  e5:	57                   	push   di
  e6:	42                   	inc    dx
  e7:	56                   	push   si
  e8:	5a                   	pop    dx
  e9:	42                   	inc    dx
  ea:	52                   	push   dx
  eb:	47                   	inc    di
  ec:	49                   	dec    cx
  ed:	54                   	push   sp
  ee:	59                   	pop    cx
  ef:	55                   	push   bp
  f0:	50                   	push   ax
  f1:	53                   	push   bx
  f2:	44                   	inc    sp
  f3:	4e                   	dec    si
  f4:	48                   	dec    ax
  f5:	4c                   	dec    sp
  f6:	58                   	pop    ax
  f7:	41                   	inc    cx
  f8:	57                   	push   di
  f9:	4d                   	dec    bp
  fa:	4a                   	dec    dx
  fb:	51                   	push   cx
  fc:	4f                   	dec    di
  fd:	46                   	inc    si
  fe:	45                   	inc    bp
  ff:	43                   	inc    bx
 100:	4b                   	dec    bx
 101:	00 01                	add    BYTE PTR [bx+di],al
	...
 10b:	00 54 68             	add    BYTE PTR [si+0x68],dl
 10e:	65 20 71 75          	and    BYTE PTR gs:[bx+di+0x75],dh
 112:	69 63 6b 20 62       	imul   sp,WORD PTR [bp+di+0x6b],0x6220
 117:	72 6f                	jb     0x188
 119:	77 6e                	ja     0x189
 11b:	20 66 6f             	and    BYTE PTR [bp+0x6f],ah
 11e:	78 20                	js     0x140
 120:	6a 75                	push   0x75
 122:	6d                   	ins    WORD PTR es:[di],dx
 123:	70 73                	jo     0x198
 125:	20 6f 76             	and    BYTE PTR [bx+0x76],ch
 128:	65 72 20             	gs jb  0x14b
 12b:	74 68                	je     0x195
 12d:	65 20 6c 61          	and    BYTE PTR gs:[si+0x61],ch
 131:	7a 79                	jp     0x1ac
 133:	20 64 6f             	and    BYTE PTR [si+0x6f],ah
 136:	67 00 24 00          	add    BYTE PTR [eax+eax*1],ah
	...
 162:	00 00                	add    BYTE PTR [bx+si],al
 164:	00 24                	add    BYTE PTR [si],ah
 166:	49                   	dec    cx
 167:	6e                   	outs   dx,BYTE PTR ds:[si]
 168:	70 75                	jo     0x1df
 16a:	74 20                	je     0x18c
 16c:	70 61                	jo     0x1cf
 16e:	73 73                	jae    0x1e3
 170:	77 6f                	ja     0x1e1
 172:	72 64                	jb     0x1d8
 174:	3a 20                	cmp    ah,BYTE PTR [bx+si]
 176:	24 59                	and    al,0x59
 178:	6f                   	outs   dx,WORD PTR ds:[si]
 179:	75 20                	jne    0x19b
 17b:	77 69                	ja     0x1e6
 17d:	6e                   	outs   dx,BYTE PTR ds:[si]
 17e:	21 24                	and    WORD PTR [si],sp
 180:	59                   	pop    cx
 181:	6f                   	outs   dx,WORD PTR ds:[si]
 182:	75 20                	jne    0x1a4
 184:	6c                   	ins    BYTE PTR es:[di],dx
 185:	6f                   	outs   dx,WORD PTR ds:[si]
 186:	73 65                	jae    0x1ed
 188:	21 24                	and    WORD PTR [si],sp
 18a:	0a 0d                	or     cl,BYTE PTR [di]
 18c:	24 4a                	and    al,0x4a
 18e:	41                   	inc    cx
 18f:	56                   	push   si
 190:	41                   	inc    cx
 191:	20 49 53             	and    BYTE PTR [bx+di+0x53],cl
 194:	20 54 48             	and    BYTE PTR [si+0x48],dl
 197:	45                   	inc    bp
 198:	20 54 4f             	and    BYTE PTR [si+0x4f],dl
 19b:	50                   	push   ax
 19c:	00 00                	add    BYTE PTR [bx+si],al
 19e:	00 00                	add    BYTE PTR [bx+si],al
 1a0:	b8 00 00             	mov    ax,0x0
 1a3:	8e d8                	mov    ds,ax
 1a5:	8e c0                	mov    es,ax
 1a7:	e8 6a 00             	call   0x214
 1aa:	b4 09                	mov    ah,0x9
 1ac:	ba 36 01             	mov    dx,0x136
 1af:	cd 21                	int    0x21
 1b1:	8c c8                	mov    ax,cs
 1b3:	8e d8                	mov    ds,ax
 1b5:	b4 0a                	mov    ah,0xa
 1b7:	ba 4f 00             	mov    dx,0x4f
 1ba:	cd 21                	int    0x21
 1bc:	0f b6 1e 50 00       	movzx  bx,BYTE PTR ds:0x50
 1c1:	bf 09 01             	mov    di,0x109
 1c4:	be 51 00             	mov    si,0x51
 1c7:	e8 38 01             	call   0x302
 1ca:	81 c3 09 01          	add    bx,0x109
 1ce:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
 1d2:	26 c6 47 01 24       	mov    BYTE PTR es:[bx+0x1],0x24
 1d7:	8c c0                	mov    ax,es
 1d9:	8e d8                	mov    ds,ax
 1db:	b4 09                	mov    ah,0x9
 1dd:	ba 5a 01             	mov    dx,0x15a
 1e0:	cd 21                	int    0x21
 1e2:	b9 10 00             	mov    cx,0x10
 1e5:	be 5d 01             	mov    si,0x15d
 1e8:	bf 09 01             	mov    di,0x109
 1eb:	f3 a6                	repz cmps BYTE PTR ds:[si],BYTE PTR es:[di]
 1ed:	eb 12                	jmp    0x201
 1ef:	13 00                	adc    ax,WORD PTR [bx+si]
	...
 201:	b4 09                	mov    ah,0x9
 203:	74 05                	je     0x20a
 205:	ba 50 01             	mov    dx,0x150
 208:	eb 03                	jmp    0x20d
 20a:	ba 47 01             	mov    dx,0x147
 20d:	cd 21                	int    0x21
 20f:	b8 00 4c             	mov    ax,0x4c00
 212:	cd 21                	int    0x21
 214:	30 e4                	xor    ah,ah
 216:	cd 1a                	int    0x1a
 218:	0f b6 c1             	movzx  ax,cl
 21b:	ba 34 33             	mov    dx,0x3334
 21e:	f7 ea                	imul   dx
 220:	d1 ea                	shr    dx,1
 222:	89 d0                	mov    ax,dx
 224:	c1 e2 02             	shl    dx,0x2
 227:	01 d0                	add    ax,dx
 229:	d1 e0                	shl    ax,1
 22b:	89 c7                	mov    di,ax
 22d:	e8 ba 00             	call   0x2ea
 230:	e8 01 00             	call   0x234
 233:	c3                   	ret    
 234:	be 48 01             	mov    si,0x148
 237:	e8 b5 00             	call   0x2ef
 23a:	89 c3                	mov    bx,ax
 23c:	bd 03 00             	mov    bp,0x3
 23f:	89 d8                	mov    ax,bx
 241:	ba 34 33             	mov    dx,0x3334
 244:	f7 ea                	imul   dx
 246:	89 d0                	mov    ax,dx
 248:	c1 e2 02             	shl    dx,0x2
 24b:	01 d0                	add    ax,dx
 24d:	89 da                	mov    dx,bx
 24f:	29 c2                	sub    dx,ax
 251:	2e 8b 0c             	mov    cx,WORD PTR cs:[si]
 254:	d3 e2                	shl    dx,cl
 256:	2e 8b 7c fe          	mov    di,WORD PTR cs:[si-0x2]
 25a:	83 ee 04             	sub    si,0x4
 25d:	09 95 d4 00          	or     WORD PTR [di+0xd4],dx
 261:	43                   	inc    bx
 262:	89 d8                	mov    ax,bx
 264:	ba da 09             	mov    dx,0x9da
 267:	f7 ea                	imul   dx
 269:	89 d0                	mov    ax,dx
 26b:	d1 e2                	shl    dx,1
 26d:	01 c2                	add    dx,ax
 26f:	c1 e2 02             	shl    dx,0x2
 272:	01 d0                	add    ax,dx
 274:	01 c0                	add    ax,ax
 276:	89 da                	mov    dx,bx
 278:	29 c2                	sub    dx,ax
 27a:	2e 8b 0c             	mov    cx,WORD PTR cs:[si]
 27d:	d3 e2                	shl    dx,cl
 27f:	2e 8b 7c fe          	mov    di,WORD PTR cs:[si-0x2]
 283:	83 ee 04             	sub    si,0x4
 286:	09 95 d4 00          	or     WORD PTR [di+0xd4],dx
 28a:	43                   	inc    bx
 28b:	b8 1f 00             	mov    ax,0x1f
 28e:	2e 8b 0c             	mov    cx,WORD PTR cs:[si]
 291:	d3 e0                	shl    ax,cl
 293:	2e 8b 7c fe          	mov    di,WORD PTR cs:[si-0x2]
 297:	83 ee 04             	sub    si,0x4
 29a:	f7 d0                	not    ax
 29c:	21 85 d4 00          	and    WORD PTR [di+0xd4],ax
 2a0:	4d                   	dec    bp
 2a1:	75 9c                	jne    0x23f
 2a3:	89 d8                	mov    ax,bx
 2a5:	ba 56 55             	mov    dx,0x5556
 2a8:	f7 ea                	imul   dx
 2aa:	89 d0                	mov    ax,dx
 2ac:	01 d2                	add    dx,dx
 2ae:	01 d0                	add    ax,dx
 2b0:	89 da                	mov    dx,bx
 2b2:	29 c2                	sub    dx,ax
 2b4:	2e 8b 0c             	mov    cx,WORD PTR cs:[si]
 2b7:	d3 e2                	shl    dx,cl
 2b9:	2e 8b 7c fe          	mov    di,WORD PTR cs:[si-0x2]
 2bd:	09 95 d4 00          	or     WORD PTR [di+0xd4],dx
 2c1:	c3                   	ret    
 2c2:	04 00                	add    al,0x0
 2c4:	07                   	pop    es
 2c5:	00 03                	add    BYTE PTR [bp+di],al
 2c7:	00 0a                	add    BYTE PTR [bp+si],cl
 2c9:	00 01                	add    BYTE PTR [bx+di],al
 2cb:	00 0b                	add    BYTE PTR [bp+di],cl
 2cd:	00 00                	add    BYTE PTR [bx+si],al
 2cf:	00 06 00 03          	add    BYTE PTR ds:0x300,al
 2d3:	00 05                	add    BYTE PTR [di],al
 2d5:	00 01                	add    BYTE PTR [bx+di],al
 2d7:	00 06 00 00          	add    BYTE PTR ds:0x0,al
 2db:	00 03                	add    BYTE PTR [bp+di],al
 2dd:	00 02                	add    BYTE PTR [bp+si],al
 2df:	00 08                	add    BYTE PTR [bx+si],cl
 2e1:	00 00                	add    BYTE PTR [bx+si],al
 2e3:	00 09                	add    BYTE PTR [bx+di],cl
 2e5:	00 00                	add    BYTE PTR [bx+si],al
 2e7:	00 00                	add    BYTE PTR [bx+si],al
 2e9:	00 89 3e d2          	add    BYTE PTR [bx+di-0x2dc2],cl
 2ed:	00 c3                	add    bl,al
 2ef:	69 06 d2 00 83 4f    	imul   ax,WORD PTR ds:0xd2,0x4f83
 2f5:	05 39 0a             	add    ax,0xa39
 2f8:	a3 d2 00             	mov    ds:0xd2,ax
 2fb:	c1 e8 09             	shr    ax,0x9
 2fe:	25 ff 00             	and    ax,0xff
 301:	c3                   	ret    
 302:	8a 04                	mov    al,BYTE PTR [si]
 304:	84 c0                	test   al,al
 306:	74 0a                	je     0x312
 308:	e8 08 00             	call   0x313
 30b:	26 88 05             	mov    BYTE PTR es:[di],al
 30e:	46                   	inc    si
 30f:	47                   	inc    di
 310:	eb f0                	jmp    0x302
 312:	c3                   	ret    
 313:	53                   	push   bx
 314:	51                   	push   cx
 315:	52                   	push   dx
 316:	57                   	push   di
 317:	56                   	push   si
 318:	55                   	push   bp
 319:	1e                   	push   ds
 31a:	3c 41                	cmp    al,0x41
 31c:	7d 03                	jge    0x321
 31e:	e9 a0 01             	jmp    0x4c1
 321:	3c 5a                	cmp    al,0x5a
 323:	76 0e                	jbe    0x333
 325:	3c 61                	cmp    al,0x61
 327:	7d 03                	jge    0x32c
 329:	e9 95 01             	jmp    0x4c1
 32c:	3c 7a                	cmp    al,0x7a
 32e:	76 03                	jbe    0x333
 330:	e9 8e 01             	jmp    0x4c1
 333:	68 00 00             	push   0x0
 336:	1f                   	pop    ds
 337:	25 df 00             	and    ax,0xdf
 33a:	83 ec 10             	sub    sp,0x10
 33d:	89 e6                	mov    si,sp
 33f:	83 c6 0e             	add    si,0xe
 342:	bb 99 03             	mov    bx,0x399
 345:	bd 03 00             	mov    bp,0x3
 348:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 34b:	8b 95 d4 00          	mov    dx,WORD PTR [di+0xd4]
 34f:	2e 8b 4f fe          	mov    cx,WORD PTR cs:[bx-0x2]
 353:	83 eb 04             	sub    bx,0x4
 356:	d3 ea                	shr    dx,cl
 358:	83 e2 07             	and    dx,0x7
 35b:	6b d2 1a             	imul   dx,dx,0x1a
 35e:	83 c2 4f             	add    dx,0x4f
 361:	36 89 14             	mov    WORD PTR ss:[si],dx
 364:	83 ee 02             	sub    si,0x2
 367:	4d                   	dec    bp
 368:	75 de                	jne    0x348
 36a:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 36d:	8b 95 d4 00          	mov    dx,WORD PTR [di+0xd4]
 371:	2e 8b 4f fe          	mov    cx,WORD PTR cs:[bx-0x2]
 375:	83 eb 04             	sub    bx,0x4
 378:	d3 ea                	shr    dx,cl
 37a:	83 e2 07             	and    dx,0x7
 37d:	6b d2 1a             	imul   dx,dx,0x1a
 380:	83 c2 00             	add    dx,0x0
 383:	36 89 14             	mov    WORD PTR ss:[si],dx
 386:	83 ee 02             	sub    si,0x2
 389:	b5 04                	mov    ch,0x4
 38b:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 38e:	8b 95 d4 00          	mov    dx,WORD PTR [di+0xd4]
 392:	2e 8a 4f fe          	mov    cl,BYTE PTR cs:[bx-0x2]
 396:	83 eb 04             	sub    bx,0x4
 399:	d3 ea                	shr    dx,cl
 39b:	83 e2 1f             	and    dx,0x1f
 39e:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 3a1:	8b ad d4 00          	mov    bp,WORD PTR [di+0xd4]
 3a5:	2e 8a 4f fe          	mov    cl,BYTE PTR cs:[bx-0x2]
 3a9:	83 eb 04             	sub    bx,0x4
 3ac:	d3 ed                	shr    bp,cl
 3ae:	83 e5 1f             	and    bp,0x1f
 3b1:	29 ea                	sub    dx,bp
 3b3:	36 89 14             	mov    WORD PTR ss:[si],dx
 3b6:	83 ee 02             	sub    si,0x2
 3b9:	fe cd                	dec    ch
 3bb:	75 ce                	jne    0x38b
 3bd:	96                   	xchg   si,ax
 3be:	b5 03                	mov    ch,0x3
 3c0:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 3c3:	8b 95 d4 00          	mov    dx,WORD PTR [di+0xd4]
 3c7:	2e 8a 4f fe          	mov    cl,BYTE PTR cs:[bx-0x2]
 3cb:	d3 ea                	shr    dx,cl
 3cd:	83 e2 1f             	and    dx,0x1f
 3d0:	42                   	inc    dx
 3d1:	89 d7                	mov    di,dx
 3d3:	e8 65 01             	call   0x53b
 3d6:	89 c2                	mov    dx,ax
 3d8:	2e 8b 3f             	mov    di,WORD PTR cs:[bx]
 3db:	2e 8a 4f fe          	mov    cl,BYTE PTR cs:[bx-0x2]
 3df:	83 eb 04             	sub    bx,0x4
 3e2:	d3 e2                	shl    dx,cl
 3e4:	bd 1f 00             	mov    bp,0x1f
 3e7:	d3 e5                	shl    bp,cl
 3e9:	f7 d5                	not    bp
 3eb:	21 ad d4 00          	and    WORD PTR [di+0xd4],bp
 3ef:	09 95 d4 00          	or     WORD PTR [di+0xd4],dx
 3f3:	fe cd                	dec    ch
 3f5:	85 c0                	test   ax,ax
 3f7:	74 c7                	je     0x3c0
 3f9:	96                   	xchg   si,ax
 3fa:	80 fd 00             	cmp    ch,0x0
 3fd:	74 07                	je     0x406
 3ff:	fe cd                	dec    ch
 401:	83 eb 04             	sub    bx,0x4
 404:	eb f4                	jmp    0x3fa
 406:	b5 03                	mov    ch,0x3
 408:	2c 41                	sub    al,0x41
 40a:	89 e5                	mov    bp,sp
 40c:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 40f:	03 46 00             	add    ax,WORD PTR [bp+0x0]
 412:	2e 8b 7f fe          	mov    di,WORD PTR cs:[bx-0x2]
 416:	8b 95 d4 00          	mov    dx,WORD PTR [di+0xd4]
 41a:	2e 8a 4f fc          	mov    cl,BYTE PTR cs:[bx-0x4]
 41e:	d3 ea                	shr    dx,cl
 420:	83 e2 1f             	and    dx,0x1f
 423:	00 d0                	add    al,dl
 425:	89 c7                	mov    di,ax
 427:	e8 11 01             	call   0x53b
 42a:	89 e5                	mov    bp,sp
 42c:	2e 03 6f fa          	add    bp,WORD PTR cs:[bx-0x6]
 430:	83 eb 08             	sub    bx,0x8
 433:	8b 6e 00             	mov    bp,WORD PTR [bp+0x0]
 436:	01 c5                	add    bp,ax
 438:	3e 8a 46 00          	mov    al,BYTE PTR ds:[bp+0x0]
 43c:	fe cd                	dec    ch
 43e:	75 c8                	jne    0x408
 440:	2c 41                	sub    al,0x41
 442:	89 e5                	mov    bp,sp
 444:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 447:	83 eb 02             	sub    bx,0x2
 44a:	03 46 00             	add    ax,WORD PTR [bp+0x0]
 44d:	89 c7                	mov    di,ax
 44f:	e8 e9 00             	call   0x53b
 452:	89 e5                	mov    bp,sp
 454:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 457:	83 eb 02             	sub    bx,0x2
 45a:	8b 6e 00             	mov    bp,WORD PTR [bp+0x0]
 45d:	01 c5                	add    bp,ax
 45f:	3e 8a 46 00          	mov    al,BYTE PTR ds:[bp+0x0]
 463:	be 03 00             	mov    si,0x3
 466:	2c 41                	sub    al,0x41
 468:	89 e5                	mov    bp,sp
 46a:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 46d:	83 eb 02             	sub    bx,0x2
 470:	2b 46 00             	sub    ax,WORD PTR [bp+0x0]
 473:	89 c7                	mov    di,ax
 475:	e8 c3 00             	call   0x53b
 478:	04 41                	add    al,0x41
 47a:	89 e5                	mov    bp,sp
 47c:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 47f:	83 eb 02             	sub    bx,0x2
 482:	b9 1a 00             	mov    cx,0x1a
 485:	8b 7e 00             	mov    di,WORD PTR [bp+0x0]
 488:	89 fa                	mov    dx,di
 48a:	f2 ae                	repnz scas al,BYTE PTR es:[di]
 48c:	29 d7                	sub    di,dx
 48e:	4f                   	dec    di
 48f:	2e 8b 2f             	mov    bp,WORD PTR cs:[bx]
 492:	3e 8b 96 d4 00       	mov    dx,WORD PTR ds:[bp+0xd4]
 497:	2e 8a 4f fe          	mov    cl,BYTE PTR cs:[bx-0x2]
 49b:	83 eb 04             	sub    bx,0x4
 49e:	d3 ea                	shr    dx,cl
 4a0:	83 e2 1f             	and    dx,0x1f
 4a3:	29 d7                	sub    di,dx
 4a5:	e8 93 00             	call   0x53b
 4a8:	04 41                	add    al,0x41
 4aa:	4e                   	dec    si
 4ab:	75 b9                	jne    0x466
 4ad:	2c 41                	sub    al,0x41
 4af:	89 e5                	mov    bp,sp
 4b1:	2e 03 2f             	add    bp,WORD PTR cs:[bx]
 4b4:	2b 46 00             	sub    ax,WORD PTR [bp+0x0]
 4b7:	89 c7                	mov    di,ax
 4b9:	e8 7f 00             	call   0x53b
 4bc:	04 41                	add    al,0x41
 4be:	83 c4 10             	add    sp,0x10
 4c1:	1f                   	pop    ds
 4c2:	5d                   	pop    bp
 4c3:	5e                   	pop    si
 4c4:	5f                   	pop    di
 4c5:	5a                   	pop    dx
 4c6:	59                   	pop    cx
 4c7:	5b                   	pop    bx
 4c8:	c3                   	ret    
 4c9:	06                   	push   es
 4ca:	00 08                	add    BYTE PTR [bx+si],cl
 4cc:	00 02                	add    BYTE PTR [bp+si],al
 4ce:	00 0e 00 04          	add    BYTE PTR ds:0x400,cl
 4d2:	00 05                	add    BYTE PTR [di],al
 4d4:	00 03                	add    BYTE PTR [bp+di],al
 4d6:	00 0c                	add    BYTE PTR [si],cl
 4d8:	00 02                	add    BYTE PTR [bp+si],al
 4da:	00 0a                	add    BYTE PTR [bp+si],cl
 4dc:	00 03                	add    BYTE PTR [bp+di],al
 4de:	00 0a                	add    BYTE PTR [bp+si],cl
 4e0:	00 00                	add    BYTE PTR [bx+si],al
 4e2:	00 08                	add    BYTE PTR [bx+si],cl
 4e4:	00 00                	add    BYTE PTR [bx+si],al
 4e6:	00 0a                	add    BYTE PTR [bp+si],cl
 4e8:	00 0a                	add    BYTE PTR [bp+si],cl
 4ea:	00 03                	add    BYTE PTR [bp+di],al
 4ec:	00 02                	add    BYTE PTR [bp+si],al
 4ee:	00 0c                	add    BYTE PTR [si],cl
 4f0:	00 05                	add    BYTE PTR [di],al
 4f2:	00 03                	add    BYTE PTR [bp+di],al
 4f4:	00 04                	add    BYTE PTR [si],al
 4f6:	00 0e 00 08          	add    BYTE PTR ds:0x800,cl
 4fa:	00 02                	add    BYTE PTR [bp+si],al
 4fc:	00 06 00 0a          	add    BYTE PTR ds:0xa00,al
 500:	00 03                	add    BYTE PTR [bp+di],al
 502:	00 05                	add    BYTE PTR [di],al
 504:	00 03                	add    BYTE PTR [bp+di],al
 506:	00 08                	add    BYTE PTR [bx+si],cl
 508:	00 02                	add    BYTE PTR [bp+si],al
 50a:	00 0b                	add    BYTE PTR [bp+di],cl
 50c:	00 01                	add    BYTE PTR [bx+di],al
 50e:	00 00                	add    BYTE PTR [bx+si],al
 510:	00 06 00 06          	add    BYTE PTR ds:0x600,al
 514:	00 01                	add    BYTE PTR [bx+di],al
 516:	00 0b                	add    BYTE PTR [bp+di],cl
 518:	00 01                	add    BYTE PTR [bx+di],al
 51a:	00 09                	add    BYTE PTR [bx+di],cl
 51c:	00 00                	add    BYTE PTR [bx+si],al
 51e:	00 06 00 01          	add    BYTE PTR ds:0x100,al
 522:	00 00                	add    BYTE PTR [bx+si],al
 524:	00 06 00 09          	add    BYTE PTR ds:0x900,al
 528:	00 00                	add    BYTE PTR [bx+si],al
 52a:	00 07                	add    BYTE PTR [bx],al
 52c:	00 04                	add    BYTE PTR [si],al
 52e:	00 06 00 00          	add    BYTE PTR ds:0x0,al
 532:	00 03                	add    BYTE PTR [bp+di],al
 534:	00 00                	add    BYTE PTR [bx+si],al
 536:	00 00                	add    BYTE PTR [bx+si],al
 538:	00 00                	add    BYTE PTR [bx+si],al
 53a:	00 52 55             	add    BYTE PTR [bp+si+0x55],dl
 53d:	57                   	push   di
 53e:	89 f8                	mov    ax,di
 540:	31 ed                	xor    bp,bp
 542:	83 ff 00             	cmp    di,0x0
 545:	7c 1a                	jl     0x561
 547:	ba da 09             	mov    dx,0x9da
 54a:	f7 e2                	mul    dx
 54c:	89 d0                	mov    ax,dx
 54e:	d1 e2                	shl    dx,1
 550:	01 c2                	add    dx,ax
 552:	c1 e2 02             	shl    dx,0x2
 555:	01 d0                	add    ax,dx
 557:	01 c0                	add    ax,ax
 559:	89 fa                	mov    dx,di
 55b:	29 c2                	sub    dx,ax
 55d:	89 d0                	mov    ax,dx
 55f:	eb 08                	jmp    0x569
 561:	83 c0 1a             	add    ax,0x1a
 564:	83 f8 00             	cmp    ax,0x0
 567:	7c f8                	jl     0x561
 569:	5f                   	pop    di
 56a:	5d                   	pop    bp
 56b:	5a                   	pop    dx
 56c:	c3                   	ret    
