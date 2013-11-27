
fs.o:     file format elf32-i386


Disassembly of section .text:

00000000 <sys_ustat>:
       0:	b8 da ff ff ff       	mov    $0xffffffda,%eax
       5:	c3                   	ret    

00000006 <sys_utime>:
       6:	56                   	push   %esi
       7:	53                   	push   %ebx
       8:	83 ec 14             	sub    $0x14,%esp
       b:	8b 74 24 24          	mov    0x24(%esp),%esi
       f:	8b 44 24 20          	mov    0x20(%esp),%eax
      13:	89 04 24             	mov    %eax,(%esp)
      16:	e8 fc ff ff ff       	call   17 <sys_utime+0x11>
      1b:	89 c3                	mov    %eax,%ebx
      1d:	85 c0                	test   %eax,%eax
      1f:	74 47                	je     68 <sys_utime+0x62>
      21:	85 f6                	test   %esi,%esi
      23:	74 09                	je     2e <sys_utime+0x28>
      25:	64 8b 06             	mov    %fs:(%esi),%eax
      28:	64 8b 56 04          	mov    %fs:0x4(%esi),%edx
      2c:	eb 21                	jmp    4f <sys_utime+0x49>
      2e:	8b 35 00 00 00 00    	mov    0x0,%esi
      34:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
      39:	89 c8                	mov    %ecx,%eax
      3b:	f7 ee                	imul   %esi
      3d:	89 d0                	mov    %edx,%eax
      3f:	c1 f8 05             	sar    $0x5,%eax
      42:	c1 fe 1f             	sar    $0x1f,%esi
      45:	29 f0                	sub    %esi,%eax
      47:	03 05 00 00 00 00    	add    0x0,%eax
      4d:	89 c2                	mov    %eax,%edx
      4f:	89 43 24             	mov    %eax,0x24(%ebx)
      52:	89 53 08             	mov    %edx,0x8(%ebx)
      55:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
      59:	89 1c 24             	mov    %ebx,(%esp)
      5c:	e8 fc ff ff ff       	call   5d <sys_utime+0x57>
      61:	b8 00 00 00 00       	mov    $0x0,%eax
      66:	eb 05                	jmp    6d <sys_utime+0x67>
      68:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
      6d:	83 c4 14             	add    $0x14,%esp
      70:	5b                   	pop    %ebx
      71:	5e                   	pop    %esi
      72:	c3                   	ret    

00000073 <sys_access>:
      73:	55                   	push   %ebp
      74:	57                   	push   %edi
      75:	56                   	push   %esi
      76:	53                   	push   %ebx
      77:	83 ec 1c             	sub    $0x1c,%esp
      7a:	8b 74 24 34          	mov    0x34(%esp),%esi
      7e:	83 e6 07             	and    $0x7,%esi
      81:	8b 44 24 30          	mov    0x30(%esp),%eax
      85:	89 04 24             	mov    %eax,(%esp)
      88:	e8 fc ff ff ff       	call   89 <sys_access+0x16>
      8d:	89 c3                	mov    %eax,%ebx
      8f:	85 c0                	test   %eax,%eax
      91:	74 5b                	je     ee <sys_access+0x7b>
      93:	8b 38                	mov    (%eax),%edi
      95:	89 fd                	mov    %edi,%ebp
      97:	81 e5 ff 01 00 00    	and    $0x1ff,%ebp
      9d:	89 04 24             	mov    %eax,(%esp)
      a0:	e8 fc ff ff ff       	call   a1 <sys_access+0x2e>
      a5:	8b 15 00 00 00 00    	mov    0x0,%edx
      ab:	8b 82 40 02 00 00    	mov    0x240(%edx),%eax
      b1:	66 3b 43 02          	cmp    0x2(%ebx),%ax
      b5:	75 05                	jne    bc <sys_access+0x49>
      b7:	c1 fd 06             	sar    $0x6,%ebp
      ba:	eb 10                	jmp    cc <sys_access+0x59>
      bc:	0f b6 4b 0c          	movzbl 0xc(%ebx),%ecx
      c0:	66 39 8a 46 02 00 00 	cmp    %cx,0x246(%edx)
      c7:	75 03                	jne    cc <sys_access+0x59>
      c9:	c1 fd 06             	sar    $0x6,%ebp
      cc:	21 f5                	and    %esi,%ebp
      ce:	39 f5                	cmp    %esi,%ebp
      d0:	74 23                	je     f5 <sys_access+0x82>
      d2:	66 85 c0             	test   %ax,%ax
      d5:	75 25                	jne    fc <sys_access+0x89>
      d7:	8b 44 24 34          	mov    0x34(%esp),%eax
      db:	83 e0 01             	and    $0x1,%eax
      de:	74 21                	je     101 <sys_access+0x8e>
      e0:	83 e7 49             	and    $0x49,%edi
      e3:	66 83 ff 01          	cmp    $0x1,%di
      e7:	19 c0                	sbb    %eax,%eax
      e9:	83 e0 f3             	and    $0xfffffff3,%eax
      ec:	eb 13                	jmp    101 <sys_access+0x8e>
      ee:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
      f3:	eb 0c                	jmp    101 <sys_access+0x8e>
      f5:	b8 00 00 00 00       	mov    $0x0,%eax
      fa:	eb 05                	jmp    101 <sys_access+0x8e>
      fc:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
     101:	83 c4 1c             	add    $0x1c,%esp
     104:	5b                   	pop    %ebx
     105:	5e                   	pop    %esi
     106:	5f                   	pop    %edi
     107:	5d                   	pop    %ebp
     108:	c3                   	ret    

00000109 <sys_chdir>:
     109:	53                   	push   %ebx
     10a:	83 ec 18             	sub    $0x18,%esp
     10d:	8b 44 24 20          	mov    0x20(%esp),%eax
     111:	89 04 24             	mov    %eax,(%esp)
     114:	e8 fc ff ff ff       	call   115 <sys_chdir+0xc>
     119:	89 c3                	mov    %eax,%ebx
     11b:	85 c0                	test   %eax,%eax
     11d:	74 41                	je     160 <sys_chdir+0x57>
     11f:	8b 00                	mov    (%eax),%eax
     121:	25 00 f0 ff ff       	and    $0xfffff000,%eax
     126:	66 3d 00 40          	cmp    $0x4000,%ax
     12a:	74 0f                	je     13b <sys_chdir+0x32>
     12c:	89 1c 24             	mov    %ebx,(%esp)
     12f:	e8 fc ff ff ff       	call   130 <sys_chdir+0x27>
     134:	b8 ec ff ff ff       	mov    $0xffffffec,%eax
     139:	eb 2a                	jmp    165 <sys_chdir+0x5c>
     13b:	a1 00 00 00 00       	mov    0x0,%eax
     140:	8b 80 70 02 00 00    	mov    0x270(%eax),%eax
     146:	89 04 24             	mov    %eax,(%esp)
     149:	e8 fc ff ff ff       	call   14a <sys_chdir+0x41>
     14e:	a1 00 00 00 00       	mov    0x0,%eax
     153:	89 98 70 02 00 00    	mov    %ebx,0x270(%eax)
     159:	b8 00 00 00 00       	mov    $0x0,%eax
     15e:	eb 05                	jmp    165 <sys_chdir+0x5c>
     160:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
     165:	83 c4 18             	add    $0x18,%esp
     168:	5b                   	pop    %ebx
     169:	c3                   	ret    

0000016a <sys_chroot>:
     16a:	53                   	push   %ebx
     16b:	83 ec 18             	sub    $0x18,%esp
     16e:	8b 44 24 20          	mov    0x20(%esp),%eax
     172:	89 04 24             	mov    %eax,(%esp)
     175:	e8 fc ff ff ff       	call   176 <sys_chroot+0xc>
     17a:	89 c3                	mov    %eax,%ebx
     17c:	85 c0                	test   %eax,%eax
     17e:	74 41                	je     1c1 <sys_chroot+0x57>
     180:	8b 00                	mov    (%eax),%eax
     182:	25 00 f0 ff ff       	and    $0xfffff000,%eax
     187:	66 3d 00 40          	cmp    $0x4000,%ax
     18b:	74 0f                	je     19c <sys_chroot+0x32>
     18d:	89 1c 24             	mov    %ebx,(%esp)
     190:	e8 fc ff ff ff       	call   191 <sys_chroot+0x27>
     195:	b8 ec ff ff ff       	mov    $0xffffffec,%eax
     19a:	eb 2a                	jmp    1c6 <sys_chroot+0x5c>
     19c:	a1 00 00 00 00       	mov    0x0,%eax
     1a1:	8b 80 74 02 00 00    	mov    0x274(%eax),%eax
     1a7:	89 04 24             	mov    %eax,(%esp)
     1aa:	e8 fc ff ff ff       	call   1ab <sys_chroot+0x41>
     1af:	a1 00 00 00 00       	mov    0x0,%eax
     1b4:	89 98 74 02 00 00    	mov    %ebx,0x274(%eax)
     1ba:	b8 00 00 00 00       	mov    $0x0,%eax
     1bf:	eb 05                	jmp    1c6 <sys_chroot+0x5c>
     1c1:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
     1c6:	83 c4 18             	add    $0x18,%esp
     1c9:	5b                   	pop    %ebx
     1ca:	c3                   	ret    

000001cb <sys_chmod>:
     1cb:	83 ec 1c             	sub    $0x1c,%esp
     1ce:	8b 44 24 20          	mov    0x20(%esp),%eax
     1d2:	89 04 24             	mov    %eax,(%esp)
     1d5:	e8 fc ff ff ff       	call   1d6 <sys_chmod+0xb>
     1da:	85 c0                	test   %eax,%eax
     1dc:	74 51                	je     22f <sys_chmod+0x64>
     1de:	8b 15 00 00 00 00    	mov    0x0,%edx
     1e4:	66 8b 92 42 02 00 00 	mov    0x242(%edx),%dx
     1eb:	66 3b 50 02          	cmp    0x2(%eax),%dx
     1ef:	74 14                	je     205 <sys_chmod+0x3a>
     1f1:	66 85 d2             	test   %dx,%dx
     1f4:	74 0f                	je     205 <sys_chmod+0x3a>
     1f6:	89 04 24             	mov    %eax,(%esp)
     1f9:	e8 fc ff ff ff       	call   1fa <sys_chmod+0x2f>
     1fe:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
     203:	eb 2f                	jmp    234 <sys_chmod+0x69>
     205:	8b 54 24 24          	mov    0x24(%esp),%edx
     209:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
     20f:	8b 08                	mov    (%eax),%ecx
     211:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
     217:	09 ca                	or     %ecx,%edx
     219:	66 89 10             	mov    %dx,(%eax)
     21c:	c6 40 33 01          	movb   $0x1,0x33(%eax)
     220:	89 04 24             	mov    %eax,(%esp)
     223:	e8 fc ff ff ff       	call   224 <sys_chmod+0x59>
     228:	b8 00 00 00 00       	mov    $0x0,%eax
     22d:	eb 05                	jmp    234 <sys_chmod+0x69>
     22f:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
     234:	83 c4 1c             	add    $0x1c,%esp
     237:	c3                   	ret    

00000238 <sys_chown>:
     238:	83 ec 1c             	sub    $0x1c,%esp
     23b:	8b 44 24 20          	mov    0x20(%esp),%eax
     23f:	89 04 24             	mov    %eax,(%esp)
     242:	e8 fc ff ff ff       	call   243 <sys_chown+0xb>
     247:	85 c0                	test   %eax,%eax
     249:	74 41                	je     28c <sys_chown+0x54>
     24b:	8b 15 00 00 00 00    	mov    0x0,%edx
     251:	66 83 ba 42 02 00 00 	cmpw   $0x0,0x242(%edx)
     258:	00 
     259:	74 0f                	je     26a <sys_chown+0x32>
     25b:	89 04 24             	mov    %eax,(%esp)
     25e:	e8 fc ff ff ff       	call   25f <sys_chown+0x27>
     263:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
     268:	eb 27                	jmp    291 <sys_chown+0x59>
     26a:	8b 54 24 24          	mov    0x24(%esp),%edx
     26e:	66 89 50 02          	mov    %dx,0x2(%eax)
     272:	8b 54 24 28          	mov    0x28(%esp),%edx
     276:	88 50 0c             	mov    %dl,0xc(%eax)
     279:	c6 40 33 01          	movb   $0x1,0x33(%eax)
     27d:	89 04 24             	mov    %eax,(%esp)
     280:	e8 fc ff ff ff       	call   281 <sys_chown+0x49>
     285:	b8 00 00 00 00       	mov    $0x0,%eax
     28a:	eb 05                	jmp    291 <sys_chown+0x59>
     28c:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
     291:	83 c4 1c             	add    $0x1c,%esp
     294:	c3                   	ret    

00000295 <sys_open>:
     295:	55                   	push   %ebp
     296:	57                   	push   %edi
     297:	56                   	push   %esi
     298:	53                   	push   %ebx
     299:	83 ec 2c             	sub    $0x2c,%esp
     29c:	8b 7c 24 44          	mov    0x44(%esp),%edi
     2a0:	a1 00 00 00 00       	mov    0x0,%eax
     2a5:	8b 90 6c 02 00 00    	mov    0x26c(%eax),%edx
     2ab:	83 b8 80 02 00 00 00 	cmpl   $0x0,0x280(%eax)
     2b2:	0f 84 42 01 00 00    	je     3fa <sys_open+0x165>
     2b8:	be 01 00 00 00       	mov    $0x1,%esi
     2bd:	83 bc b0 80 02 00 00 	cmpl   $0x0,0x280(%eax,%esi,4)
     2c4:	00 
     2c5:	0f 84 34 01 00 00    	je     3ff <sys_open+0x16a>
     2cb:	46                   	inc    %esi
     2cc:	83 fe 14             	cmp    $0x14,%esi
     2cf:	75 ec                	jne    2bd <sys_open+0x28>
     2d1:	e9 1d 01 00 00       	jmp    3f3 <sys_open+0x15e>
     2d6:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
     2db:	0f 84 46 01 00 00    	je     427 <sys_open+0x192>
     2e1:	83 c3 10             	add    $0x10,%ebx
     2e4:	81 fb 00 04 00 00    	cmp    $0x400,%ebx
     2ea:	75 ea                	jne    2d6 <sys_open+0x41>
     2ec:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     2f1:	e9 72 01 00 00       	jmp    468 <sys_open+0x1d3>
     2f6:	8b 15 00 00 00 00    	mov    0x0,%edx
     2fc:	c7 84 b2 80 02 00 00 	movl   $0x0,0x280(%edx,%esi,4)
     303:	00 00 00 00 
     307:	66 c7 43 04 00 00    	movw   $0x0,0x4(%ebx)
     30d:	e9 56 01 00 00       	jmp    468 <sys_open+0x1d3>
     312:	8b 44 24 1c          	mov    0x1c(%esp),%eax
     316:	8b 10                	mov    (%eax),%edx
     318:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
     31e:	66 81 fa 00 20       	cmp    $0x2000,%dx
     323:	0f 85 8e 00 00 00    	jne    3b7 <sys_open+0x122>
     329:	66 8b 48 0e          	mov    0xe(%eax),%cx
     32d:	89 ca                	mov    %ecx,%edx
     32f:	66 c1 ea 08          	shr    $0x8,%dx
     333:	66 83 fa 04          	cmp    $0x4,%dx
     337:	75 41                	jne    37a <sys_open+0xe5>
     339:	8b 15 00 00 00 00    	mov    0x0,%edx
     33f:	83 ba 3c 02 00 00 00 	cmpl   $0x0,0x23c(%edx)
     346:	0f 84 86 00 00 00    	je     3d2 <sys_open+0x13d>
     34c:	83 ba 68 02 00 00 00 	cmpl   $0x0,0x268(%edx)
     353:	79 7d                	jns    3d2 <sys_open+0x13d>
     355:	0f b6 c9             	movzbl %cl,%ecx
     358:	89 8a 68 02 00 00    	mov    %ecx,0x268(%edx)
     35e:	8b aa 34 02 00 00    	mov    0x234(%edx),%ebp
     364:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
     367:	01 ca                	add    %ecx,%edx
     369:	c1 e2 05             	shl    $0x5,%edx
     36c:	89 d1                	mov    %edx,%ecx
     36e:	c1 e1 05             	shl    $0x5,%ecx
     371:	89 ac 0a 24 00 00 00 	mov    %ebp,0x24(%edx,%ecx,1)
     378:	eb 3d                	jmp    3b7 <sys_open+0x122>
     37a:	66 83 fa 05          	cmp    $0x5,%dx
     37e:	75 52                	jne    3d2 <sys_open+0x13d>
     380:	8b 15 00 00 00 00    	mov    0x0,%edx
     386:	83 ba 68 02 00 00 00 	cmpl   $0x0,0x268(%edx)
     38d:	79 43                	jns    3d2 <sys_open+0x13d>
     38f:	89 04 24             	mov    %eax,(%esp)
     392:	e8 fc ff ff ff       	call   393 <sys_open+0xfe>
     397:	a1 00 00 00 00       	mov    0x0,%eax
     39c:	c7 84 b0 80 02 00 00 	movl   $0x0,0x280(%eax,%esi,4)
     3a3:	00 00 00 00 
     3a7:	66 c7 43 04 00 00    	movw   $0x0,0x4(%ebx)
     3ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     3b2:	e9 b1 00 00 00       	jmp    468 <sys_open+0x1d3>
     3b7:	8b 10                	mov    (%eax),%edx
     3b9:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
     3bf:	66 81 fa 00 60       	cmp    $0x6000,%dx
     3c4:	75 0c                	jne    3d2 <sys_open+0x13d>
     3c6:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
     3ca:	89 04 24             	mov    %eax,(%esp)
     3cd:	e8 fc ff ff ff       	call   3ce <sys_open+0x139>
     3d2:	8b 44 24 1c          	mov    0x1c(%esp),%eax
     3d6:	8b 10                	mov    (%eax),%edx
     3d8:	66 89 13             	mov    %dx,(%ebx)
     3db:	66 89 7b 02          	mov    %di,0x2(%ebx)
     3df:	66 c7 43 04 01 00    	movw   $0x1,0x4(%ebx)
     3e5:	89 43 08             	mov    %eax,0x8(%ebx)
     3e8:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
     3ef:	89 f0                	mov    %esi,%eax
     3f1:	eb 75                	jmp    468 <sys_open+0x1d3>
     3f3:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     3f8:	eb 6e                	jmp    468 <sys_open+0x1d3>
     3fa:	be 00 00 00 00       	mov    $0x0,%esi
     3ff:	bb fe ff ff ff       	mov    $0xfffffffe,%ebx
     404:	89 f1                	mov    %esi,%ecx
     406:	d3 c3                	rol    %cl,%ebx
     408:	21 98 7c 02 00 00    	and    %ebx,0x27c(%eax)
     40e:	66 83 3d 04 00 00 00 	cmpw   $0x0,0x4
     415:	00 
     416:	74 0a                	je     422 <sys_open+0x18d>
     418:	bb 10 00 00 00       	mov    $0x10,%ebx
     41d:	e9 b4 fe ff ff       	jmp    2d6 <sys_open+0x41>
     422:	bb 00 00 00 00       	mov    $0x0,%ebx
     427:	89 9c b0 80 02 00 00 	mov    %ebx,0x280(%eax,%esi,4)
     42e:	66 ff 43 04          	incw   0x4(%ebx)
     432:	8d 44 24 1c          	lea    0x1c(%esp),%eax
     436:	89 44 24 0c          	mov    %eax,0xc(%esp)
     43a:	f7 d2                	not    %edx
     43c:	89 d0                	mov    %edx,%eax
     43e:	25 ff 01 00 00       	and    $0x1ff,%eax
     443:	23 44 24 48          	and    0x48(%esp),%eax
     447:	89 44 24 08          	mov    %eax,0x8(%esp)
     44b:	89 7c 24 04          	mov    %edi,0x4(%esp)
     44f:	8b 44 24 40          	mov    0x40(%esp),%eax
     453:	89 04 24             	mov    %eax,(%esp)
     456:	e8 fc ff ff ff       	call   457 <sys_open+0x1c2>
     45b:	85 c0                	test   %eax,%eax
     45d:	0f 89 af fe ff ff    	jns    312 <sys_open+0x7d>
     463:	e9 8e fe ff ff       	jmp    2f6 <sys_open+0x61>
     468:	83 c4 2c             	add    $0x2c,%esp
     46b:	5b                   	pop    %ebx
     46c:	5e                   	pop    %esi
     46d:	5f                   	pop    %edi
     46e:	5d                   	pop    %ebp
     46f:	c3                   	ret    

00000470 <sys_creat>:
     470:	83 ec 1c             	sub    $0x1c,%esp
     473:	8b 44 24 24          	mov    0x24(%esp),%eax
     477:	89 44 24 08          	mov    %eax,0x8(%esp)
     47b:	c7 44 24 04 40 02 00 	movl   $0x240,0x4(%esp)
     482:	00 
     483:	8b 44 24 20          	mov    0x20(%esp),%eax
     487:	89 04 24             	mov    %eax,(%esp)
     48a:	e8 fc ff ff ff       	call   48b <sys_creat+0x1b>
     48f:	83 c4 1c             	add    $0x1c,%esp
     492:	c3                   	ret    

00000493 <sys_close>:
     493:	53                   	push   %ebx
     494:	83 ec 18             	sub    $0x18,%esp
     497:	8b 4c 24 20          	mov    0x20(%esp),%ecx
     49b:	83 f9 13             	cmp    $0x13,%ecx
     49e:	77 5b                	ja     4fb <sys_close+0x68>
     4a0:	a1 00 00 00 00       	mov    0x0,%eax
     4a5:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
     4aa:	d3 c2                	rol    %cl,%edx
     4ac:	21 90 7c 02 00 00    	and    %edx,0x27c(%eax)
     4b2:	8d 04 88             	lea    (%eax,%ecx,4),%eax
     4b5:	8b 98 80 02 00 00    	mov    0x280(%eax),%ebx
     4bb:	85 db                	test   %ebx,%ebx
     4bd:	74 43                	je     502 <sys_close+0x6f>
     4bf:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
     4c6:	00 00 00 
     4c9:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
     4ce:	75 0c                	jne    4dc <sys_close+0x49>
     4d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4d7:	e8 fc ff ff ff       	call   4d8 <sys_close+0x45>
     4dc:	8b 43 04             	mov    0x4(%ebx),%eax
     4df:	48                   	dec    %eax
     4e0:	66 89 43 04          	mov    %ax,0x4(%ebx)
     4e4:	66 85 c0             	test   %ax,%ax
     4e7:	75 20                	jne    509 <sys_close+0x76>
     4e9:	8b 43 08             	mov    0x8(%ebx),%eax
     4ec:	89 04 24             	mov    %eax,(%esp)
     4ef:	e8 fc ff ff ff       	call   4f0 <sys_close+0x5d>
     4f4:	b8 00 00 00 00       	mov    $0x0,%eax
     4f9:	eb 13                	jmp    50e <sys_close+0x7b>
     4fb:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     500:	eb 0c                	jmp    50e <sys_close+0x7b>
     502:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     507:	eb 05                	jmp    50e <sys_close+0x7b>
     509:	b8 00 00 00 00       	mov    $0x0,%eax
     50e:	83 c4 18             	add    $0x18,%esp
     511:	5b                   	pop    %ebx
     512:	c3                   	ret    

00000513 <sys_lseek>:
     513:	53                   	push   %ebx
     514:	8b 44 24 08          	mov    0x8(%esp),%eax
     518:	8b 4c 24 10          	mov    0x10(%esp),%ecx
     51c:	83 f8 13             	cmp    $0x13,%eax
     51f:	77 66                	ja     587 <sys_lseek+0x74>
     521:	8b 15 00 00 00 00    	mov    0x0,%edx
     527:	8b 84 82 80 02 00 00 	mov    0x280(%edx,%eax,4),%eax
     52e:	85 c0                	test   %eax,%eax
     530:	74 5c                	je     58e <sys_lseek+0x7b>
     532:	8b 50 08             	mov    0x8(%eax),%edx
     535:	85 d2                	test   %edx,%edx
     537:	74 5c                	je     595 <sys_lseek+0x82>
     539:	0f b6 5a 2d          	movzbl 0x2d(%edx),%ebx
     53d:	4b                   	dec    %ebx
     53e:	66 83 fb 02          	cmp    $0x2,%bx
     542:	77 58                	ja     59c <sys_lseek+0x89>
     544:	80 7a 34 00          	cmpb   $0x0,0x34(%edx)
     548:	75 59                	jne    5a3 <sys_lseek+0x90>
     54a:	83 f9 01             	cmp    $0x1,%ecx
     54d:	74 19                	je     568 <sys_lseek+0x55>
     54f:	83 f9 02             	cmp    $0x2,%ecx
     552:	74 22                	je     576 <sys_lseek+0x63>
     554:	85 c9                	test   %ecx,%ecx
     556:	75 52                	jne    5aa <sys_lseek+0x97>
     558:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
     55d:	78 52                	js     5b1 <sys_lseek+0x9e>
     55f:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
     563:	89 48 0c             	mov    %ecx,0xc(%eax)
     566:	eb 1a                	jmp    582 <sys_lseek+0x6f>
     568:	8b 54 24 0c          	mov    0xc(%esp),%edx
     56c:	03 50 0c             	add    0xc(%eax),%edx
     56f:	78 47                	js     5b8 <sys_lseek+0xa5>
     571:	89 50 0c             	mov    %edx,0xc(%eax)
     574:	eb 0c                	jmp    582 <sys_lseek+0x6f>
     576:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
     57a:	03 4a 04             	add    0x4(%edx),%ecx
     57d:	78 40                	js     5bf <sys_lseek+0xac>
     57f:	89 48 0c             	mov    %ecx,0xc(%eax)
     582:	8b 40 0c             	mov    0xc(%eax),%eax
     585:	eb 3d                	jmp    5c4 <sys_lseek+0xb1>
     587:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
     58c:	eb 36                	jmp    5c4 <sys_lseek+0xb1>
     58e:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
     593:	eb 2f                	jmp    5c4 <sys_lseek+0xb1>
     595:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
     59a:	eb 28                	jmp    5c4 <sys_lseek+0xb1>
     59c:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
     5a1:	eb 21                	jmp    5c4 <sys_lseek+0xb1>
     5a3:	b8 e3 ff ff ff       	mov    $0xffffffe3,%eax
     5a8:	eb 1a                	jmp    5c4 <sys_lseek+0xb1>
     5aa:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     5af:	eb 13                	jmp    5c4 <sys_lseek+0xb1>
     5b1:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     5b6:	eb 0c                	jmp    5c4 <sys_lseek+0xb1>
     5b8:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     5bd:	eb 05                	jmp    5c4 <sys_lseek+0xb1>
     5bf:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     5c4:	5b                   	pop    %ebx
     5c5:	c3                   	ret    

000005c6 <sys_read>:
     5c6:	57                   	push   %edi
     5c7:	56                   	push   %esi
     5c8:	53                   	push   %ebx
     5c9:	83 ec 20             	sub    $0x20,%esp
     5cc:	8b 44 24 30          	mov    0x30(%esp),%eax
     5d0:	8b 5c 24 38          	mov    0x38(%esp),%ebx
     5d4:	83 f8 13             	cmp    $0x13,%eax
     5d7:	0f 87 1c 01 00 00    	ja     6f9 <sys_read+0x133>
     5dd:	85 db                	test   %ebx,%ebx
     5df:	0f 88 1b 01 00 00    	js     700 <sys_read+0x13a>
     5e5:	8b 15 00 00 00 00    	mov    0x0,%edx
     5eb:	8b b4 82 80 02 00 00 	mov    0x280(%edx,%eax,4),%esi
     5f2:	85 f6                	test   %esi,%esi
     5f4:	0f 84 0d 01 00 00    	je     707 <sys_read+0x141>
     5fa:	85 db                	test   %ebx,%ebx
     5fc:	0f 84 0c 01 00 00    	je     70e <sys_read+0x148>
     602:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     606:	8b 44 24 34          	mov    0x34(%esp),%eax
     60a:	89 04 24             	mov    %eax,(%esp)
     60d:	e8 fc ff ff ff       	call   60e <sys_read+0x48>
     612:	8b 46 08             	mov    0x8(%esi),%eax
     615:	80 78 34 00          	cmpb   $0x0,0x34(%eax)
     619:	74 22                	je     63d <sys_read+0x77>
     61b:	f6 06 01             	testb  $0x1,(%esi)
     61e:	0f 84 f1 00 00 00    	je     715 <sys_read+0x14f>
     624:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     628:	8b 7c 24 34          	mov    0x34(%esp),%edi
     62c:	89 7c 24 04          	mov    %edi,0x4(%esp)
     630:	89 04 24             	mov    %eax,(%esp)
     633:	e8 fc ff ff ff       	call   634 <sys_read+0x6e>
     638:	e9 e4 00 00 00       	jmp    721 <sys_read+0x15b>
     63d:	8b 08                	mov    (%eax),%ecx
     63f:	89 ca                	mov    %ecx,%edx
     641:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
     647:	66 81 fa 00 20       	cmp    $0x2000,%dx
     64c:	75 2c                	jne    67a <sys_read+0xb4>
     64e:	83 c6 0c             	add    $0xc,%esi
     651:	89 74 24 10          	mov    %esi,0x10(%esp)
     655:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
     659:	8b 7c 24 34          	mov    0x34(%esp),%edi
     65d:	89 7c 24 08          	mov    %edi,0x8(%esp)
     661:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
     665:	89 44 24 04          	mov    %eax,0x4(%esp)
     669:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     670:	e8 fc ff ff ff       	call   671 <sys_read+0xab>
     675:	e9 a7 00 00 00       	jmp    721 <sys_read+0x15b>
     67a:	66 81 fa 00 60       	cmp    $0x6000,%dx
     67f:	75 21                	jne    6a2 <sys_read+0xdc>
     681:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
     685:	8b 7c 24 34          	mov    0x34(%esp),%edi
     689:	89 7c 24 08          	mov    %edi,0x8(%esp)
     68d:	83 c6 0c             	add    $0xc,%esi
     690:	89 74 24 04          	mov    %esi,0x4(%esp)
     694:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
     698:	89 04 24             	mov    %eax,(%esp)
     69b:	e8 fc ff ff ff       	call   69c <sys_read+0xd6>
     6a0:	eb 7f                	jmp    721 <sys_read+0x15b>
     6a2:	66 81 fa 00 40       	cmp    $0x4000,%dx
     6a7:	74 07                	je     6b0 <sys_read+0xea>
     6a9:	66 81 fa 00 80       	cmp    $0x8000,%dx
     6ae:	75 2f                	jne    6df <sys_read+0x119>
     6b0:	8b 56 0c             	mov    0xc(%esi),%edx
     6b3:	8b 48 04             	mov    0x4(%eax),%ecx
     6b6:	8d 3c 1a             	lea    (%edx,%ebx,1),%edi
     6b9:	39 cf                	cmp    %ecx,%edi
     6bb:	76 04                	jbe    6c1 <sys_read+0xfb>
     6bd:	29 d1                	sub    %edx,%ecx
     6bf:	89 cb                	mov    %ecx,%ebx
     6c1:	85 db                	test   %ebx,%ebx
     6c3:	7e 57                	jle    71c <sys_read+0x156>
     6c5:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
     6c9:	8b 7c 24 34          	mov    0x34(%esp),%edi
     6cd:	89 7c 24 08          	mov    %edi,0x8(%esp)
     6d1:	89 74 24 04          	mov    %esi,0x4(%esp)
     6d5:	89 04 24             	mov    %eax,(%esp)
     6d8:	e8 fc ff ff ff       	call   6d9 <sys_read+0x113>
     6dd:	eb 42                	jmp    721 <sys_read+0x15b>
     6df:	0f b7 c9             	movzwl %cx,%ecx
     6e2:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     6e6:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
     6ed:	e8 fc ff ff ff       	call   6ee <sys_read+0x128>
     6f2:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     6f7:	eb 28                	jmp    721 <sys_read+0x15b>
     6f9:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     6fe:	eb 21                	jmp    721 <sys_read+0x15b>
     700:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     705:	eb 1a                	jmp    721 <sys_read+0x15b>
     707:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     70c:	eb 13                	jmp    721 <sys_read+0x15b>
     70e:	b8 00 00 00 00       	mov    $0x0,%eax
     713:	eb 0c                	jmp    721 <sys_read+0x15b>
     715:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
     71a:	eb 05                	jmp    721 <sys_read+0x15b>
     71c:	b8 00 00 00 00       	mov    $0x0,%eax
     721:	83 c4 20             	add    $0x20,%esp
     724:	5b                   	pop    %ebx
     725:	5e                   	pop    %esi
     726:	5f                   	pop    %edi
     727:	c3                   	ret    

00000728 <sys_write>:
     728:	56                   	push   %esi
     729:	53                   	push   %ebx
     72a:	83 ec 24             	sub    $0x24,%esp
     72d:	8b 54 24 30          	mov    0x30(%esp),%edx
     731:	8b 44 24 38          	mov    0x38(%esp),%eax
     735:	83 fa 13             	cmp    $0x13,%edx
     738:	0f 87 f0 00 00 00    	ja     82e <sys_write+0x106>
     73e:	85 c0                	test   %eax,%eax
     740:	0f 88 ef 00 00 00    	js     835 <sys_write+0x10d>
     746:	8b 0d 00 00 00 00    	mov    0x0,%ecx
     74c:	8b 94 91 80 02 00 00 	mov    0x280(%ecx,%edx,4),%edx
     753:	85 d2                	test   %edx,%edx
     755:	0f 84 e1 00 00 00    	je     83c <sys_write+0x114>
     75b:	85 c0                	test   %eax,%eax
     75d:	0f 84 e0 00 00 00    	je     843 <sys_write+0x11b>
     763:	8b 4a 08             	mov    0x8(%edx),%ecx
     766:	80 79 34 00          	cmpb   $0x0,0x34(%ecx)
     76a:	74 22                	je     78e <sys_write+0x66>
     76c:	f6 02 02             	testb  $0x2,(%edx)
     76f:	0f 84 d5 00 00 00    	je     84a <sys_write+0x122>
     775:	89 44 24 08          	mov    %eax,0x8(%esp)
     779:	8b 44 24 34          	mov    0x34(%esp),%eax
     77d:	89 44 24 04          	mov    %eax,0x4(%esp)
     781:	89 0c 24             	mov    %ecx,(%esp)
     784:	e8 fc ff ff ff       	call   785 <sys_write+0x5d>
     789:	e9 c1 00 00 00       	jmp    84f <sys_write+0x127>
     78e:	8b 31                	mov    (%ecx),%esi
     790:	89 f3                	mov    %esi,%ebx
     792:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
     798:	66 81 fb 00 20       	cmp    $0x2000,%bx
     79d:	75 2c                	jne    7cb <sys_write+0xa3>
     79f:	83 c2 0c             	add    $0xc,%edx
     7a2:	89 54 24 10          	mov    %edx,0x10(%esp)
     7a6:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7aa:	8b 44 24 34          	mov    0x34(%esp),%eax
     7ae:	89 44 24 08          	mov    %eax,0x8(%esp)
     7b2:	0f b7 41 0e          	movzwl 0xe(%ecx),%eax
     7b6:	89 44 24 04          	mov    %eax,0x4(%esp)
     7ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     7c1:	e8 fc ff ff ff       	call   7c2 <sys_write+0x9a>
     7c6:	e9 84 00 00 00       	jmp    84f <sys_write+0x127>
     7cb:	66 81 fb 00 60       	cmp    $0x6000,%bx
     7d0:	75 21                	jne    7f3 <sys_write+0xcb>
     7d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7d6:	8b 44 24 34          	mov    0x34(%esp),%eax
     7da:	89 44 24 08          	mov    %eax,0x8(%esp)
     7de:	83 c2 0c             	add    $0xc,%edx
     7e1:	89 54 24 04          	mov    %edx,0x4(%esp)
     7e5:	0f b7 41 0e          	movzwl 0xe(%ecx),%eax
     7e9:	89 04 24             	mov    %eax,(%esp)
     7ec:	e8 fc ff ff ff       	call   7ed <sys_write+0xc5>
     7f1:	eb 5c                	jmp    84f <sys_write+0x127>
     7f3:	66 81 fb 00 80       	cmp    $0x8000,%bx
     7f8:	75 1a                	jne    814 <sys_write+0xec>
     7fa:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7fe:	8b 44 24 34          	mov    0x34(%esp),%eax
     802:	89 44 24 08          	mov    %eax,0x8(%esp)
     806:	89 54 24 04          	mov    %edx,0x4(%esp)
     80a:	89 0c 24             	mov    %ecx,(%esp)
     80d:	e8 fc ff ff ff       	call   80e <sys_write+0xe6>
     812:	eb 3b                	jmp    84f <sys_write+0x127>
     814:	0f b7 f6             	movzwl %si,%esi
     817:	89 74 24 04          	mov    %esi,0x4(%esp)
     81b:	c7 04 24 32 00 00 00 	movl   $0x32,(%esp)
     822:	e8 fc ff ff ff       	call   823 <sys_write+0xfb>
     827:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     82c:	eb 21                	jmp    84f <sys_write+0x127>
     82e:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     833:	eb 1a                	jmp    84f <sys_write+0x127>
     835:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     83a:	eb 13                	jmp    84f <sys_write+0x127>
     83c:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
     841:	eb 0c                	jmp    84f <sys_write+0x127>
     843:	b8 00 00 00 00       	mov    $0x0,%eax
     848:	eb 05                	jmp    84f <sys_write+0x127>
     84a:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
     84f:	83 c4 24             	add    $0x24,%esp
     852:	5b                   	pop    %ebx
     853:	5e                   	pop    %esi
     854:	c3                   	ret    

00000855 <write_inode>:
     855:	55                   	push   %ebp
     856:	57                   	push   %edi
     857:	56                   	push   %esi
     858:	53                   	push   %ebx
     859:	83 ec 1c             	sub    $0x1c,%esp
     85c:	89 c3                	mov    %eax,%ebx
     85e:	fa                   	cli    
     85f:	80 78 32 00          	cmpb   $0x0,0x32(%eax)
     863:	74 11                	je     876 <write_inode+0x21>
     865:	8d 70 20             	lea    0x20(%eax),%esi
     868:	89 34 24             	mov    %esi,(%esp)
     86b:	e8 fc ff ff ff       	call   86c <write_inode+0x17>
     870:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     874:	75 f2                	jne    868 <write_inode+0x13>
     876:	c6 43 32 01          	movb   $0x1,0x32(%ebx)
     87a:	fb                   	sti    
     87b:	80 7b 33 00          	cmpb   $0x0,0x33(%ebx)
     87f:	74 08                	je     889 <write_inode+0x34>
     881:	8b 43 2c             	mov    0x2c(%ebx),%eax
     884:	66 85 c0             	test   %ax,%ax
     887:	75 14                	jne    89d <write_inode+0x48>
     889:	c6 43 32 00          	movb   $0x0,0x32(%ebx)
     88d:	83 c3 20             	add    $0x20,%ebx
     890:	89 1c 24             	mov    %ebx,(%esp)
     893:	e8 fc ff ff ff       	call   894 <write_inode+0x3f>
     898:	e9 8d 00 00 00       	jmp    92a <write_inode+0xd5>
     89d:	0f b7 c0             	movzwl %ax,%eax
     8a0:	89 04 24             	mov    %eax,(%esp)
     8a3:	e8 fc ff ff ff       	call   8a4 <write_inode+0x4f>
     8a8:	89 c6                	mov    %eax,%esi
     8aa:	85 c0                	test   %eax,%eax
     8ac:	75 0c                	jne    8ba <write_inode+0x65>
     8ae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8b5:	e8 fc ff ff ff       	call   8b6 <write_inode+0x61>
     8ba:	0f b7 43 2e          	movzwl 0x2e(%ebx),%eax
     8be:	48                   	dec    %eax
     8bf:	c1 e8 05             	shr    $0x5,%eax
     8c2:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
     8c6:	0f b7 56 06          	movzwl 0x6(%esi),%edx
     8ca:	8d 54 11 02          	lea    0x2(%ecx,%edx,1),%edx
     8ce:	01 d0                	add    %edx,%eax
     8d0:	89 44 24 04          	mov    %eax,0x4(%esp)
     8d4:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     8d8:	89 04 24             	mov    %eax,(%esp)
     8db:	e8 fc ff ff ff       	call   8dc <write_inode+0x87>
     8e0:	89 c5                	mov    %eax,%ebp
     8e2:	85 c0                	test   %eax,%eax
     8e4:	75 0c                	jne    8f2 <write_inode+0x9d>
     8e6:	c7 04 24 4e 00 00 00 	movl   $0x4e,(%esp)
     8ed:	e8 fc ff ff ff       	call   8ee <write_inode+0x99>
     8f2:	0f b7 43 2e          	movzwl 0x2e(%ebx),%eax
     8f6:	48                   	dec    %eax
     8f7:	83 e0 1f             	and    $0x1f,%eax
     8fa:	c1 e0 05             	shl    $0x5,%eax
     8fd:	03 45 00             	add    0x0(%ebp),%eax
     900:	b9 08 00 00 00       	mov    $0x8,%ecx
     905:	89 c7                	mov    %eax,%edi
     907:	89 de                	mov    %ebx,%esi
     909:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
     90b:	c6 45 0b 01          	movb   $0x1,0xb(%ebp)
     90f:	c6 43 33 00          	movb   $0x0,0x33(%ebx)
     913:	89 2c 24             	mov    %ebp,(%esp)
     916:	e8 fc ff ff ff       	call   917 <write_inode+0xc2>
     91b:	c6 43 32 00          	movb   $0x0,0x32(%ebx)
     91f:	83 c3 20             	add    $0x20,%ebx
     922:	89 1c 24             	mov    %ebx,(%esp)
     925:	e8 fc ff ff ff       	call   926 <write_inode+0xd1>
     92a:	83 c4 1c             	add    $0x1c,%esp
     92d:	5b                   	pop    %ebx
     92e:	5e                   	pop    %esi
     92f:	5f                   	pop    %edi
     930:	5d                   	pop    %ebp
     931:	c3                   	ret    

00000932 <_bmap>:
     932:	55                   	push   %ebp
     933:	57                   	push   %edi
     934:	56                   	push   %esi
     935:	53                   	push   %ebx
     936:	83 ec 1c             	sub    $0x1c,%esp
     939:	89 c3                	mov    %eax,%ebx
     93b:	89 d7                	mov    %edx,%edi
     93d:	89 ce                	mov    %ecx,%esi
     93f:	85 d2                	test   %edx,%edx
     941:	79 0c                	jns    94f <_bmap+0x1d>
     943:	c7 04 24 6a 00 00 00 	movl   $0x6a,(%esp)
     94a:	e8 fc ff ff ff       	call   94b <_bmap+0x19>
     94f:	81 ff 06 02 04 00    	cmp    $0x40206,%edi
     955:	7e 0c                	jle    963 <_bmap+0x31>
     957:	c7 04 24 79 00 00 00 	movl   $0x79,(%esp)
     95e:	e8 fc ff ff ff       	call   95f <_bmap+0x2d>
     963:	83 ff 06             	cmp    $0x6,%edi
     966:	7f 53                	jg     9bb <_bmap+0x89>
     968:	85 f6                	test   %esi,%esi
     96a:	74 45                	je     9b1 <_bmap+0x7f>
     96c:	8d 34 3f             	lea    (%edi,%edi,1),%esi
     96f:	01 de                	add    %ebx,%esi
     971:	66 83 7e 0e 00       	cmpw   $0x0,0xe(%esi)
     976:	75 39                	jne    9b1 <_bmap+0x7f>
     978:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     97c:	89 04 24             	mov    %eax,(%esp)
     97f:	e8 fc ff ff ff       	call   980 <_bmap+0x4e>
     984:	66 89 46 0e          	mov    %ax,0xe(%esi)
     988:	66 85 c0             	test   %ax,%ax
     98b:	74 24                	je     9b1 <_bmap+0x7f>
     98d:	8b 0d 00 00 00 00    	mov    0x0,%ecx
     993:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     998:	f7 e9                	imul   %ecx
     99a:	89 d0                	mov    %edx,%eax
     99c:	c1 f8 05             	sar    $0x5,%eax
     99f:	c1 f9 1f             	sar    $0x1f,%ecx
     9a2:	29 c8                	sub    %ecx,%eax
     9a4:	03 05 00 00 00 00    	add    0x0,%eax
     9aa:	89 43 28             	mov    %eax,0x28(%ebx)
     9ad:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
     9b1:	0f b7 44 7b 0e       	movzwl 0xe(%ebx,%edi,2),%eax
     9b6:	e9 49 02 00 00       	jmp    c04 <_bmap+0x2d2>
     9bb:	8d 6f f9             	lea    -0x7(%edi),%ebp
     9be:	81 fd ff 01 00 00    	cmp    $0x1ff,%ebp
     9c4:	0f 8f be 00 00 00    	jg     a88 <_bmap+0x156>
     9ca:	85 f6                	test   %esi,%esi
     9cc:	74 45                	je     a13 <_bmap+0xe1>
     9ce:	8b 53 1c             	mov    0x1c(%ebx),%edx
     9d1:	66 85 d2             	test   %dx,%dx
     9d4:	75 4e                	jne    a24 <_bmap+0xf2>
     9d6:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     9da:	89 04 24             	mov    %eax,(%esp)
     9dd:	e8 fc ff ff ff       	call   9de <_bmap+0xac>
     9e2:	66 89 43 1c          	mov    %ax,0x1c(%ebx)
     9e6:	66 85 c0             	test   %ax,%ax
     9e9:	0f 84 d1 01 00 00    	je     bc0 <_bmap+0x28e>
     9ef:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
     9f3:	8b 0d 00 00 00 00    	mov    0x0,%ecx
     9f9:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     9fe:	f7 e9                	imul   %ecx
     a00:	89 d0                	mov    %edx,%eax
     a02:	c1 f8 05             	sar    $0x5,%eax
     a05:	c1 f9 1f             	sar    $0x1f,%ecx
     a08:	29 c8                	sub    %ecx,%eax
     a0a:	03 05 00 00 00 00    	add    0x0,%eax
     a10:	89 43 28             	mov    %eax,0x28(%ebx)
     a13:	8b 53 1c             	mov    0x1c(%ebx),%edx
     a16:	b8 00 00 00 00       	mov    $0x0,%eax
     a1b:	66 85 d2             	test   %dx,%dx
     a1e:	0f 84 e0 01 00 00    	je     c04 <_bmap+0x2d2>
     a24:	0f b7 d2             	movzwl %dx,%edx
     a27:	89 54 24 04          	mov    %edx,0x4(%esp)
     a2b:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     a2f:	89 04 24             	mov    %eax,(%esp)
     a32:	e8 fc ff ff ff       	call   a33 <_bmap+0x101>
     a37:	89 c7                	mov    %eax,%edi
     a39:	85 c0                	test   %eax,%eax
     a3b:	0f 84 86 01 00 00    	je     bc7 <_bmap+0x295>
     a41:	8d 44 2d 00          	lea    0x0(%ebp,%ebp,1),%eax
     a45:	89 c1                	mov    %eax,%ecx
     a47:	89 44 24 08          	mov    %eax,0x8(%esp)
     a4b:	8b 07                	mov    (%edi),%eax
     a4d:	0f b7 2c 08          	movzwl (%eax,%ecx,1),%ebp
     a51:	85 f6                	test   %esi,%esi
     a53:	74 24                	je     a79 <_bmap+0x147>
     a55:	85 ed                	test   %ebp,%ebp
     a57:	75 20                	jne    a79 <_bmap+0x147>
     a59:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     a5d:	89 04 24             	mov    %eax,(%esp)
     a60:	e8 fc ff ff ff       	call   a61 <_bmap+0x12f>
     a65:	89 c5                	mov    %eax,%ebp
     a67:	85 c0                	test   %eax,%eax
     a69:	74 0e                	je     a79 <_bmap+0x147>
     a6b:	8b 07                	mov    (%edi),%eax
     a6d:	8b 4c 24 08          	mov    0x8(%esp),%ecx
     a71:	66 89 2c 08          	mov    %bp,(%eax,%ecx,1)
     a75:	c6 47 0b 01          	movb   $0x1,0xb(%edi)
     a79:	89 3c 24             	mov    %edi,(%esp)
     a7c:	e8 fc ff ff ff       	call   a7d <_bmap+0x14b>
     a81:	89 e8                	mov    %ebp,%eax
     a83:	e9 7c 01 00 00       	jmp    c04 <_bmap+0x2d2>
     a88:	85 f6                	test   %esi,%esi
     a8a:	74 46                	je     ad2 <_bmap+0x1a0>
     a8c:	66 8b 53 1e          	mov    0x1e(%ebx),%dx
     a90:	66 85 d2             	test   %dx,%dx
     a93:	75 4f                	jne    ae4 <_bmap+0x1b2>
     a95:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     a99:	89 04 24             	mov    %eax,(%esp)
     a9c:	e8 fc ff ff ff       	call   a9d <_bmap+0x16b>
     aa1:	66 89 43 1e          	mov    %ax,0x1e(%ebx)
     aa5:	66 85 c0             	test   %ax,%ax
     aa8:	0f 84 20 01 00 00    	je     bce <_bmap+0x29c>
     aae:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
     ab2:	8b 0d 00 00 00 00    	mov    0x0,%ecx
     ab8:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     abd:	f7 e9                	imul   %ecx
     abf:	89 d0                	mov    %edx,%eax
     ac1:	c1 f8 05             	sar    $0x5,%eax
     ac4:	c1 f9 1f             	sar    $0x1f,%ecx
     ac7:	29 c8                	sub    %ecx,%eax
     ac9:	03 05 00 00 00 00    	add    0x0,%eax
     acf:	89 43 28             	mov    %eax,0x28(%ebx)
     ad2:	66 8b 53 1e          	mov    0x1e(%ebx),%dx
     ad6:	b8 00 00 00 00       	mov    $0x0,%eax
     adb:	66 85 d2             	test   %dx,%dx
     ade:	0f 84 20 01 00 00    	je     c04 <_bmap+0x2d2>
     ae4:	0f b7 d2             	movzwl %dx,%edx
     ae7:	89 54 24 04          	mov    %edx,0x4(%esp)
     aeb:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     aef:	89 04 24             	mov    %eax,(%esp)
     af2:	e8 fc ff ff ff       	call   af3 <_bmap+0x1c1>
     af7:	89 c5                	mov    %eax,%ebp
     af9:	85 c0                	test   %eax,%eax
     afb:	0f 84 d4 00 00 00    	je     bd5 <_bmap+0x2a3>
     b01:	8d 87 f9 fd ff ff    	lea    -0x207(%edi),%eax
     b07:	89 44 24 08          	mov    %eax,0x8(%esp)
     b0b:	c1 f8 09             	sar    $0x9,%eax
     b0e:	01 c0                	add    %eax,%eax
     b10:	89 c1                	mov    %eax,%ecx
     b12:	89 44 24 0c          	mov    %eax,0xc(%esp)
     b16:	8b 45 00             	mov    0x0(%ebp),%eax
     b19:	0f b7 3c 08          	movzwl (%eax,%ecx,1),%edi
     b1d:	85 f6                	test   %esi,%esi
     b1f:	74 32                	je     b53 <_bmap+0x221>
     b21:	85 ff                	test   %edi,%edi
     b23:	0f 85 c1 00 00 00    	jne    bea <_bmap+0x2b8>
     b29:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     b2d:	89 04 24             	mov    %eax,(%esp)
     b30:	e8 fc ff ff ff       	call   b31 <_bmap+0x1ff>
     b35:	89 c7                	mov    %eax,%edi
     b37:	85 c0                	test   %eax,%eax
     b39:	0f 84 b8 00 00 00    	je     bf7 <_bmap+0x2c5>
     b3f:	8b 45 00             	mov    0x0(%ebp),%eax
     b42:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
     b46:	66 89 3c 08          	mov    %di,(%eax,%ecx,1)
     b4a:	c6 45 0b 01          	movb   $0x1,0xb(%ebp)
     b4e:	e9 97 00 00 00       	jmp    bea <_bmap+0x2b8>
     b53:	89 2c 24             	mov    %ebp,(%esp)
     b56:	e8 fc ff ff ff       	call   b57 <_bmap+0x225>
     b5b:	85 ff                	test   %edi,%edi
     b5d:	74 7d                	je     bdc <_bmap+0x2aa>
     b5f:	89 7c 24 04          	mov    %edi,0x4(%esp)
     b63:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     b67:	89 04 24             	mov    %eax,(%esp)
     b6a:	e8 fc ff ff ff       	call   b6b <_bmap+0x239>
     b6f:	89 c7                	mov    %eax,%edi
     b71:	85 c0                	test   %eax,%eax
     b73:	74 6e                	je     be3 <_bmap+0x2b1>
     b75:	8b 44 24 08          	mov    0x8(%esp),%eax
     b79:	25 ff 01 00 00       	and    $0x1ff,%eax
     b7e:	01 c0                	add    %eax,%eax
     b80:	89 c1                	mov    %eax,%ecx
     b82:	89 44 24 08          	mov    %eax,0x8(%esp)
     b86:	8b 07                	mov    (%edi),%eax
     b88:	0f b7 2c 08          	movzwl (%eax,%ecx,1),%ebp
     b8c:	85 f6                	test   %esi,%esi
     b8e:	74 24                	je     bb4 <_bmap+0x282>
     b90:	85 ed                	test   %ebp,%ebp
     b92:	75 20                	jne    bb4 <_bmap+0x282>
     b94:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     b98:	89 04 24             	mov    %eax,(%esp)
     b9b:	e8 fc ff ff ff       	call   b9c <_bmap+0x26a>
     ba0:	89 c5                	mov    %eax,%ebp
     ba2:	85 c0                	test   %eax,%eax
     ba4:	74 0e                	je     bb4 <_bmap+0x282>
     ba6:	8b 07                	mov    (%edi),%eax
     ba8:	8b 4c 24 08          	mov    0x8(%esp),%ecx
     bac:	66 89 2c 08          	mov    %bp,(%eax,%ecx,1)
     bb0:	c6 47 0b 01          	movb   $0x1,0xb(%edi)
     bb4:	89 3c 24             	mov    %edi,(%esp)
     bb7:	e8 fc ff ff ff       	call   bb8 <_bmap+0x286>
     bbc:	89 e8                	mov    %ebp,%eax
     bbe:	eb 44                	jmp    c04 <_bmap+0x2d2>
     bc0:	b8 00 00 00 00       	mov    $0x0,%eax
     bc5:	eb 3d                	jmp    c04 <_bmap+0x2d2>
     bc7:	b8 00 00 00 00       	mov    $0x0,%eax
     bcc:	eb 36                	jmp    c04 <_bmap+0x2d2>
     bce:	b8 00 00 00 00       	mov    $0x0,%eax
     bd3:	eb 2f                	jmp    c04 <_bmap+0x2d2>
     bd5:	b8 00 00 00 00       	mov    $0x0,%eax
     bda:	eb 28                	jmp    c04 <_bmap+0x2d2>
     bdc:	b8 00 00 00 00       	mov    $0x0,%eax
     be1:	eb 21                	jmp    c04 <_bmap+0x2d2>
     be3:	b8 00 00 00 00       	mov    $0x0,%eax
     be8:	eb 1a                	jmp    c04 <_bmap+0x2d2>
     bea:	89 2c 24             	mov    %ebp,(%esp)
     bed:	e8 fc ff ff ff       	call   bee <_bmap+0x2bc>
     bf2:	e9 68 ff ff ff       	jmp    b5f <_bmap+0x22d>
     bf7:	89 2c 24             	mov    %ebp,(%esp)
     bfa:	e8 fc ff ff ff       	call   bfb <_bmap+0x2c9>
     bff:	b8 00 00 00 00       	mov    $0x0,%eax
     c04:	83 c4 1c             	add    $0x1c,%esp
     c07:	5b                   	pop    %ebx
     c08:	5e                   	pop    %esi
     c09:	5f                   	pop    %edi
     c0a:	5d                   	pop    %ebp
     c0b:	c3                   	ret    

00000c0c <invalidate_inodes>:
     c0c:	55                   	push   %ebp
     c0d:	57                   	push   %edi
     c0e:	56                   	push   %esi
     c0f:	53                   	push   %ebx
     c10:	83 ec 1c             	sub    $0x1c,%esp
     c13:	bf 2c 00 00 00       	mov    $0x2c,%edi
     c18:	bd 2c 07 00 00       	mov    $0x72c,%ebp
     c1d:	fa                   	cli    
     c1e:	89 fb                	mov    %edi,%ebx
     c20:	80 7f 06 00          	cmpb   $0x0,0x6(%edi)
     c24:	74 11                	je     c37 <invalidate_inodes+0x2b>
     c26:	8d 77 f4             	lea    -0xc(%edi),%esi
     c29:	89 34 24             	mov    %esi,(%esp)
     c2c:	e8 fc ff ff ff       	call   c2d <invalidate_inodes+0x21>
     c31:	80 7b 06 00          	cmpb   $0x0,0x6(%ebx)
     c35:	75 f2                	jne    c29 <invalidate_inodes+0x1d>
     c37:	fb                   	sti    
     c38:	0f b7 03             	movzwl (%ebx),%eax
     c3b:	3b 44 24 30          	cmp    0x30(%esp),%eax
     c3f:	75 1c                	jne    c5d <invalidate_inodes+0x51>
     c41:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
     c46:	74 0c                	je     c54 <invalidate_inodes+0x48>
     c48:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
     c4f:	e8 fc ff ff ff       	call   c50 <invalidate_inodes+0x44>
     c54:	c6 43 07 00          	movb   $0x0,0x7(%ebx)
     c58:	66 c7 03 00 00       	movw   $0x0,(%ebx)
     c5d:	83 c7 38             	add    $0x38,%edi
     c60:	39 ef                	cmp    %ebp,%edi
     c62:	75 b9                	jne    c1d <invalidate_inodes+0x11>
     c64:	83 c4 1c             	add    $0x1c,%esp
     c67:	5b                   	pop    %ebx
     c68:	5e                   	pop    %esi
     c69:	5f                   	pop    %edi
     c6a:	5d                   	pop    %ebp
     c6b:	c3                   	ret    

00000c6c <sync_inodes>:
     c6c:	56                   	push   %esi
     c6d:	53                   	push   %ebx
     c6e:	83 ec 14             	sub    $0x14,%esp
     c71:	bb 00 00 00 00       	mov    $0x0,%ebx
     c76:	fa                   	cli    
     c77:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     c7b:	74 11                	je     c8e <sync_inodes+0x22>
     c7d:	8d 73 20             	lea    0x20(%ebx),%esi
     c80:	89 34 24             	mov    %esi,(%esp)
     c83:	e8 fc ff ff ff       	call   c84 <sync_inodes+0x18>
     c88:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     c8c:	75 f2                	jne    c80 <sync_inodes+0x14>
     c8e:	fb                   	sti    
     c8f:	80 7b 33 00          	cmpb   $0x0,0x33(%ebx)
     c93:	74 0d                	je     ca2 <sync_inodes+0x36>
     c95:	80 7b 34 00          	cmpb   $0x0,0x34(%ebx)
     c99:	75 07                	jne    ca2 <sync_inodes+0x36>
     c9b:	89 d8                	mov    %ebx,%eax
     c9d:	e8 b3 fb ff ff       	call   855 <write_inode>
     ca2:	83 c3 38             	add    $0x38,%ebx
     ca5:	81 fb 00 07 00 00    	cmp    $0x700,%ebx
     cab:	75 c9                	jne    c76 <sync_inodes+0xa>
     cad:	83 c4 14             	add    $0x14,%esp
     cb0:	5b                   	pop    %ebx
     cb1:	5e                   	pop    %esi
     cb2:	c3                   	ret    

00000cb3 <bmap>:
     cb3:	83 ec 0c             	sub    $0xc,%esp
     cb6:	b9 00 00 00 00       	mov    $0x0,%ecx
     cbb:	8b 54 24 14          	mov    0x14(%esp),%edx
     cbf:	8b 44 24 10          	mov    0x10(%esp),%eax
     cc3:	e8 6a fc ff ff       	call   932 <_bmap>
     cc8:	83 c4 0c             	add    $0xc,%esp
     ccb:	c3                   	ret    

00000ccc <create_block>:
     ccc:	83 ec 0c             	sub    $0xc,%esp
     ccf:	b9 01 00 00 00       	mov    $0x1,%ecx
     cd4:	8b 54 24 14          	mov    0x14(%esp),%edx
     cd8:	8b 44 24 10          	mov    0x10(%esp),%eax
     cdc:	e8 51 fc ff ff       	call   932 <_bmap>
     ce1:	83 c4 0c             	add    $0xc,%esp
     ce4:	c3                   	ret    

00000ce5 <iput>:
     ce5:	56                   	push   %esi
     ce6:	53                   	push   %ebx
     ce7:	83 ec 14             	sub    $0x14,%esp
     cea:	8b 5c 24 20          	mov    0x20(%esp),%ebx
     cee:	85 db                	test   %ebx,%ebx
     cf0:	0f 84 1a 01 00 00    	je     e10 <iput+0x12b>
     cf6:	fa                   	cli    
     cf7:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     cfb:	74 11                	je     d0e <iput+0x29>
     cfd:	8d 73 20             	lea    0x20(%ebx),%esi
     d00:	89 34 24             	mov    %esi,(%esp)
     d03:	e8 fc ff ff ff       	call   d04 <iput+0x1f>
     d08:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     d0c:	75 f2                	jne    d00 <iput+0x1b>
     d0e:	fb                   	sti    
     d0f:	66 83 7b 30 00       	cmpw   $0x0,0x30(%ebx)
     d14:	75 0c                	jne    d22 <iput+0x3d>
     d16:	c7 04 24 48 00 00 00 	movl   $0x48,(%esp)
     d1d:	e8 fc ff ff ff       	call   d1e <iput+0x39>
     d22:	80 7b 34 00          	cmpb   $0x0,0x34(%ebx)
     d26:	74 3a                	je     d62 <iput+0x7d>
     d28:	8d 43 20             	lea    0x20(%ebx),%eax
     d2b:	89 04 24             	mov    %eax,(%esp)
     d2e:	e8 fc ff ff ff       	call   d2f <iput+0x4a>
     d33:	8b 43 30             	mov    0x30(%ebx),%eax
     d36:	48                   	dec    %eax
     d37:	66 89 43 30          	mov    %ax,0x30(%ebx)
     d3b:	66 85 c0             	test   %ax,%ax
     d3e:	0f 85 cc 00 00 00    	jne    e10 <iput+0x12b>
     d44:	8b 43 04             	mov    0x4(%ebx),%eax
     d47:	89 04 24             	mov    %eax,(%esp)
     d4a:	e8 fc ff ff ff       	call   d4b <iput+0x66>
     d4f:	66 c7 43 30 00 00    	movw   $0x0,0x30(%ebx)
     d55:	c6 43 33 00          	movb   $0x0,0x33(%ebx)
     d59:	c6 43 34 00          	movb   $0x0,0x34(%ebx)
     d5d:	e9 ae 00 00 00       	jmp    e10 <iput+0x12b>
     d62:	66 83 7b 2c 00       	cmpw   $0x0,0x2c(%ebx)
     d67:	75 09                	jne    d72 <iput+0x8d>
     d69:	66 ff 4b 30          	decw   0x30(%ebx)
     d6d:	e9 9e 00 00 00       	jmp    e10 <iput+0x12b>
     d72:	8b 03                	mov    (%ebx),%eax
     d74:	25 00 f0 ff ff       	and    $0xfffff000,%eax
     d79:	66 3d 00 60          	cmp    $0x6000,%ax
     d7d:	75 25                	jne    da4 <iput+0xbf>
     d7f:	0f b7 43 0e          	movzwl 0xe(%ebx),%eax
     d83:	89 04 24             	mov    %eax,(%esp)
     d86:	e8 fc ff ff ff       	call   d87 <iput+0xa2>
     d8b:	fa                   	cli    
     d8c:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     d90:	74 11                	je     da3 <iput+0xbe>
     d92:	8d 73 20             	lea    0x20(%ebx),%esi
     d95:	89 34 24             	mov    %esi,(%esp)
     d98:	e8 fc ff ff ff       	call   d99 <iput+0xb4>
     d9d:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     da1:	75 f2                	jne    d95 <iput+0xb0>
     da3:	fb                   	sti    
     da4:	8b 43 30             	mov    0x30(%ebx),%eax
     da7:	66 83 f8 01          	cmp    $0x1,%ax
     dab:	77 11                	ja     dbe <iput+0xd9>
     dad:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
     db1:	74 18                	je     dcb <iput+0xe6>
     db3:	80 7b 33 00          	cmpb   $0x0,0x33(%ebx)
     db7:	74 52                	je     e0b <iput+0x126>
     db9:	8d 73 20             	lea    0x20(%ebx),%esi
     dbc:	eb 25                	jmp    de3 <iput+0xfe>
     dbe:	48                   	dec    %eax
     dbf:	66 89 43 30          	mov    %ax,0x30(%ebx)
     dc3:	eb 4b                	jmp    e10 <iput+0x12b>
     dc5:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
     dc9:	75 12                	jne    ddd <iput+0xf8>
     dcb:	89 1c 24             	mov    %ebx,(%esp)
     dce:	e8 fc ff ff ff       	call   dcf <iput+0xea>
     dd3:	89 1c 24             	mov    %ebx,(%esp)
     dd6:	e8 fc ff ff ff       	call   dd7 <iput+0xf2>
     ddb:	eb 33                	jmp    e10 <iput+0x12b>
     ddd:	80 7b 33 00          	cmpb   $0x0,0x33(%ebx)
     de1:	74 28                	je     e0b <iput+0x126>
     de3:	89 d8                	mov    %ebx,%eax
     de5:	e8 6b fa ff ff       	call   855 <write_inode>
     dea:	fa                   	cli    
     deb:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     def:	74 0e                	je     dff <iput+0x11a>
     df1:	89 34 24             	mov    %esi,(%esp)
     df4:	e8 fc ff ff ff       	call   df5 <iput+0x110>
     df9:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     dfd:	75 f2                	jne    df1 <iput+0x10c>
     dff:	fb                   	sti    
     e00:	8b 43 30             	mov    0x30(%ebx),%eax
     e03:	66 83 f8 01          	cmp    $0x1,%ax
     e07:	76 bc                	jbe    dc5 <iput+0xe0>
     e09:	eb b3                	jmp    dbe <iput+0xd9>
     e0b:	48                   	dec    %eax
     e0c:	66 89 43 30          	mov    %ax,0x30(%ebx)
     e10:	83 c4 14             	add    $0x14,%esp
     e13:	5b                   	pop    %ebx
     e14:	5e                   	pop    %esi
     e15:	c3                   	ret    

00000e16 <get_empty_inode>:
     e16:	57                   	push   %edi
     e17:	56                   	push   %esi
     e18:	53                   	push   %ebx
     e19:	83 ec 10             	sub    $0x10,%esp
     e1c:	b8 20 00 00 00       	mov    $0x20,%eax
     e21:	bf 00 00 00 00       	mov    $0x0,%edi
     e26:	be 2e 07 00 00       	mov    $0x72e,%esi
     e2b:	eb 46                	jmp    e73 <get_empty_inode+0x5d>
     e2d:	8b 0d 00 00 00 00    	mov    0x0,%ecx
     e33:	8d 51 38             	lea    0x38(%ecx),%edx
     e36:	81 fa 00 07 00 00    	cmp    $0x700,%edx
     e3c:	73 08                	jae    e46 <get_empty_inode+0x30>
     e3e:	89 15 00 00 00 00    	mov    %edx,0x0
     e44:	eb 0a                	jmp    e50 <get_empty_inode+0x3a>
     e46:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
     e4d:	00 00 00 
     e50:	8b 15 00 00 00 00    	mov    0x0,%edx
     e56:	66 83 7a 30 00       	cmpw   $0x0,0x30(%edx)
     e5b:	75 09                	jne    e66 <get_empty_inode+0x50>
     e5d:	66 83 7a 32 00       	cmpw   $0x0,0x32(%edx)
     e62:	74 15                	je     e79 <get_empty_inode+0x63>
     e64:	89 d7                	mov    %edx,%edi
     e66:	48                   	dec    %eax
     e67:	eb 0a                	jmp    e73 <get_empty_inode+0x5d>
     e69:	b8 20 00 00 00       	mov    $0x20,%eax
     e6e:	bf 00 00 00 00       	mov    $0x0,%edi
     e73:	85 c0                	test   %eax,%eax
     e75:	75 b6                	jne    e2d <get_empty_inode+0x17>
     e77:	eb 02                	jmp    e7b <get_empty_inode+0x65>
     e79:	89 d7                	mov    %edx,%edi
     e7b:	85 ff                	test   %edi,%edi
     e7d:	75 33                	jne    eb2 <get_empty_inode+0x9c>
     e7f:	bb 2e 00 00 00       	mov    $0x2e,%ebx
     e84:	0f b7 03             	movzwl (%ebx),%eax
     e87:	89 44 24 08          	mov    %eax,0x8(%esp)
     e8b:	0f b7 43 fe          	movzwl -0x2(%ebx),%eax
     e8f:	89 44 24 04          	mov    %eax,0x4(%esp)
     e93:	c7 04 24 8a 00 00 00 	movl   $0x8a,(%esp)
     e9a:	e8 fc ff ff ff       	call   e9b <get_empty_inode+0x85>
     e9f:	83 c3 38             	add    $0x38,%ebx
     ea2:	39 f3                	cmp    %esi,%ebx
     ea4:	75 de                	jne    e84 <get_empty_inode+0x6e>
     ea6:	c7 04 24 95 00 00 00 	movl   $0x95,(%esp)
     ead:	e8 fc ff ff ff       	call   eae <get_empty_inode+0x98>
     eb2:	fa                   	cli    
     eb3:	80 7f 32 00          	cmpb   $0x0,0x32(%edi)
     eb7:	74 11                	je     eca <get_empty_inode+0xb4>
     eb9:	8d 5f 20             	lea    0x20(%edi),%ebx
     ebc:	89 1c 24             	mov    %ebx,(%esp)
     ebf:	e8 fc ff ff ff       	call   ec0 <get_empty_inode+0xaa>
     ec4:	80 7f 32 00          	cmpb   $0x0,0x32(%edi)
     ec8:	75 f2                	jne    ebc <get_empty_inode+0xa6>
     eca:	fb                   	sti    
     ecb:	80 7f 33 00          	cmpb   $0x0,0x33(%edi)
     ecf:	74 26                	je     ef7 <get_empty_inode+0xe1>
     ed1:	8d 5f 20             	lea    0x20(%edi),%ebx
     ed4:	89 f8                	mov    %edi,%eax
     ed6:	e8 7a f9 ff ff       	call   855 <write_inode>
     edb:	fa                   	cli    
     edc:	80 7f 32 00          	cmpb   $0x0,0x32(%edi)
     ee0:	74 0e                	je     ef0 <get_empty_inode+0xda>
     ee2:	89 1c 24             	mov    %ebx,(%esp)
     ee5:	e8 fc ff ff ff       	call   ee6 <get_empty_inode+0xd0>
     eea:	80 7f 32 00          	cmpb   $0x0,0x32(%edi)
     eee:	75 f2                	jne    ee2 <get_empty_inode+0xcc>
     ef0:	fb                   	sti    
     ef1:	80 7f 33 00          	cmpb   $0x0,0x33(%edi)
     ef5:	75 dd                	jne    ed4 <get_empty_inode+0xbe>
     ef7:	66 83 7f 30 00       	cmpw   $0x0,0x30(%edi)
     efc:	0f 85 67 ff ff ff    	jne    e69 <get_empty_inode+0x53>
     f02:	b9 38 00 00 00       	mov    $0x38,%ecx
     f07:	b0 00                	mov    $0x0,%al
     f09:	fc                   	cld    
     f0a:	f3 aa                	rep stos %al,%es:(%edi)
     f0c:	66 c7 47 30 01 00    	movw   $0x1,0x30(%edi)
     f12:	89 f8                	mov    %edi,%eax
     f14:	83 c4 10             	add    $0x10,%esp
     f17:	5b                   	pop    %ebx
     f18:	5e                   	pop    %esi
     f19:	5f                   	pop    %edi
     f1a:	c3                   	ret    

00000f1b <get_pipe_inode>:
     f1b:	53                   	push   %ebx
     f1c:	83 ec 08             	sub    $0x8,%esp
     f1f:	e8 fc ff ff ff       	call   f20 <get_pipe_inode+0x5>
     f24:	89 c3                	mov    %eax,%ebx
     f26:	85 c0                	test   %eax,%eax
     f28:	74 2e                	je     f58 <get_pipe_inode+0x3d>
     f2a:	e8 fc ff ff ff       	call   f2b <get_pipe_inode+0x10>
     f2f:	89 43 04             	mov    %eax,0x4(%ebx)
     f32:	85 c0                	test   %eax,%eax
     f34:	75 08                	jne    f3e <get_pipe_inode+0x23>
     f36:	66 c7 43 30 00 00    	movw   $0x0,0x30(%ebx)
     f3c:	eb 1f                	jmp    f5d <get_pipe_inode+0x42>
     f3e:	66 c7 43 30 02 00    	movw   $0x2,0x30(%ebx)
     f44:	66 c7 43 10 00 00    	movw   $0x0,0x10(%ebx)
     f4a:	66 c7 43 0e 00 00    	movw   $0x0,0xe(%ebx)
     f50:	c6 43 34 01          	movb   $0x1,0x34(%ebx)
     f54:	89 d8                	mov    %ebx,%eax
     f56:	eb 05                	jmp    f5d <get_pipe_inode+0x42>
     f58:	b8 00 00 00 00       	mov    $0x0,%eax
     f5d:	83 c4 08             	add    $0x8,%esp
     f60:	5b                   	pop    %ebx
     f61:	c3                   	ret    

00000f62 <iget>:
     f62:	55                   	push   %ebp
     f63:	57                   	push   %edi
     f64:	56                   	push   %esi
     f65:	53                   	push   %ebx
     f66:	83 ec 1c             	sub    $0x1c,%esp
     f69:	8b 7c 24 30          	mov    0x30(%esp),%edi
     f6d:	85 ff                	test   %edi,%edi
     f6f:	75 0c                	jne    f7d <iget+0x1b>
     f71:	c7 04 24 ab 00 00 00 	movl   $0xab,(%esp)
     f78:	e8 fc ff ff ff       	call   f79 <iget+0x17>
     f7d:	e8 fc ff ff ff       	call   f7e <iget+0x1c>
     f82:	89 c5                	mov    %eax,%ebp
     f84:	bb 00 00 00 00       	mov    $0x0,%ebx
     f89:	0f b7 73 2c          	movzwl 0x2c(%ebx),%esi
     f8d:	39 fe                	cmp    %edi,%esi
     f8f:	75 0e                	jne    f9f <iget+0x3d>
     f91:	0f b7 43 2e          	movzwl 0x2e(%ebx),%eax
     f95:	89 44 24 0c          	mov    %eax,0xc(%esp)
     f99:	3b 44 24 34          	cmp    0x34(%esp),%eax
     f9d:	74 10                	je     faf <iget+0x4d>
     f9f:	83 c3 38             	add    $0x38,%ebx
     fa2:	81 fb 00 07 00 00    	cmp    $0x700,%ebx
     fa8:	72 df                	jb     f89 <iget+0x27>
     faa:	e9 8f 00 00 00       	jmp    103e <iget+0xdc>
     faf:	fa                   	cli    
     fb0:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     fb4:	74 11                	je     fc7 <iget+0x65>
     fb6:	8d 7b 20             	lea    0x20(%ebx),%edi
     fb9:	89 3c 24             	mov    %edi,(%esp)
     fbc:	e8 fc ff ff ff       	call   fbd <iget+0x5b>
     fc1:	80 7b 32 00          	cmpb   $0x0,0x32(%ebx)
     fc5:	75 f2                	jne    fb9 <iget+0x57>
     fc7:	fb                   	sti    
     fc8:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
     fcc:	39 c6                	cmp    %eax,%esi
     fce:	0f 85 6a 01 00 00    	jne    113e <iget+0x1dc>
     fd4:	0f b7 43 2e          	movzwl 0x2e(%ebx),%eax
     fd8:	39 44 24 0c          	cmp    %eax,0xc(%esp)
     fdc:	0f 85 5c 01 00 00    	jne    113e <iget+0x1dc>
     fe2:	66 ff 43 30          	incw   0x30(%ebx)
     fe6:	80 7b 35 00          	cmpb   $0x0,0x35(%ebx)
     fea:	74 3b                	je     1027 <iget+0xc5>
     fec:	39 1d 5c 00 00 00    	cmp    %ebx,0x5c
     ff2:	0f 84 21 01 00 00    	je     1119 <iget+0x1b7>
     ff8:	b8 c8 00 00 00       	mov    $0xc8,%eax
     ffd:	be 01 00 00 00       	mov    $0x1,%esi
    1002:	39 18                	cmp    %ebx,(%eax)
    1004:	0f 84 14 01 00 00    	je     111e <iget+0x1bc>
    100a:	46                   	inc    %esi
    100b:	83 c0 6c             	add    $0x6c,%eax
    100e:	83 fe 08             	cmp    $0x8,%esi
    1011:	75 ef                	jne    1002 <iget+0xa0>
    1013:	e9 e9 00 00 00       	jmp    1101 <iget+0x19f>
    1018:	89 2c 24             	mov    %ebp,(%esp)
    101b:	e8 fc ff ff ff       	call   101c <iget+0xba>
    1020:	89 d8                	mov    %ebx,%eax
    1022:	e9 2b 01 00 00       	jmp    1152 <iget+0x1f0>
    1027:	85 ed                	test   %ebp,%ebp
    1029:	0f 84 c7 00 00 00    	je     10f6 <iget+0x194>
    102f:	89 2c 24             	mov    %ebp,(%esp)
    1032:	e8 fc ff ff ff       	call   1033 <iget+0xd1>
    1037:	89 d8                	mov    %ebx,%eax
    1039:	e9 14 01 00 00       	jmp    1152 <iget+0x1f0>
    103e:	85 ed                	test   %ebp,%ebp
    1040:	0f 84 b4 00 00 00    	je     10fa <iget+0x198>
    1046:	66 89 7d 2c          	mov    %di,0x2c(%ebp)
    104a:	8b 44 24 34          	mov    0x34(%esp),%eax
    104e:	66 89 45 2e          	mov    %ax,0x2e(%ebp)
    1052:	fa                   	cli    
    1053:	80 7d 32 00          	cmpb   $0x0,0x32(%ebp)
    1057:	74 11                	je     106a <iget+0x108>
    1059:	8d 5d 20             	lea    0x20(%ebp),%ebx
    105c:	89 1c 24             	mov    %ebx,(%esp)
    105f:	e8 fc ff ff ff       	call   1060 <iget+0xfe>
    1064:	80 7d 32 00          	cmpb   $0x0,0x32(%ebp)
    1068:	75 f2                	jne    105c <iget+0xfa>
    106a:	c6 45 32 01          	movb   $0x1,0x32(%ebp)
    106e:	fb                   	sti    
    106f:	0f b7 45 2c          	movzwl 0x2c(%ebp),%eax
    1073:	89 04 24             	mov    %eax,(%esp)
    1076:	e8 fc ff ff ff       	call   1077 <iget+0x115>
    107b:	89 c3                	mov    %eax,%ebx
    107d:	85 c0                	test   %eax,%eax
    107f:	75 0c                	jne    108d <iget+0x12b>
    1081:	c7 04 24 68 00 00 00 	movl   $0x68,(%esp)
    1088:	e8 fc ff ff ff       	call   1089 <iget+0x127>
    108d:	0f b7 45 2e          	movzwl 0x2e(%ebp),%eax
    1091:	48                   	dec    %eax
    1092:	c1 e8 05             	shr    $0x5,%eax
    1095:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    1099:	0f b7 53 06          	movzwl 0x6(%ebx),%edx
    109d:	8d 54 11 02          	lea    0x2(%ecx,%edx,1),%edx
    10a1:	01 d0                	add    %edx,%eax
    10a3:	89 44 24 04          	mov    %eax,0x4(%esp)
    10a7:	0f b7 45 2c          	movzwl 0x2c(%ebp),%eax
    10ab:	89 04 24             	mov    %eax,(%esp)
    10ae:	e8 fc ff ff ff       	call   10af <iget+0x14d>
    10b3:	89 c3                	mov    %eax,%ebx
    10b5:	85 c0                	test   %eax,%eax
    10b7:	75 0c                	jne    10c5 <iget+0x163>
    10b9:	c7 04 24 4e 00 00 00 	movl   $0x4e,(%esp)
    10c0:	e8 fc ff ff ff       	call   10c1 <iget+0x15f>
    10c5:	0f b7 75 2e          	movzwl 0x2e(%ebp),%esi
    10c9:	4e                   	dec    %esi
    10ca:	83 e6 1f             	and    $0x1f,%esi
    10cd:	c1 e6 05             	shl    $0x5,%esi
    10d0:	03 33                	add    (%ebx),%esi
    10d2:	b9 08 00 00 00       	mov    $0x8,%ecx
    10d7:	89 ef                	mov    %ebp,%edi
    10d9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    10db:	89 1c 24             	mov    %ebx,(%esp)
    10de:	e8 fc ff ff ff       	call   10df <iget+0x17d>
    10e3:	c6 45 32 00          	movb   $0x0,0x32(%ebp)
    10e7:	8d 45 20             	lea    0x20(%ebp),%eax
    10ea:	89 04 24             	mov    %eax,(%esp)
    10ed:	e8 fc ff ff ff       	call   10ee <iget+0x18c>
    10f2:	89 e8                	mov    %ebp,%eax
    10f4:	eb 5c                	jmp    1152 <iget+0x1f0>
    10f6:	89 d8                	mov    %ebx,%eax
    10f8:	eb 58                	jmp    1152 <iget+0x1f0>
    10fa:	b8 00 00 00 00       	mov    $0x0,%eax
    10ff:	eb 51                	jmp    1152 <iget+0x1f0>
    1101:	c7 04 24 bc 00 00 00 	movl   $0xbc,(%esp)
    1108:	e8 fc ff ff ff       	call   1109 <iget+0x1a7>
    110d:	85 ed                	test   %ebp,%ebp
    110f:	0f 85 03 ff ff ff    	jne    1018 <iget+0xb6>
    1115:	89 d8                	mov    %ebx,%eax
    1117:	eb 39                	jmp    1152 <iget+0x1f0>
    1119:	be 00 00 00 00       	mov    $0x0,%esi
    111e:	89 1c 24             	mov    %ebx,(%esp)
    1121:	e8 fc ff ff ff       	call   1122 <iget+0x1c0>
    1126:	8d 04 36             	lea    (%esi,%esi,1),%eax
    1129:	01 c6                	add    %eax,%esi
    112b:	8d 04 f6             	lea    (%esi,%esi,8),%eax
    112e:	0f b7 34 85 54 00 00 	movzwl 0x54(,%eax,4),%esi
    1135:	00 
    1136:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    113d:	00 
    113e:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1142:	89 44 24 34          	mov    %eax,0x34(%esp)
    1146:	89 f7                	mov    %esi,%edi
    1148:	bb 00 00 00 00       	mov    $0x0,%ebx
    114d:	e9 37 fe ff ff       	jmp    f89 <iget+0x27>
    1152:	83 c4 1c             	add    $0x1c,%esp
    1155:	5b                   	pop    %ebx
    1156:	5e                   	pop    %esi
    1157:	5f                   	pop    %edi
    1158:	5d                   	pop    %ebp
    1159:	c3                   	ret    

0000115a <find_buffer>:
    115a:	57                   	push   %edi
    115b:	56                   	push   %esi
    115c:	53                   	push   %ebx
    115d:	89 c6                	mov    %eax,%esi
    115f:	89 d7                	mov    %edx,%edi
    1161:	31 d0                	xor    %edx,%eax
    1163:	b9 33 01 00 00       	mov    $0x133,%ecx
    1168:	ba 00 00 00 00       	mov    $0x0,%edx
    116d:	f7 f1                	div    %ecx
    116f:	8b 0c 95 00 00 00 00 	mov    0x0(,%edx,4),%ecx
    1176:	85 c9                	test   %ecx,%ecx
    1178:	74 16                	je     1190 <find_buffer+0x36>
    117a:	0f b7 59 08          	movzwl 0x8(%ecx),%ebx
    117e:	39 f3                	cmp    %esi,%ebx
    1180:	75 05                	jne    1187 <find_buffer+0x2d>
    1182:	39 79 04             	cmp    %edi,0x4(%ecx)
    1185:	74 10                	je     1197 <find_buffer+0x3d>
    1187:	8b 49 18             	mov    0x18(%ecx),%ecx
    118a:	85 c9                	test   %ecx,%ecx
    118c:	75 ec                	jne    117a <find_buffer+0x20>
    118e:	eb 0b                	jmp    119b <find_buffer+0x41>
    1190:	b8 00 00 00 00       	mov    $0x0,%eax
    1195:	eb 09                	jmp    11a0 <find_buffer+0x46>
    1197:	89 c8                	mov    %ecx,%eax
    1199:	eb 05                	jmp    11a0 <find_buffer+0x46>
    119b:	b8 00 00 00 00       	mov    $0x0,%eax
    11a0:	5b                   	pop    %ebx
    11a1:	5e                   	pop    %esi
    11a2:	5f                   	pop    %edi
    11a3:	c3                   	ret    

000011a4 <sys_sync>:
    11a4:	57                   	push   %edi
    11a5:	56                   	push   %esi
    11a6:	53                   	push   %ebx
    11a7:	83 ec 10             	sub    $0x10,%esp
    11aa:	e8 fc ff ff ff       	call   11ab <sys_sync+0x7>
    11af:	8b 1d 00 00 00 00    	mov    0x0,%ebx
    11b5:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
    11bc:	7e 40                	jle    11fe <sys_sync+0x5a>
    11be:	bf 00 00 00 00       	mov    $0x0,%edi
    11c3:	fa                   	cli    
    11c4:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    11c8:	74 11                	je     11db <sys_sync+0x37>
    11ca:	8d 73 10             	lea    0x10(%ebx),%esi
    11cd:	89 34 24             	mov    %esi,(%esp)
    11d0:	e8 fc ff ff ff       	call   11d1 <sys_sync+0x2d>
    11d5:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    11d9:	75 f2                	jne    11cd <sys_sync+0x29>
    11db:	fb                   	sti    
    11dc:	80 7b 0b 00          	cmpb   $0x0,0xb(%ebx)
    11e0:	74 10                	je     11f2 <sys_sync+0x4e>
    11e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    11e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11ed:	e8 fc ff ff ff       	call   11ee <sys_sync+0x4a>
    11f2:	47                   	inc    %edi
    11f3:	83 c3 24             	add    $0x24,%ebx
    11f6:	39 3d 00 00 00 00    	cmp    %edi,0x0
    11fc:	7f c5                	jg     11c3 <sys_sync+0x1f>
    11fe:	b8 00 00 00 00       	mov    $0x0,%eax
    1203:	83 c4 10             	add    $0x10,%esp
    1206:	5b                   	pop    %ebx
    1207:	5e                   	pop    %esi
    1208:	5f                   	pop    %edi
    1209:	c3                   	ret    

0000120a <sync_dev>:
    120a:	55                   	push   %ebp
    120b:	57                   	push   %edi
    120c:	56                   	push   %esi
    120d:	53                   	push   %ebx
    120e:	83 ec 1c             	sub    $0x1c,%esp
    1211:	8b 7c 24 30          	mov    0x30(%esp),%edi
    1215:	8b 1d 00 00 00 00    	mov    0x0,%ebx
    121b:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
    1222:	7e 50                	jle    1274 <sync_dev+0x6a>
    1224:	be 00 00 00 00       	mov    $0x0,%esi
    1229:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    122d:	39 f8                	cmp    %edi,%eax
    122f:	75 37                	jne    1268 <sync_dev+0x5e>
    1231:	fa                   	cli    
    1232:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1236:	74 11                	je     1249 <sync_dev+0x3f>
    1238:	8d 6b 10             	lea    0x10(%ebx),%ebp
    123b:	89 2c 24             	mov    %ebp,(%esp)
    123e:	e8 fc ff ff ff       	call   123f <sync_dev+0x35>
    1243:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1247:	75 f2                	jne    123b <sync_dev+0x31>
    1249:	fb                   	sti    
    124a:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    124e:	39 f8                	cmp    %edi,%eax
    1250:	75 16                	jne    1268 <sync_dev+0x5e>
    1252:	80 7b 0b 00          	cmpb   $0x0,0xb(%ebx)
    1256:	74 10                	je     1268 <sync_dev+0x5e>
    1258:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    125c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1263:	e8 fc ff ff ff       	call   1264 <sync_dev+0x5a>
    1268:	46                   	inc    %esi
    1269:	83 c3 24             	add    $0x24,%ebx
    126c:	39 35 00 00 00 00    	cmp    %esi,0x0
    1272:	7f b5                	jg     1229 <sync_dev+0x1f>
    1274:	e8 fc ff ff ff       	call   1275 <sync_dev+0x6b>
    1279:	8b 1d 00 00 00 00    	mov    0x0,%ebx
    127f:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
    1286:	7e 50                	jle    12d8 <sync_dev+0xce>
    1288:	be 00 00 00 00       	mov    $0x0,%esi
    128d:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    1291:	39 f8                	cmp    %edi,%eax
    1293:	75 37                	jne    12cc <sync_dev+0xc2>
    1295:	fa                   	cli    
    1296:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    129a:	74 11                	je     12ad <sync_dev+0xa3>
    129c:	8d 6b 10             	lea    0x10(%ebx),%ebp
    129f:	89 2c 24             	mov    %ebp,(%esp)
    12a2:	e8 fc ff ff ff       	call   12a3 <sync_dev+0x99>
    12a7:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    12ab:	75 f2                	jne    129f <sync_dev+0x95>
    12ad:	fb                   	sti    
    12ae:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    12b2:	39 f8                	cmp    %edi,%eax
    12b4:	75 16                	jne    12cc <sync_dev+0xc2>
    12b6:	80 7b 0b 00          	cmpb   $0x0,0xb(%ebx)
    12ba:	74 10                	je     12cc <sync_dev+0xc2>
    12bc:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    12c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12c7:	e8 fc ff ff ff       	call   12c8 <sync_dev+0xbe>
    12cc:	46                   	inc    %esi
    12cd:	83 c3 24             	add    $0x24,%ebx
    12d0:	39 35 00 00 00 00    	cmp    %esi,0x0
    12d6:	7f b5                	jg     128d <sync_dev+0x83>
    12d8:	b8 00 00 00 00       	mov    $0x0,%eax
    12dd:	83 c4 1c             	add    $0x1c,%esp
    12e0:	5b                   	pop    %ebx
    12e1:	5e                   	pop    %esi
    12e2:	5f                   	pop    %edi
    12e3:	5d                   	pop    %ebp
    12e4:	c3                   	ret    

000012e5 <invalidate_buffers>:
    12e5:	55                   	push   %ebp
    12e6:	57                   	push   %edi
    12e7:	56                   	push   %esi
    12e8:	53                   	push   %ebx
    12e9:	83 ec 1c             	sub    $0x1c,%esp
    12ec:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    12f0:	8b 35 00 00 00 00    	mov    0x0,%esi
    12f6:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
    12fd:	7e 44                	jle    1343 <invalidate_buffers+0x5e>
    12ff:	83 c6 10             	add    $0x10,%esi
    1302:	bf 00 00 00 00       	mov    $0x0,%edi
    1307:	89 f3                	mov    %esi,%ebx
    1309:	0f b7 46 f8          	movzwl -0x8(%esi),%eax
    130d:	39 e8                	cmp    %ebp,%eax
    130f:	75 26                	jne    1337 <invalidate_buffers+0x52>
    1311:	fa                   	cli    
    1312:	80 7e fd 00          	cmpb   $0x0,-0x3(%esi)
    1316:	74 0e                	je     1326 <invalidate_buffers+0x41>
    1318:	89 1c 24             	mov    %ebx,(%esp)
    131b:	e8 fc ff ff ff       	call   131c <invalidate_buffers+0x37>
    1320:	80 7b fd 00          	cmpb   $0x0,-0x3(%ebx)
    1324:	75 f2                	jne    1318 <invalidate_buffers+0x33>
    1326:	fb                   	sti    
    1327:	0f b7 43 f8          	movzwl -0x8(%ebx),%eax
    132b:	39 e8                	cmp    %ebp,%eax
    132d:	75 08                	jne    1337 <invalidate_buffers+0x52>
    132f:	c6 43 fb 00          	movb   $0x0,-0x5(%ebx)
    1333:	c6 43 fa 00          	movb   $0x0,-0x6(%ebx)
    1337:	47                   	inc    %edi
    1338:	83 c6 24             	add    $0x24,%esi
    133b:	39 3d 00 00 00 00    	cmp    %edi,0x0
    1341:	7f c4                	jg     1307 <invalidate_buffers+0x22>
    1343:	83 c4 1c             	add    $0x1c,%esp
    1346:	5b                   	pop    %ebx
    1347:	5e                   	pop    %esi
    1348:	5f                   	pop    %edi
    1349:	5d                   	pop    %ebp
    134a:	c3                   	ret    

0000134b <check_disk_change>:
    134b:	55                   	push   %ebp
    134c:	57                   	push   %edi
    134d:	56                   	push   %esi
    134e:	53                   	push   %ebx
    134f:	83 ec 1c             	sub    $0x1c,%esp
    1352:	8b 7c 24 30          	mov    0x30(%esp),%edi
    1356:	89 f8                	mov    %edi,%eax
    1358:	c1 e8 08             	shr    $0x8,%eax
    135b:	83 f8 02             	cmp    $0x2,%eax
    135e:	0f 85 8c 00 00 00    	jne    13f0 <check_disk_change+0xa5>
    1364:	89 f8                	mov    %edi,%eax
    1366:	83 e0 03             	and    $0x3,%eax
    1369:	89 04 24             	mov    %eax,(%esp)
    136c:	e8 fc ff ff ff       	call   136d <check_disk_change+0x22>
    1371:	85 c0                	test   %eax,%eax
    1373:	74 7b                	je     13f0 <check_disk_change+0xa5>
    1375:	bb 54 00 00 00       	mov    $0x54,%ebx
    137a:	be b4 03 00 00       	mov    $0x3b4,%esi
    137f:	0f b7 03             	movzwl (%ebx),%eax
    1382:	39 f8                	cmp    %edi,%eax
    1384:	75 08                	jne    138e <check_disk_change+0x43>
    1386:	89 3c 24             	mov    %edi,(%esp)
    1389:	e8 fc ff ff ff       	call   138a <check_disk_change+0x3f>
    138e:	83 c3 6c             	add    $0x6c,%ebx
    1391:	39 f3                	cmp    %esi,%ebx
    1393:	75 ea                	jne    137f <check_disk_change+0x34>
    1395:	89 3c 24             	mov    %edi,(%esp)
    1398:	e8 fc ff ff ff       	call   1399 <check_disk_change+0x4e>
    139d:	8b 35 00 00 00 00    	mov    0x0,%esi
    13a3:	83 3d 00 00 00 00 00 	cmpl   $0x0,0x0
    13aa:	7e 44                	jle    13f0 <check_disk_change+0xa5>
    13ac:	83 c6 10             	add    $0x10,%esi
    13af:	bd 00 00 00 00       	mov    $0x0,%ebp
    13b4:	89 f3                	mov    %esi,%ebx
    13b6:	0f b7 46 f8          	movzwl -0x8(%esi),%eax
    13ba:	39 c7                	cmp    %eax,%edi
    13bc:	75 26                	jne    13e4 <check_disk_change+0x99>
    13be:	fa                   	cli    
    13bf:	80 7e fd 00          	cmpb   $0x0,-0x3(%esi)
    13c3:	74 0e                	je     13d3 <check_disk_change+0x88>
    13c5:	89 1c 24             	mov    %ebx,(%esp)
    13c8:	e8 fc ff ff ff       	call   13c9 <check_disk_change+0x7e>
    13cd:	80 7b fd 00          	cmpb   $0x0,-0x3(%ebx)
    13d1:	75 f2                	jne    13c5 <check_disk_change+0x7a>
    13d3:	fb                   	sti    
    13d4:	0f b7 43 f8          	movzwl -0x8(%ebx),%eax
    13d8:	39 c7                	cmp    %eax,%edi
    13da:	75 08                	jne    13e4 <check_disk_change+0x99>
    13dc:	c6 43 fb 00          	movb   $0x0,-0x5(%ebx)
    13e0:	c6 43 fa 00          	movb   $0x0,-0x6(%ebx)
    13e4:	45                   	inc    %ebp
    13e5:	83 c6 24             	add    $0x24,%esi
    13e8:	3b 2d 00 00 00 00    	cmp    0x0,%ebp
    13ee:	7c c4                	jl     13b4 <check_disk_change+0x69>
    13f0:	83 c4 1c             	add    $0x1c,%esp
    13f3:	5b                   	pop    %ebx
    13f4:	5e                   	pop    %esi
    13f5:	5f                   	pop    %edi
    13f6:	5d                   	pop    %ebp
    13f7:	c3                   	ret    

000013f8 <get_hash_table>:
    13f8:	55                   	push   %ebp
    13f9:	57                   	push   %edi
    13fa:	56                   	push   %esi
    13fb:	53                   	push   %ebx
    13fc:	83 ec 1c             	sub    $0x1c,%esp
    13ff:	8b 7c 24 30          	mov    0x30(%esp),%edi
    1403:	8b 6c 24 34          	mov    0x34(%esp),%ebp
    1407:	89 ea                	mov    %ebp,%edx
    1409:	89 f8                	mov    %edi,%eax
    140b:	e8 4a fd ff ff       	call   115a <find_buffer>
    1410:	89 c3                	mov    %eax,%ebx
    1412:	85 c0                	test   %eax,%eax
    1414:	74 2e                	je     1444 <get_hash_table+0x4c>
    1416:	fe 40 0c             	incb   0xc(%eax)
    1419:	fa                   	cli    
    141a:	80 78 0d 00          	cmpb   $0x0,0xd(%eax)
    141e:	74 11                	je     1431 <get_hash_table+0x39>
    1420:	8d 70 10             	lea    0x10(%eax),%esi
    1423:	89 34 24             	mov    %esi,(%esp)
    1426:	e8 fc ff ff ff       	call   1427 <get_hash_table+0x2f>
    142b:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    142f:	75 f2                	jne    1423 <get_hash_table+0x2b>
    1431:	fb                   	sti    
    1432:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    1436:	39 f8                	cmp    %edi,%eax
    1438:	75 05                	jne    143f <get_hash_table+0x47>
    143a:	39 6b 04             	cmp    %ebp,0x4(%ebx)
    143d:	74 0c                	je     144b <get_hash_table+0x53>
    143f:	fe 4b 0c             	decb   0xc(%ebx)
    1442:	eb c3                	jmp    1407 <get_hash_table+0xf>
    1444:	b8 00 00 00 00       	mov    $0x0,%eax
    1449:	eb 02                	jmp    144d <get_hash_table+0x55>
    144b:	89 d8                	mov    %ebx,%eax
    144d:	83 c4 1c             	add    $0x1c,%esp
    1450:	5b                   	pop    %ebx
    1451:	5e                   	pop    %esi
    1452:	5f                   	pop    %edi
    1453:	5d                   	pop    %ebp
    1454:	c3                   	ret    

00001455 <getblk>:
    1455:	55                   	push   %ebp
    1456:	57                   	push   %edi
    1457:	56                   	push   %esi
    1458:	53                   	push   %ebx
    1459:	83 ec 1c             	sub    $0x1c,%esp
    145c:	8b 74 24 30          	mov    0x30(%esp),%esi
    1460:	8b 44 24 34          	mov    0x34(%esp),%eax
    1464:	89 44 24 04          	mov    %eax,0x4(%esp)
    1468:	89 34 24             	mov    %esi,(%esp)
    146b:	e8 fc ff ff ff       	call   146c <getblk+0x17>
    1470:	89 c3                	mov    %eax,%ebx
    1472:	85 c0                	test   %eax,%eax
    1474:	0f 85 b1 01 00 00    	jne    162b <getblk+0x1d6>
    147a:	8b 0d 08 07 00 00    	mov    0x708,%ecx
    1480:	89 ca                	mov    %ecx,%edx
    1482:	80 7a 0c 00          	cmpb   $0x0,0xc(%edx)
    1486:	75 30                	jne    14b8 <getblk+0x63>
    1488:	85 db                	test   %ebx,%ebx
    148a:	74 1c                	je     14a8 <getblk+0x53>
    148c:	0f b6 42 0b          	movzbl 0xb(%edx),%eax
    1490:	01 c0                	add    %eax,%eax
    1492:	0f b6 7a 0d          	movzbl 0xd(%edx),%edi
    1496:	01 c7                	add    %eax,%edi
    1498:	0f b6 43 0b          	movzbl 0xb(%ebx),%eax
    149c:	01 c0                	add    %eax,%eax
    149e:	0f b6 6b 0d          	movzbl 0xd(%ebx),%ebp
    14a2:	01 e8                	add    %ebp,%eax
    14a4:	39 c7                	cmp    %eax,%edi
    14a6:	7d 10                	jge    14b8 <getblk+0x63>
    14a8:	0f b6 42 0b          	movzbl 0xb(%edx),%eax
    14ac:	01 c0                	add    %eax,%eax
    14ae:	0f b6 5a 0d          	movzbl 0xd(%edx),%ebx
    14b2:	01 d8                	add    %ebx,%eax
    14b4:	74 0b                	je     14c1 <getblk+0x6c>
    14b6:	89 d3                	mov    %edx,%ebx
    14b8:	8b 52 20             	mov    0x20(%edx),%edx
    14bb:	39 d1                	cmp    %edx,%ecx
    14bd:	75 c3                	jne    1482 <getblk+0x2d>
    14bf:	eb 02                	jmp    14c3 <getblk+0x6e>
    14c1:	89 d3                	mov    %edx,%ebx
    14c3:	85 db                	test   %ebx,%ebx
    14c5:	75 0e                	jne    14d5 <getblk+0x80>
    14c7:	c7 04 24 04 07 00 00 	movl   $0x704,(%esp)
    14ce:	e8 fc ff ff ff       	call   14cf <getblk+0x7a>
    14d3:	eb 8b                	jmp    1460 <getblk+0xb>
    14d5:	fa                   	cli    
    14d6:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    14da:	74 11                	je     14ed <getblk+0x98>
    14dc:	8d 7b 10             	lea    0x10(%ebx),%edi
    14df:	89 3c 24             	mov    %edi,(%esp)
    14e2:	e8 fc ff ff ff       	call   14e3 <getblk+0x8e>
    14e7:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    14eb:	75 f2                	jne    14df <getblk+0x8a>
    14ed:	fb                   	sti    
    14ee:	80 7b 0c 00          	cmpb   $0x0,0xc(%ebx)
    14f2:	0f 85 68 ff ff ff    	jne    1460 <getblk+0xb>
    14f8:	8d 7b 10             	lea    0x10(%ebx),%edi
    14fb:	eb 2c                	jmp    1529 <getblk+0xd4>
    14fd:	0f b7 43 08          	movzwl 0x8(%ebx),%eax
    1501:	89 04 24             	mov    %eax,(%esp)
    1504:	e8 fc ff ff ff       	call   1505 <getblk+0xb0>
    1509:	fa                   	cli    
    150a:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    150e:	74 0e                	je     151e <getblk+0xc9>
    1510:	89 3c 24             	mov    %edi,(%esp)
    1513:	e8 fc ff ff ff       	call   1514 <getblk+0xbf>
    1518:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    151c:	75 f2                	jne    1510 <getblk+0xbb>
    151e:	fb                   	sti    
    151f:	80 7b 0c 00          	cmpb   $0x0,0xc(%ebx)
    1523:	0f 85 37 ff ff ff    	jne    1460 <getblk+0xb>
    1529:	80 7b 0b 00          	cmpb   $0x0,0xb(%ebx)
    152d:	75 ce                	jne    14fd <getblk+0xa8>
    152f:	8b 54 24 34          	mov    0x34(%esp),%edx
    1533:	89 f0                	mov    %esi,%eax
    1535:	e8 20 fc ff ff       	call   115a <find_buffer>
    153a:	85 c0                	test   %eax,%eax
    153c:	0f 85 1e ff ff ff    	jne    1460 <getblk+0xb>
    1542:	89 df                	mov    %ebx,%edi
    1544:	c6 43 0c 01          	movb   $0x1,0xc(%ebx)
    1548:	c6 43 0b 00          	movb   $0x0,0xb(%ebx)
    154c:	c6 43 0a 00          	movb   $0x0,0xa(%ebx)
    1550:	8b 43 18             	mov    0x18(%ebx),%eax
    1553:	85 c0                	test   %eax,%eax
    1555:	74 06                	je     155d <getblk+0x108>
    1557:	8b 53 14             	mov    0x14(%ebx),%edx
    155a:	89 50 14             	mov    %edx,0x14(%eax)
    155d:	8b 47 14             	mov    0x14(%edi),%eax
    1560:	85 c0                	test   %eax,%eax
    1562:	74 06                	je     156a <getblk+0x115>
    1564:	8b 57 18             	mov    0x18(%edi),%edx
    1567:	89 50 18             	mov    %edx,0x18(%eax)
    156a:	0f b7 47 08          	movzwl 0x8(%edi),%eax
    156e:	33 47 04             	xor    0x4(%edi),%eax
    1571:	b9 33 01 00 00       	mov    $0x133,%ecx
    1576:	ba 00 00 00 00       	mov    $0x0,%edx
    157b:	f7 f1                	div    %ecx
    157d:	3b 3c 95 00 00 00 00 	cmp    0x0(,%edx,4),%edi
    1584:	75 0a                	jne    1590 <getblk+0x13b>
    1586:	8b 47 18             	mov    0x18(%edi),%eax
    1589:	89 04 95 00 00 00 00 	mov    %eax,0x0(,%edx,4)
    1590:	83 7f 1c 00          	cmpl   $0x0,0x1c(%edi)
    1594:	74 06                	je     159c <getblk+0x147>
    1596:	83 7f 20 00          	cmpl   $0x0,0x20(%edi)
    159a:	75 0c                	jne    15a8 <getblk+0x153>
    159c:	c7 04 24 d9 00 00 00 	movl   $0xd9,(%esp)
    15a3:	e8 fc ff ff ff       	call   15a4 <getblk+0x14f>
    15a8:	8b 47 1c             	mov    0x1c(%edi),%eax
    15ab:	8b 57 20             	mov    0x20(%edi),%edx
    15ae:	89 50 20             	mov    %edx,0x20(%eax)
    15b1:	8b 47 20             	mov    0x20(%edi),%eax
    15b4:	8b 57 1c             	mov    0x1c(%edi),%edx
    15b7:	89 50 1c             	mov    %edx,0x1c(%eax)
    15ba:	3b 3d 08 07 00 00    	cmp    0x708,%edi
    15c0:	75 08                	jne    15ca <getblk+0x175>
    15c2:	8b 47 20             	mov    0x20(%edi),%eax
    15c5:	a3 08 07 00 00       	mov    %eax,0x708
    15ca:	66 89 77 08          	mov    %si,0x8(%edi)
    15ce:	8b 44 24 34          	mov    0x34(%esp),%eax
    15d2:	89 47 04             	mov    %eax,0x4(%edi)
    15d5:	a1 08 07 00 00       	mov    0x708,%eax
    15da:	89 47 20             	mov    %eax,0x20(%edi)
    15dd:	8b 50 1c             	mov    0x1c(%eax),%edx
    15e0:	89 57 1c             	mov    %edx,0x1c(%edi)
    15e3:	8b 50 1c             	mov    0x1c(%eax),%edx
    15e6:	89 7a 20             	mov    %edi,0x20(%edx)
    15e9:	89 78 1c             	mov    %edi,0x1c(%eax)
    15ec:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
    15f3:	c7 47 18 00 00 00 00 	movl   $0x0,0x18(%edi)
    15fa:	8b 47 08             	mov    0x8(%edi),%eax
    15fd:	66 85 c0             	test   %ax,%ax
    1600:	74 29                	je     162b <getblk+0x1d6>
    1602:	0f b7 c0             	movzwl %ax,%eax
    1605:	33 47 04             	xor    0x4(%edi),%eax
    1608:	b9 33 01 00 00       	mov    $0x133,%ecx
    160d:	ba 00 00 00 00       	mov    $0x0,%edx
    1612:	f7 f1                	div    %ecx
    1614:	8b 04 95 00 00 00 00 	mov    0x0(,%edx,4),%eax
    161b:	89 47 18             	mov    %eax,0x18(%edi)
    161e:	89 3c 95 00 00 00 00 	mov    %edi,0x0(,%edx,4)
    1625:	8b 47 18             	mov    0x18(%edi),%eax
    1628:	89 78 14             	mov    %edi,0x14(%eax)
    162b:	89 d8                	mov    %ebx,%eax
    162d:	83 c4 1c             	add    $0x1c,%esp
    1630:	5b                   	pop    %ebx
    1631:	5e                   	pop    %esi
    1632:	5f                   	pop    %edi
    1633:	5d                   	pop    %ebp
    1634:	c3                   	ret    

00001635 <brelse>:
    1635:	56                   	push   %esi
    1636:	53                   	push   %ebx
    1637:	83 ec 14             	sub    $0x14,%esp
    163a:	8b 5c 24 20          	mov    0x20(%esp),%ebx
    163e:	85 db                	test   %ebx,%ebx
    1640:	74 3e                	je     1680 <brelse+0x4b>
    1642:	fa                   	cli    
    1643:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1647:	74 11                	je     165a <brelse+0x25>
    1649:	8d 73 10             	lea    0x10(%ebx),%esi
    164c:	89 34 24             	mov    %esi,(%esp)
    164f:	e8 fc ff ff ff       	call   1650 <brelse+0x1b>
    1654:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1658:	75 f2                	jne    164c <brelse+0x17>
    165a:	fb                   	sti    
    165b:	8a 43 0c             	mov    0xc(%ebx),%al
    165e:	8d 50 ff             	lea    -0x1(%eax),%edx
    1661:	88 53 0c             	mov    %dl,0xc(%ebx)
    1664:	84 c0                	test   %al,%al
    1666:	75 0c                	jne    1674 <brelse+0x3f>
    1668:	c7 04 24 f3 00 00 00 	movl   $0xf3,(%esp)
    166f:	e8 fc ff ff ff       	call   1670 <brelse+0x3b>
    1674:	c7 04 24 04 07 00 00 	movl   $0x704,(%esp)
    167b:	e8 fc ff ff ff       	call   167c <brelse+0x47>
    1680:	83 c4 14             	add    $0x14,%esp
    1683:	5b                   	pop    %ebx
    1684:	5e                   	pop    %esi
    1685:	c3                   	ret    

00001686 <bread>:
    1686:	56                   	push   %esi
    1687:	53                   	push   %ebx
    1688:	83 ec 14             	sub    $0x14,%esp
    168b:	8b 44 24 24          	mov    0x24(%esp),%eax
    168f:	89 44 24 04          	mov    %eax,0x4(%esp)
    1693:	8b 44 24 20          	mov    0x20(%esp),%eax
    1697:	89 04 24             	mov    %eax,(%esp)
    169a:	e8 fc ff ff ff       	call   169b <bread+0x15>
    169f:	89 c3                	mov    %eax,%ebx
    16a1:	85 c0                	test   %eax,%eax
    16a3:	75 0c                	jne    16b1 <bread+0x2b>
    16a5:	c7 04 24 0e 01 00 00 	movl   $0x10e,(%esp)
    16ac:	e8 fc ff ff ff       	call   16ad <bread+0x27>
    16b1:	80 7b 0a 00          	cmpb   $0x0,0xa(%ebx)
    16b5:	75 40                	jne    16f7 <bread+0x71>
    16b7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    16bb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16c2:	e8 fc ff ff ff       	call   16c3 <bread+0x3d>
    16c7:	fa                   	cli    
    16c8:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    16cc:	74 11                	je     16df <bread+0x59>
    16ce:	8d 73 10             	lea    0x10(%ebx),%esi
    16d1:	89 34 24             	mov    %esi,(%esp)
    16d4:	e8 fc ff ff ff       	call   16d5 <bread+0x4f>
    16d9:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    16dd:	75 f2                	jne    16d1 <bread+0x4b>
    16df:	fb                   	sti    
    16e0:	89 d8                	mov    %ebx,%eax
    16e2:	80 7b 0a 00          	cmpb   $0x0,0xa(%ebx)
    16e6:	75 11                	jne    16f9 <bread+0x73>
    16e8:	89 1c 24             	mov    %ebx,(%esp)
    16eb:	e8 fc ff ff ff       	call   16ec <bread+0x66>
    16f0:	b8 00 00 00 00       	mov    $0x0,%eax
    16f5:	eb 02                	jmp    16f9 <bread+0x73>
    16f7:	89 d8                	mov    %ebx,%eax
    16f9:	83 c4 14             	add    $0x14,%esp
    16fc:	5b                   	pop    %ebx
    16fd:	5e                   	pop    %esi
    16fe:	c3                   	ret    

000016ff <bread_page>:
    16ff:	55                   	push   %ebp
    1700:	57                   	push   %edi
    1701:	56                   	push   %esi
    1702:	53                   	push   %ebx
    1703:	83 ec 2c             	sub    $0x2c,%esp
    1706:	8b 7c 24 40          	mov    0x40(%esp),%edi
    170a:	8b 6c 24 44          	mov    0x44(%esp),%ebp
    170e:	8b 74 24 48          	mov    0x48(%esp),%esi
    1712:	bb 00 00 00 00       	mov    $0x0,%ebx
    1717:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
    171a:	85 c0                	test   %eax,%eax
    171c:	74 2c                	je     174a <bread_page+0x4b>
    171e:	89 44 24 04          	mov    %eax,0x4(%esp)
    1722:	89 2c 24             	mov    %ebp,(%esp)
    1725:	e8 fc ff ff ff       	call   1726 <bread_page+0x27>
    172a:	89 44 9c 10          	mov    %eax,0x10(%esp,%ebx,4)
    172e:	85 c0                	test   %eax,%eax
    1730:	74 20                	je     1752 <bread_page+0x53>
    1732:	80 78 0a 00          	cmpb   $0x0,0xa(%eax)
    1736:	75 1a                	jne    1752 <bread_page+0x53>
    1738:	89 44 24 04          	mov    %eax,0x4(%esp)
    173c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1743:	e8 fc ff ff ff       	call   1744 <bread_page+0x45>
    1748:	eb 08                	jmp    1752 <bread_page+0x53>
    174a:	c7 44 9c 10 00 00 00 	movl   $0x0,0x10(%esp,%ebx,4)
    1751:	00 
    1752:	43                   	inc    %ebx
    1753:	83 fb 04             	cmp    $0x4,%ebx
    1756:	75 bf                	jne    1717 <bread_page+0x18>
    1758:	8d 6c 24 10          	lea    0x10(%esp),%ebp
    175c:	8b 5d 00             	mov    0x0(%ebp),%ebx
    175f:	85 db                	test   %ebx,%ebx
    1761:	74 31                	je     1794 <bread_page+0x95>
    1763:	fa                   	cli    
    1764:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1768:	74 11                	je     177b <bread_page+0x7c>
    176a:	8d 73 10             	lea    0x10(%ebx),%esi
    176d:	89 34 24             	mov    %esi,(%esp)
    1770:	e8 fc ff ff ff       	call   1771 <bread_page+0x72>
    1775:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    1779:	75 f2                	jne    176d <bread_page+0x6e>
    177b:	fb                   	sti    
    177c:	80 7b 0a 00          	cmpb   $0x0,0xa(%ebx)
    1780:	74 0a                	je     178c <bread_page+0x8d>
    1782:	8b 33                	mov    (%ebx),%esi
    1784:	b9 00 01 00 00       	mov    $0x100,%ecx
    1789:	fc                   	cld    
    178a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    178c:	89 1c 24             	mov    %ebx,(%esp)
    178f:	e8 fc ff ff ff       	call   1790 <bread_page+0x91>
    1794:	81 c7 00 04 00 00    	add    $0x400,%edi
    179a:	83 c5 04             	add    $0x4,%ebp
    179d:	8d 44 24 20          	lea    0x20(%esp),%eax
    17a1:	39 c5                	cmp    %eax,%ebp
    17a3:	75 b7                	jne    175c <bread_page+0x5d>
    17a5:	83 c4 2c             	add    $0x2c,%esp
    17a8:	5b                   	pop    %ebx
    17a9:	5e                   	pop    %esi
    17aa:	5f                   	pop    %edi
    17ab:	5d                   	pop    %ebp
    17ac:	c3                   	ret    

000017ad <breada>:
    17ad:	55                   	push   %ebp
    17ae:	57                   	push   %edi
    17af:	56                   	push   %esi
    17b0:	53                   	push   %ebx
    17b1:	83 ec 1c             	sub    $0x1c,%esp
    17b4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    17b8:	8b 44 24 34          	mov    0x34(%esp),%eax
    17bc:	89 44 24 04          	mov    %eax,0x4(%esp)
    17c0:	89 2c 24             	mov    %ebp,(%esp)
    17c3:	e8 fc ff ff ff       	call   17c4 <breada+0x17>
    17c8:	89 c7                	mov    %eax,%edi
    17ca:	85 c0                	test   %eax,%eax
    17cc:	75 0c                	jne    17da <breada+0x2d>
    17ce:	c7 04 24 0e 01 00 00 	movl   $0x10e,(%esp)
    17d5:	e8 fc ff ff ff       	call   17d6 <breada+0x29>
    17da:	80 7f 0a 00          	cmpb   $0x0,0xa(%edi)
    17de:	75 10                	jne    17f0 <breada+0x43>
    17e0:	89 7c 24 04          	mov    %edi,0x4(%esp)
    17e4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17eb:	e8 fc ff ff ff       	call   17ec <breada+0x3f>
    17f0:	8d 74 24 38          	lea    0x38(%esp),%esi
    17f4:	eb 2b                	jmp    1821 <breada+0x74>
    17f6:	89 44 24 04          	mov    %eax,0x4(%esp)
    17fa:	89 2c 24             	mov    %ebp,(%esp)
    17fd:	e8 fc ff ff ff       	call   17fe <breada+0x51>
    1802:	89 c3                	mov    %eax,%ebx
    1804:	85 c0                	test   %eax,%eax
    1806:	74 19                	je     1821 <breada+0x74>
    1808:	80 78 0a 00          	cmpb   $0x0,0xa(%eax)
    180c:	75 10                	jne    181e <breada+0x71>
    180e:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1812:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    1819:	e8 fc ff ff ff       	call   181a <breada+0x6d>
    181e:	fe 4b 0c             	decb   0xc(%ebx)
    1821:	83 c6 04             	add    $0x4,%esi
    1824:	8b 46 fc             	mov    -0x4(%esi),%eax
    1827:	89 44 24 34          	mov    %eax,0x34(%esp)
    182b:	85 c0                	test   %eax,%eax
    182d:	79 c7                	jns    17f6 <breada+0x49>
    182f:	fa                   	cli    
    1830:	80 7f 0d 00          	cmpb   $0x0,0xd(%edi)
    1834:	74 11                	je     1847 <breada+0x9a>
    1836:	8d 5f 10             	lea    0x10(%edi),%ebx
    1839:	89 1c 24             	mov    %ebx,(%esp)
    183c:	e8 fc ff ff ff       	call   183d <breada+0x90>
    1841:	80 7f 0d 00          	cmpb   $0x0,0xd(%edi)
    1845:	75 f2                	jne    1839 <breada+0x8c>
    1847:	fb                   	sti    
    1848:	89 f8                	mov    %edi,%eax
    184a:	80 7f 0a 00          	cmpb   $0x0,0xa(%edi)
    184e:	75 0d                	jne    185d <breada+0xb0>
    1850:	89 3c 24             	mov    %edi,(%esp)
    1853:	e8 fc ff ff ff       	call   1854 <breada+0xa7>
    1858:	b8 00 00 00 00       	mov    $0x0,%eax
    185d:	83 c4 1c             	add    $0x1c,%esp
    1860:	5b                   	pop    %ebx
    1861:	5e                   	pop    %esi
    1862:	5f                   	pop    %edi
    1863:	5d                   	pop    %ebp
    1864:	c3                   	ret    

00001865 <buffer_init>:
    1865:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    186b:	81 7c 24 04 00 00 10 	cmpl   $0x100000,0x4(%esp)
    1872:	00 
    1873:	74 06                	je     187b <buffer_init+0x16>
    1875:	8b 54 24 04          	mov    0x4(%esp),%edx
    1879:	eb 53                	jmp    18ce <buffer_init+0x69>
    187b:	ba 00 00 0a 00       	mov    $0xa0000,%edx
    1880:	eb 4c                	jmp    18ce <buffer_init+0x69>
    1882:	66 c7 40 e4 00 00    	movw   $0x0,-0x1c(%eax)
    1888:	c6 40 e7 00          	movb   $0x0,-0x19(%eax)
    188c:	c6 40 e8 00          	movb   $0x0,-0x18(%eax)
    1890:	c6 40 e9 00          	movb   $0x0,-0x17(%eax)
    1894:	c6 40 e6 00          	movb   $0x0,-0x1a(%eax)
    1898:	c7 40 ec 00 00 00 00 	movl   $0x0,-0x14(%eax)
    189f:	c7 40 f4 00 00 00 00 	movl   $0x0,-0xc(%eax)
    18a6:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%eax)
    18ad:	89 50 dc             	mov    %edx,-0x24(%eax)
    18b0:	8d 48 b8             	lea    -0x48(%eax),%ecx
    18b3:	89 48 f8             	mov    %ecx,-0x8(%eax)
    18b6:	89 40 fc             	mov    %eax,-0x4(%eax)
    18b9:	ff 05 00 00 00 00    	incl   0x0
    18bf:	81 fa 00 00 10 00    	cmp    $0x100000,%edx
    18c5:	75 05                	jne    18cc <buffer_init+0x67>
    18c7:	ba 00 00 0a 00       	mov    $0xa0000,%edx
    18cc:	89 c1                	mov    %eax,%ecx
    18ce:	81 ea 00 04 00 00    	sub    $0x400,%edx
    18d4:	8d 41 24             	lea    0x24(%ecx),%eax
    18d7:	39 c2                	cmp    %eax,%edx
    18d9:	73 a7                	jae    1882 <buffer_init+0x1d>
    18db:	a1 00 00 00 00       	mov    0x0,%eax
    18e0:	a3 08 07 00 00       	mov    %eax,0x708
    18e5:	8d 51 dc             	lea    -0x24(%ecx),%edx
    18e8:	89 50 1c             	mov    %edx,0x1c(%eax)
    18eb:	89 41 fc             	mov    %eax,-0x4(%ecx)
    18ee:	b8 00 00 00 00       	mov    $0x0,%eax
    18f3:	c7 04 85 00 00 00 00 	movl   $0x0,0x0(,%eax,4)
    18fa:	00 00 00 00 
    18fe:	40                   	inc    %eax
    18ff:	3d 33 01 00 00       	cmp    $0x133,%eax
    1904:	75 ed                	jne    18f3 <buffer_init+0x8e>
    1906:	c3                   	ret    

00001907 <free_super>:
    1907:	83 ec 1c             	sub    $0x1c,%esp
    190a:	fa                   	cli    
    190b:	c6 40 68 00          	movb   $0x0,0x68(%eax)
    190f:	83 c0 64             	add    $0x64,%eax
    1912:	89 04 24             	mov    %eax,(%esp)
    1915:	e8 fc ff ff ff       	call   1916 <free_super+0xf>
    191a:	fb                   	sti    
    191b:	83 c4 1c             	add    $0x1c,%esp
    191e:	c3                   	ret    

0000191f <get_super>:
    191f:	57                   	push   %edi
    1920:	56                   	push   %esi
    1921:	53                   	push   %ebx
    1922:	83 ec 10             	sub    $0x10,%esp
    1925:	8b 7c 24 20          	mov    0x20(%esp),%edi
    1929:	85 ff                	test   %edi,%edi
    192b:	74 47                	je     1974 <get_super+0x55>
    192d:	bb 00 00 00 00       	mov    $0x0,%ebx
    1932:	0f b7 43 54          	movzwl 0x54(%ebx),%eax
    1936:	39 f8                	cmp    %edi,%eax
    1938:	75 28                	jne    1962 <get_super+0x43>
    193a:	fa                   	cli    
    193b:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
    193f:	74 11                	je     1952 <get_super+0x33>
    1941:	8d 73 64             	lea    0x64(%ebx),%esi
    1944:	89 34 24             	mov    %esi,(%esp)
    1947:	e8 fc ff ff ff       	call   1948 <get_super+0x29>
    194c:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
    1950:	75 f2                	jne    1944 <get_super+0x25>
    1952:	fb                   	sti    
    1953:	0f b7 43 54          	movzwl 0x54(%ebx),%eax
    1957:	39 f8                	cmp    %edi,%eax
    1959:	74 20                	je     197b <get_super+0x5c>
    195b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1960:	eb d0                	jmp    1932 <get_super+0x13>
    1962:	83 c3 6c             	add    $0x6c,%ebx
    1965:	81 fb 60 03 00 00    	cmp    $0x360,%ebx
    196b:	72 c5                	jb     1932 <get_super+0x13>
    196d:	b8 00 00 00 00       	mov    $0x0,%eax
    1972:	eb 09                	jmp    197d <get_super+0x5e>
    1974:	b8 00 00 00 00       	mov    $0x0,%eax
    1979:	eb 02                	jmp    197d <get_super+0x5e>
    197b:	89 d8                	mov    %ebx,%eax
    197d:	83 c4 10             	add    $0x10,%esp
    1980:	5b                   	pop    %ebx
    1981:	5e                   	pop    %esi
    1982:	5f                   	pop    %edi
    1983:	c3                   	ret    

00001984 <read_super>:
    1984:	55                   	push   %ebp
    1985:	57                   	push   %edi
    1986:	56                   	push   %esi
    1987:	53                   	push   %ebx
    1988:	83 ec 1c             	sub    $0x1c,%esp
    198b:	89 c5                	mov    %eax,%ebp
    198d:	85 c0                	test   %eax,%eax
    198f:	0f 84 d0 01 00 00    	je     1b65 <read_super+0x1e1>
    1995:	89 04 24             	mov    %eax,(%esp)
    1998:	e8 fc ff ff ff       	call   1999 <read_super+0x15>
    199d:	89 2c 24             	mov    %ebp,(%esp)
    19a0:	e8 fc ff ff ff       	call   19a1 <read_super+0x1d>
    19a5:	85 c0                	test   %eax,%eax
    19a7:	0f 85 c4 01 00 00    	jne    1b71 <read_super+0x1ed>
    19ad:	66 83 3d 54 00 00 00 	cmpw   $0x0,0x54
    19b4:	00 
    19b5:	74 1e                	je     19d5 <read_super+0x51>
    19b7:	bb 00 00 00 00       	mov    $0x0,%ebx
    19bc:	eb 07                	jmp    19c5 <read_super+0x41>
    19be:	66 83 7b 54 00       	cmpw   $0x0,0x54(%ebx)
    19c3:	74 15                	je     19da <read_super+0x56>
    19c5:	83 c3 6c             	add    $0x6c,%ebx
    19c8:	81 fb 60 03 00 00    	cmp    $0x360,%ebx
    19ce:	72 ee                	jb     19be <read_super+0x3a>
    19d0:	e9 97 01 00 00       	jmp    1b6c <read_super+0x1e8>
    19d5:	bb 00 00 00 00       	mov    $0x0,%ebx
    19da:	66 89 6b 54          	mov    %bp,0x54(%ebx)
    19de:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
    19e5:	c7 43 5c 00 00 00 00 	movl   $0x0,0x5c(%ebx)
    19ec:	c7 43 60 00 00 00 00 	movl   $0x0,0x60(%ebx)
    19f3:	c6 43 69 00          	movb   $0x0,0x69(%ebx)
    19f7:	c6 43 6a 00          	movb   $0x0,0x6a(%ebx)
    19fb:	fa                   	cli    
    19fc:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
    1a00:	74 11                	je     1a13 <read_super+0x8f>
    1a02:	8d 73 64             	lea    0x64(%ebx),%esi
    1a05:	89 34 24             	mov    %esi,(%esp)
    1a08:	e8 fc ff ff ff       	call   1a09 <read_super+0x85>
    1a0d:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
    1a11:	75 f2                	jne    1a05 <read_super+0x81>
    1a13:	c6 43 68 01          	movb   $0x1,0x68(%ebx)
    1a17:	fb                   	sti    
    1a18:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    1a1f:	00 
    1a20:	89 2c 24             	mov    %ebp,(%esp)
    1a23:	e8 fc ff ff ff       	call   1a24 <read_super+0xa0>
    1a28:	85 c0                	test   %eax,%eax
    1a2a:	75 17                	jne    1a43 <read_super+0xbf>
    1a2c:	66 c7 43 54 00 00    	movw   $0x0,0x54(%ebx)
    1a32:	89 d8                	mov    %ebx,%eax
    1a34:	e8 ce fe ff ff       	call   1907 <free_super>
    1a39:	b8 00 00 00 00       	mov    $0x0,%eax
    1a3e:	e9 2e 01 00 00       	jmp    1b71 <read_super+0x1ed>
    1a43:	8b 30                	mov    (%eax),%esi
    1a45:	b9 05 00 00 00       	mov    $0x5,%ecx
    1a4a:	89 df                	mov    %ebx,%edi
    1a4c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    1a4e:	89 04 24             	mov    %eax,(%esp)
    1a51:	e8 fc ff ff ff       	call   1a52 <read_super+0xce>
    1a56:	b8 00 00 00 00       	mov    $0x0,%eax
    1a5b:	66 81 7b 10 7f 13    	cmpw   $0x137f,0x10(%ebx)
    1a61:	74 17                	je     1a7a <read_super+0xf6>
    1a63:	66 c7 43 54 00 00    	movw   $0x0,0x54(%ebx)
    1a69:	89 d8                	mov    %ebx,%eax
    1a6b:	e8 97 fe ff ff       	call   1907 <free_super>
    1a70:	b8 00 00 00 00       	mov    $0x0,%eax
    1a75:	e9 f7 00 00 00       	jmp    1b71 <read_super+0x1ed>
    1a7a:	c7 44 83 14 00 00 00 	movl   $0x0,0x14(%ebx,%eax,4)
    1a81:	00 
    1a82:	40                   	inc    %eax
    1a83:	83 f8 08             	cmp    $0x8,%eax
    1a86:	75 f2                	jne    1a7a <read_super+0xf6>
    1a88:	b0 00                	mov    $0x0,%al
    1a8a:	c7 44 83 34 00 00 00 	movl   $0x0,0x34(%ebx,%eax,4)
    1a91:	00 
    1a92:	40                   	inc    %eax
    1a93:	83 f8 08             	cmp    $0x8,%eax
    1a96:	75 f2                	jne    1a8a <read_super+0x106>
    1a98:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
    1a9d:	74 1b                	je     1aba <read_super+0x136>
    1a9f:	be 02 00 00 00       	mov    $0x2,%esi
    1aa4:	89 74 24 04          	mov    %esi,0x4(%esp)
    1aa8:	89 2c 24             	mov    %ebp,(%esp)
    1aab:	e8 fc ff ff ff       	call   1aac <read_super+0x128>
    1ab0:	89 44 b3 0c          	mov    %eax,0xc(%ebx,%esi,4)
    1ab4:	85 c0                	test   %eax,%eax
    1ab6:	75 15                	jne    1acd <read_super+0x149>
    1ab8:	eb 05                	jmp    1abf <read_super+0x13b>
    1aba:	be 02 00 00 00       	mov    $0x2,%esi
    1abf:	bf 00 00 00 00       	mov    $0x0,%edi
    1ac4:	66 83 7b 06 00       	cmpw   $0x0,0x6(%ebx)
    1ac9:	75 10                	jne    1adb <read_super+0x157>
    1acb:	eb 2c                	jmp    1af9 <read_super+0x175>
    1acd:	46                   	inc    %esi
    1ace:	8d 56 fe             	lea    -0x2(%esi),%edx
    1ad1:	0f b7 43 04          	movzwl 0x4(%ebx),%eax
    1ad5:	39 c2                	cmp    %eax,%edx
    1ad7:	7c cb                	jl     1aa4 <read_super+0x120>
    1ad9:	eb e4                	jmp    1abf <read_super+0x13b>
    1adb:	89 74 24 04          	mov    %esi,0x4(%esp)
    1adf:	89 2c 24             	mov    %ebp,(%esp)
    1ae2:	e8 fc ff ff ff       	call   1ae3 <read_super+0x15f>
    1ae7:	89 44 bb 34          	mov    %eax,0x34(%ebx,%edi,4)
    1aeb:	85 c0                	test   %eax,%eax
    1aed:	74 0a                	je     1af9 <read_super+0x175>
    1aef:	46                   	inc    %esi
    1af0:	47                   	inc    %edi
    1af1:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
    1af5:	39 f8                	cmp    %edi,%eax
    1af7:	7f e2                	jg     1adb <read_super+0x157>
    1af9:	0f b7 53 04          	movzwl 0x4(%ebx),%edx
    1afd:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
    1b01:	8d 44 02 02          	lea    0x2(%edx,%eax,1),%eax
    1b05:	39 f0                	cmp    %esi,%eax
    1b07:	74 41                	je     1b4a <read_super+0x1c6>
    1b09:	be 00 00 00 00       	mov    $0x0,%esi
    1b0e:	8b 44 b3 14          	mov    0x14(%ebx,%esi,4),%eax
    1b12:	89 04 24             	mov    %eax,(%esp)
    1b15:	e8 fc ff ff ff       	call   1b16 <read_super+0x192>
    1b1a:	46                   	inc    %esi
    1b1b:	83 fe 08             	cmp    $0x8,%esi
    1b1e:	75 ee                	jne    1b0e <read_super+0x18a>
    1b20:	66 be 00 00          	mov    $0x0,%si
    1b24:	8b 44 b3 34          	mov    0x34(%ebx,%esi,4),%eax
    1b28:	89 04 24             	mov    %eax,(%esp)
    1b2b:	e8 fc ff ff ff       	call   1b2c <read_super+0x1a8>
    1b30:	46                   	inc    %esi
    1b31:	83 fe 08             	cmp    $0x8,%esi
    1b34:	75 ee                	jne    1b24 <read_super+0x1a0>
    1b36:	66 c7 43 54 00 00    	movw   $0x0,0x54(%ebx)
    1b3c:	89 d8                	mov    %ebx,%eax
    1b3e:	e8 c4 fd ff ff       	call   1907 <free_super>
    1b43:	b8 00 00 00 00       	mov    $0x0,%eax
    1b48:	eb 27                	jmp    1b71 <read_super+0x1ed>
    1b4a:	8b 43 14             	mov    0x14(%ebx),%eax
    1b4d:	8b 00                	mov    (%eax),%eax
    1b4f:	80 08 01             	orb    $0x1,(%eax)
    1b52:	8b 43 34             	mov    0x34(%ebx),%eax
    1b55:	8b 00                	mov    (%eax),%eax
    1b57:	80 08 01             	orb    $0x1,(%eax)
    1b5a:	89 d8                	mov    %ebx,%eax
    1b5c:	e8 a6 fd ff ff       	call   1907 <free_super>
    1b61:	89 d8                	mov    %ebx,%eax
    1b63:	eb 0c                	jmp    1b71 <read_super+0x1ed>
    1b65:	b8 00 00 00 00       	mov    $0x0,%eax
    1b6a:	eb 05                	jmp    1b71 <read_super+0x1ed>
    1b6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b71:	83 c4 1c             	add    $0x1c,%esp
    1b74:	5b                   	pop    %ebx
    1b75:	5e                   	pop    %esi
    1b76:	5f                   	pop    %edi
    1b77:	5d                   	pop    %ebp
    1b78:	c3                   	ret    

00001b79 <put_super>:
    1b79:	56                   	push   %esi
    1b7a:	53                   	push   %ebx
    1b7b:	83 ec 14             	sub    $0x14,%esp
    1b7e:	8b 44 24 20          	mov    0x20(%esp),%eax
    1b82:	3b 05 00 00 00 00    	cmp    0x0,%eax
    1b88:	75 0e                	jne    1b98 <put_super+0x1f>
    1b8a:	c7 04 24 8c 00 00 00 	movl   $0x8c,(%esp)
    1b91:	e8 fc ff ff ff       	call   1b92 <put_super+0x19>
    1b96:	eb 79                	jmp    1c11 <put_super+0x98>
    1b98:	89 04 24             	mov    %eax,(%esp)
    1b9b:	e8 fc ff ff ff       	call   1b9c <put_super+0x23>
    1ba0:	89 c3                	mov    %eax,%ebx
    1ba2:	85 c0                	test   %eax,%eax
    1ba4:	74 6b                	je     1c11 <put_super+0x98>
    1ba6:	83 78 5c 00          	cmpl   $0x0,0x5c(%eax)
    1baa:	74 0e                	je     1bba <put_super+0x41>
    1bac:	c7 04 24 bc 00 00 00 	movl   $0xbc,(%esp)
    1bb3:	e8 fc ff ff ff       	call   1bb4 <put_super+0x3b>
    1bb8:	eb 57                	jmp    1c11 <put_super+0x98>
    1bba:	fa                   	cli    
    1bbb:	80 78 68 00          	cmpb   $0x0,0x68(%eax)
    1bbf:	74 11                	je     1bd2 <put_super+0x59>
    1bc1:	8d 70 64             	lea    0x64(%eax),%esi
    1bc4:	89 34 24             	mov    %esi,(%esp)
    1bc7:	e8 fc ff ff ff       	call   1bc8 <put_super+0x4f>
    1bcc:	80 7b 68 00          	cmpb   $0x0,0x68(%ebx)
    1bd0:	75 f2                	jne    1bc4 <put_super+0x4b>
    1bd2:	c6 43 68 01          	movb   $0x1,0x68(%ebx)
    1bd6:	fb                   	sti    
    1bd7:	66 c7 43 54 00 00    	movw   $0x0,0x54(%ebx)
    1bdd:	be 00 00 00 00       	mov    $0x0,%esi
    1be2:	8b 44 b3 14          	mov    0x14(%ebx,%esi,4),%eax
    1be6:	89 04 24             	mov    %eax,(%esp)
    1be9:	e8 fc ff ff ff       	call   1bea <put_super+0x71>
    1bee:	46                   	inc    %esi
    1bef:	83 fe 08             	cmp    $0x8,%esi
    1bf2:	75 ee                	jne    1be2 <put_super+0x69>
    1bf4:	66 be 00 00          	mov    $0x0,%si
    1bf8:	8b 44 b3 34          	mov    0x34(%ebx,%esi,4),%eax
    1bfc:	89 04 24             	mov    %eax,(%esp)
    1bff:	e8 fc ff ff ff       	call   1c00 <put_super+0x87>
    1c04:	46                   	inc    %esi
    1c05:	83 fe 08             	cmp    $0x8,%esi
    1c08:	75 ee                	jne    1bf8 <put_super+0x7f>
    1c0a:	89 d8                	mov    %ebx,%eax
    1c0c:	e8 f6 fc ff ff       	call   1907 <free_super>
    1c11:	83 c4 14             	add    $0x14,%esp
    1c14:	5b                   	pop    %ebx
    1c15:	5e                   	pop    %esi
    1c16:	c3                   	ret    

00001c17 <sys_umount>:
    1c17:	56                   	push   %esi
    1c18:	53                   	push   %ebx
    1c19:	83 ec 14             	sub    $0x14,%esp
    1c1c:	8b 44 24 20          	mov    0x20(%esp),%eax
    1c20:	89 04 24             	mov    %eax,(%esp)
    1c23:	e8 fc ff ff ff       	call   1c24 <sys_umount+0xd>
    1c28:	85 c0                	test   %eax,%eax
    1c2a:	0f 84 c9 00 00 00    	je     1cf9 <sys_umount+0xe2>
    1c30:	0f b7 58 0e          	movzwl 0xe(%eax),%ebx
    1c34:	8b 10                	mov    (%eax),%edx
    1c36:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    1c3c:	66 81 fa 00 60       	cmp    $0x6000,%dx
    1c41:	74 12                	je     1c55 <sys_umount+0x3e>
    1c43:	89 04 24             	mov    %eax,(%esp)
    1c46:	e8 fc ff ff ff       	call   1c47 <sys_umount+0x30>
    1c4b:	b8 f1 ff ff ff       	mov    $0xfffffff1,%eax
    1c50:	e9 c5 00 00 00       	jmp    1d1a <sys_umount+0x103>
    1c55:	89 04 24             	mov    %eax,(%esp)
    1c58:	e8 fc ff ff ff       	call   1c59 <sys_umount+0x42>
    1c5d:	3b 1d 00 00 00 00    	cmp    0x0,%ebx
    1c63:	0f 84 97 00 00 00    	je     1d00 <sys_umount+0xe9>
    1c69:	89 1c 24             	mov    %ebx,(%esp)
    1c6c:	e8 fc ff ff ff       	call   1c6d <sys_umount+0x56>
    1c71:	89 c6                	mov    %eax,%esi
    1c73:	85 c0                	test   %eax,%eax
    1c75:	0f 84 8c 00 00 00    	je     1d07 <sys_umount+0xf0>
    1c7b:	8b 40 5c             	mov    0x5c(%eax),%eax
    1c7e:	85 c0                	test   %eax,%eax
    1c80:	0f 84 88 00 00 00    	je     1d0e <sys_umount+0xf7>
    1c86:	80 78 35 00          	cmpb   $0x0,0x35(%eax)
    1c8a:	75 0c                	jne    1c98 <sys_umount+0x81>
    1c8c:	c7 04 24 2b 01 00 00 	movl   $0x12b,(%esp)
    1c93:	e8 fc ff ff ff       	call   1c94 <sys_umount+0x7d>
    1c98:	ba 00 00 00 00       	mov    $0x0,%edx
    1c9d:	0f b7 4a 2c          	movzwl 0x2c(%edx),%ecx
    1ca1:	39 d9                	cmp    %ebx,%ecx
    1ca3:	75 07                	jne    1cac <sys_umount+0x95>
    1ca5:	66 83 7a 30 00       	cmpw   $0x0,0x30(%edx)
    1caa:	75 69                	jne    1d15 <sys_umount+0xfe>
    1cac:	83 c2 38             	add    $0x38,%edx
    1caf:	81 fa 00 07 00 00    	cmp    $0x700,%edx
    1cb5:	72 e6                	jb     1c9d <sys_umount+0x86>
    1cb7:	8b 46 5c             	mov    0x5c(%esi),%eax
    1cba:	c6 40 35 00          	movb   $0x0,0x35(%eax)
    1cbe:	8b 46 5c             	mov    0x5c(%esi),%eax
    1cc1:	89 04 24             	mov    %eax,(%esp)
    1cc4:	e8 fc ff ff ff       	call   1cc5 <sys_umount+0xae>
    1cc9:	c7 46 5c 00 00 00 00 	movl   $0x0,0x5c(%esi)
    1cd0:	8b 46 58             	mov    0x58(%esi),%eax
    1cd3:	89 04 24             	mov    %eax,(%esp)
    1cd6:	e8 fc ff ff ff       	call   1cd7 <sys_umount+0xc0>
    1cdb:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
    1ce2:	89 1c 24             	mov    %ebx,(%esp)
    1ce5:	e8 fc ff ff ff       	call   1ce6 <sys_umount+0xcf>
    1cea:	89 1c 24             	mov    %ebx,(%esp)
    1ced:	e8 fc ff ff ff       	call   1cee <sys_umount+0xd7>
    1cf2:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf7:	eb 21                	jmp    1d1a <sys_umount+0x103>
    1cf9:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    1cfe:	eb 1a                	jmp    1d1a <sys_umount+0x103>
    1d00:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1d05:	eb 13                	jmp    1d1a <sys_umount+0x103>
    1d07:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    1d0c:	eb 0c                	jmp    1d1a <sys_umount+0x103>
    1d0e:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    1d13:	eb 05                	jmp    1d1a <sys_umount+0x103>
    1d15:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1d1a:	83 c4 14             	add    $0x14,%esp
    1d1d:	5b                   	pop    %ebx
    1d1e:	5e                   	pop    %esi
    1d1f:	c3                   	ret    

00001d20 <sys_mount>:
    1d20:	56                   	push   %esi
    1d21:	53                   	push   %ebx
    1d22:	83 ec 14             	sub    $0x14,%esp
    1d25:	8b 44 24 20          	mov    0x20(%esp),%eax
    1d29:	89 04 24             	mov    %eax,(%esp)
    1d2c:	e8 fc ff ff ff       	call   1d2d <sys_mount+0xd>
    1d31:	85 c0                	test   %eax,%eax
    1d33:	0f 84 d2 00 00 00    	je     1e0b <sys_mount+0xeb>
    1d39:	0f b7 70 0e          	movzwl 0xe(%eax),%esi
    1d3d:	8b 08                	mov    (%eax),%ecx
    1d3f:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
    1d45:	66 81 f9 00 60       	cmp    $0x6000,%cx
    1d4a:	74 12                	je     1d5e <sys_mount+0x3e>
    1d4c:	89 04 24             	mov    %eax,(%esp)
    1d4f:	e8 fc ff ff ff       	call   1d50 <sys_mount+0x30>
    1d54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1d59:	e9 b9 00 00 00       	jmp    1e17 <sys_mount+0xf7>
    1d5e:	89 04 24             	mov    %eax,(%esp)
    1d61:	e8 fc ff ff ff       	call   1d62 <sys_mount+0x42>
    1d66:	8b 44 24 24          	mov    0x24(%esp),%eax
    1d6a:	89 04 24             	mov    %eax,(%esp)
    1d6d:	e8 fc ff ff ff       	call   1d6e <sys_mount+0x4e>
    1d72:	89 c3                	mov    %eax,%ebx
    1d74:	85 c0                	test   %eax,%eax
    1d76:	0f 84 96 00 00 00    	je     1e12 <sys_mount+0xf2>
    1d7c:	66 83 78 30 01       	cmpw   $0x1,0x30(%eax)
    1d81:	75 07                	jne    1d8a <sys_mount+0x6a>
    1d83:	66 83 78 2e 01       	cmpw   $0x1,0x2e(%eax)
    1d88:	75 0f                	jne    1d99 <sys_mount+0x79>
    1d8a:	89 1c 24             	mov    %ebx,(%esp)
    1d8d:	e8 fc ff ff ff       	call   1d8e <sys_mount+0x6e>
    1d92:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1d97:	eb 7e                	jmp    1e17 <sys_mount+0xf7>
    1d99:	8b 00                	mov    (%eax),%eax
    1d9b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    1da0:	66 3d 00 40          	cmp    $0x4000,%ax
    1da4:	74 0f                	je     1db5 <sys_mount+0x95>
    1da6:	89 1c 24             	mov    %ebx,(%esp)
    1da9:	e8 fc ff ff ff       	call   1daa <sys_mount+0x8a>
    1dae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1db3:	eb 62                	jmp    1e17 <sys_mount+0xf7>
    1db5:	89 f0                	mov    %esi,%eax
    1db7:	e8 c8 fb ff ff       	call   1984 <read_super>
    1dbc:	85 c0                	test   %eax,%eax
    1dbe:	75 0f                	jne    1dcf <sys_mount+0xaf>
    1dc0:	89 1c 24             	mov    %ebx,(%esp)
    1dc3:	e8 fc ff ff ff       	call   1dc4 <sys_mount+0xa4>
    1dc8:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1dcd:	eb 48                	jmp    1e17 <sys_mount+0xf7>
    1dcf:	83 78 5c 00          	cmpl   $0x0,0x5c(%eax)
    1dd3:	74 0f                	je     1de4 <sys_mount+0xc4>
    1dd5:	89 1c 24             	mov    %ebx,(%esp)
    1dd8:	e8 fc ff ff ff       	call   1dd9 <sys_mount+0xb9>
    1ddd:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1de2:	eb 33                	jmp    1e17 <sys_mount+0xf7>
    1de4:	80 7b 35 00          	cmpb   $0x0,0x35(%ebx)
    1de8:	74 0f                	je     1df9 <sys_mount+0xd9>
    1dea:	89 1c 24             	mov    %ebx,(%esp)
    1ded:	e8 fc ff ff ff       	call   1dee <sys_mount+0xce>
    1df2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1df7:	eb 1e                	jmp    1e17 <sys_mount+0xf7>
    1df9:	89 58 5c             	mov    %ebx,0x5c(%eax)
    1dfc:	c6 43 35 01          	movb   $0x1,0x35(%ebx)
    1e00:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    1e04:	b8 00 00 00 00       	mov    $0x0,%eax
    1e09:	eb 0c                	jmp    1e17 <sys_mount+0xf7>
    1e0b:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    1e10:	eb 05                	jmp    1e17 <sys_mount+0xf7>
    1e12:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    1e17:	83 c4 14             	add    $0x14,%esp
    1e1a:	5b                   	pop    %ebx
    1e1b:	5e                   	pop    %esi
    1e1c:	c3                   	ret    

00001e1d <mount_root>:
    1e1d:	b8 04 00 00 00       	mov    $0x4,%eax
    1e22:	ba 04 04 00 00       	mov    $0x404,%edx
    1e27:	66 c7 00 00 00       	movw   $0x0,(%eax)
    1e2c:	83 c0 10             	add    $0x10,%eax
    1e2f:	39 d0                	cmp    %edx,%eax
    1e31:	75 f4                	jne    1e27 <mount_root+0xa>
    1e33:	55                   	push   %ebp
    1e34:	57                   	push   %edi
    1e35:	56                   	push   %esi
    1e36:	53                   	push   %ebx
    1e37:	83 ec 1c             	sub    $0x1c,%esp
    1e3a:	a1 00 00 00 00       	mov    0x0,%eax
    1e3f:	c1 e8 08             	shr    $0x8,%eax
    1e42:	83 f8 02             	cmp    $0x2,%eax
    1e45:	0f 85 22 01 00 00    	jne    1f6d <mount_root+0x150>
    1e4b:	c7 04 24 e0 00 00 00 	movl   $0xe0,(%esp)
    1e52:	e8 fc ff ff ff       	call   1e53 <mount_root+0x36>
    1e57:	e8 fc ff ff ff       	call   1e58 <mount_root+0x3b>
    1e5c:	e9 0c 01 00 00       	jmp    1f6d <mount_root+0x150>
    1e61:	66 c7 40 54 00 00    	movw   $0x0,0x54(%eax)
    1e67:	c6 40 68 00          	movb   $0x0,0x68(%eax)
    1e6b:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
    1e72:	83 c0 6c             	add    $0x6c,%eax
    1e75:	3d 60 03 00 00       	cmp    $0x360,%eax
    1e7a:	75 e5                	jne    1e61 <mount_root+0x44>
    1e7c:	a1 00 00 00 00       	mov    0x0,%eax
    1e81:	e8 fe fa ff ff       	call   1984 <read_super>
    1e86:	89 c3                	mov    %eax,%ebx
    1e88:	85 c0                	test   %eax,%eax
    1e8a:	75 0c                	jne    1e98 <mount_root+0x7b>
    1e8c:	c7 04 24 48 01 00 00 	movl   $0x148,(%esp)
    1e93:	e8 fc ff ff ff       	call   1e94 <mount_root+0x77>
    1e98:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    1e9f:	00 
    1ea0:	a1 00 00 00 00       	mov    0x0,%eax
    1ea5:	89 04 24             	mov    %eax,(%esp)
    1ea8:	e8 fc ff ff ff       	call   1ea9 <mount_root+0x8c>
    1ead:	89 c6                	mov    %eax,%esi
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	75 0c                	jne    1ebf <mount_root+0xa2>
    1eb3:	c7 04 24 5d 01 00 00 	movl   $0x15d,(%esp)
    1eba:	e8 fc ff ff ff       	call   1ebb <mount_root+0x9e>
    1ebf:	66 83 46 30 03       	addw   $0x3,0x30(%esi)
    1ec4:	89 73 5c             	mov    %esi,0x5c(%ebx)
    1ec7:	89 73 58             	mov    %esi,0x58(%ebx)
    1eca:	a1 00 00 00 00       	mov    0x0,%eax
    1ecf:	89 b0 70 02 00 00    	mov    %esi,0x270(%eax)
    1ed5:	89 b0 74 02 00 00    	mov    %esi,0x274(%eax)
    1edb:	0f b7 6b 02          	movzwl 0x2(%ebx),%ebp
    1edf:	89 ea                	mov    %ebp,%edx
    1ee1:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ee6:	eb 24                	jmp    1f0c <mount_root+0xef>
    1ee8:	89 d6                	mov    %edx,%esi
    1eea:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1ef0:	89 d0                	mov    %edx,%eax
    1ef2:	c1 f8 0d             	sar    $0xd,%eax
    1ef5:	8b 44 83 34          	mov    0x34(%ebx,%eax,4),%eax
    1ef9:	8b 38                	mov    (%eax),%edi
    1efb:	b8 00 00 00 00       	mov    $0x0,%eax
    1f00:	0f a3 37             	bt     %esi,(%edi)
    1f03:	0f 92 c0             	setb   %al
    1f06:	83 f8 01             	cmp    $0x1,%eax
    1f09:	83 d1 00             	adc    $0x0,%ecx
    1f0c:	4a                   	dec    %edx
    1f0d:	79 d9                	jns    1ee8 <mount_root+0xcb>
    1f0f:	89 6c 24 08          	mov    %ebp,0x8(%esp)
    1f13:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    1f17:	c7 04 24 78 01 00 00 	movl   $0x178,(%esp)
    1f1e:	e8 fc ff ff ff       	call   1f1f <mount_root+0x102>
    1f23:	0f b7 2b             	movzwl (%ebx),%ebp
    1f26:	8d 55 01             	lea    0x1(%ebp),%edx
    1f29:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f2e:	eb 24                	jmp    1f54 <mount_root+0x137>
    1f30:	89 d6                	mov    %edx,%esi
    1f32:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1f38:	89 d0                	mov    %edx,%eax
    1f3a:	c1 f8 0d             	sar    $0xd,%eax
    1f3d:	8b 44 83 14          	mov    0x14(%ebx,%eax,4),%eax
    1f41:	8b 38                	mov    (%eax),%edi
    1f43:	b8 00 00 00 00       	mov    $0x0,%eax
    1f48:	0f a3 37             	bt     %esi,(%edi)
    1f4b:	0f 92 c0             	setb   %al
    1f4e:	83 f8 01             	cmp    $0x1,%eax
    1f51:	83 d1 00             	adc    $0x0,%ecx
    1f54:	4a                   	dec    %edx
    1f55:	79 d9                	jns    1f30 <mount_root+0x113>
    1f57:	89 6c 24 08          	mov    %ebp,0x8(%esp)
    1f5b:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    1f5f:	c7 04 24 8c 01 00 00 	movl   $0x18c,(%esp)
    1f66:	e8 fc ff ff ff       	call   1f67 <mount_root+0x14a>
    1f6b:	eb 0a                	jmp    1f77 <mount_root+0x15a>
    1f6d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f72:	e9 ea fe ff ff       	jmp    1e61 <mount_root+0x44>
    1f77:	83 c4 1c             	add    $0x1c,%esp
    1f7a:	5b                   	pop    %ebx
    1f7b:	5e                   	pop    %esi
    1f7c:	5f                   	pop    %edi
    1f7d:	5d                   	pop    %ebp
    1f7e:	c3                   	ret    

00001f7f <block_write>:
    1f7f:	55                   	push   %ebp
    1f80:	57                   	push   %edi
    1f81:	56                   	push   %esi
    1f82:	53                   	push   %ebx
    1f83:	83 ec 2c             	sub    $0x2c,%esp
    1f86:	8b 5c 24 48          	mov    0x48(%esp),%ebx
    1f8a:	8b 44 24 44          	mov    0x44(%esp),%eax
    1f8e:	8b 28                	mov    (%eax),%ebp
    1f90:	89 ef                	mov    %ebp,%edi
    1f92:	c1 ff 0a             	sar    $0xa,%edi
    1f95:	81 e5 ff 03 00 00    	and    $0x3ff,%ebp
    1f9b:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%esp)
    1fa0:	0f 8e b7 00 00 00    	jle    205d <block_write+0xde>
    1fa6:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
    1fad:	00 
    1fae:	b8 00 04 00 00       	mov    $0x400,%eax
    1fb3:	29 e8                	sub    %ebp,%eax
    1fb5:	89 c6                	mov    %eax,%esi
    1fb7:	3b 44 24 4c          	cmp    0x4c(%esp),%eax
    1fbb:	7e 04                	jle    1fc1 <block_write+0x42>
    1fbd:	8b 74 24 4c          	mov    0x4c(%esp),%esi
    1fc1:	81 fe 00 04 00 00    	cmp    $0x400,%esi
    1fc7:	75 12                	jne    1fdb <block_write+0x5c>
    1fc9:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1fcd:	8b 44 24 40          	mov    0x40(%esp),%eax
    1fd1:	89 04 24             	mov    %eax,(%esp)
    1fd4:	e8 fc ff ff ff       	call   1fd5 <block_write+0x56>
    1fd9:	eb 26                	jmp    2001 <block_write+0x82>
    1fdb:	c7 44 24 10 ff ff ff 	movl   $0xffffffff,0x10(%esp)
    1fe2:	ff 
    1fe3:	8d 47 02             	lea    0x2(%edi),%eax
    1fe6:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1fea:	8d 47 01             	lea    0x1(%edi),%eax
    1fed:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ff1:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1ff5:	8b 44 24 40          	mov    0x40(%esp),%eax
    1ff9:	89 04 24             	mov    %eax,(%esp)
    1ffc:	e8 fc ff ff ff       	call   1ffd <block_write+0x7e>
    2001:	47                   	inc    %edi
    2002:	85 c0                	test   %eax,%eax
    2004:	75 0e                	jne    2014 <block_write+0x95>
    2006:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
    200b:	75 57                	jne    2064 <block_write+0xe5>
    200d:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
    2012:	eb 5a                	jmp    206e <block_write+0xef>
    2014:	03 28                	add    (%eax),%ebp
    2016:	8b 4c 24 44          	mov    0x44(%esp),%ecx
    201a:	01 31                	add    %esi,(%ecx)
    201c:	01 74 24 1c          	add    %esi,0x1c(%esp)
    2020:	29 74 24 4c          	sub    %esi,0x4c(%esp)
    2024:	85 f6                	test   %esi,%esi
    2026:	7e 14                	jle    203c <block_write+0xbd>
    2028:	01 de                	add    %ebx,%esi
    202a:	45                   	inc    %ebp
    202b:	8d 53 01             	lea    0x1(%ebx),%edx
    202e:	64 8a 0b             	mov    %fs:(%ebx),%cl
    2031:	88 4d ff             	mov    %cl,-0x1(%ebp)
    2034:	39 f2                	cmp    %esi,%edx
    2036:	74 06                	je     203e <block_write+0xbf>
    2038:	89 d3                	mov    %edx,%ebx
    203a:	eb ee                	jmp    202a <block_write+0xab>
    203c:	89 de                	mov    %ebx,%esi
    203e:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    2042:	89 04 24             	mov    %eax,(%esp)
    2045:	e8 fc ff ff ff       	call   2046 <block_write+0xc7>
    204a:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%esp)
    204f:	7e 19                	jle    206a <block_write+0xeb>
    2051:	bd 00 00 00 00       	mov    $0x0,%ebp
    2056:	89 f3                	mov    %esi,%ebx
    2058:	e9 51 ff ff ff       	jmp    1fae <block_write+0x2f>
    205d:	b8 00 00 00 00       	mov    $0x0,%eax
    2062:	eb 0a                	jmp    206e <block_write+0xef>
    2064:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    2068:	eb 04                	jmp    206e <block_write+0xef>
    206a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    206e:	83 c4 2c             	add    $0x2c,%esp
    2071:	5b                   	pop    %ebx
    2072:	5e                   	pop    %esi
    2073:	5f                   	pop    %edi
    2074:	5d                   	pop    %ebp
    2075:	c3                   	ret    

00002076 <block_read>:
    2076:	55                   	push   %ebp
    2077:	57                   	push   %edi
    2078:	56                   	push   %esi
    2079:	53                   	push   %ebx
    207a:	83 ec 2c             	sub    $0x2c,%esp
    207d:	8b 5c 24 48          	mov    0x48(%esp),%ebx
    2081:	8b 6c 24 4c          	mov    0x4c(%esp),%ebp
    2085:	8b 44 24 44          	mov    0x44(%esp),%eax
    2089:	8b 38                	mov    (%eax),%edi
    208b:	89 f8                	mov    %edi,%eax
    208d:	c1 e8 0a             	shr    $0xa,%eax
    2090:	81 e7 ff 03 00 00    	and    $0x3ff,%edi
    2096:	85 ed                	test   %ebp,%ebp
    2098:	0f 8e 97 00 00 00    	jle    2135 <block_read+0xbf>
    209e:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
    20a5:	00 
    20a6:	ba 00 04 00 00       	mov    $0x400,%edx
    20ab:	29 fa                	sub    %edi,%edx
    20ad:	89 d6                	mov    %edx,%esi
    20af:	39 ea                	cmp    %ebp,%edx
    20b1:	7e 02                	jle    20b5 <block_read+0x3f>
    20b3:	89 ee                	mov    %ebp,%esi
    20b5:	8d 48 01             	lea    0x1(%eax),%ecx
    20b8:	89 4c 24 18          	mov    %ecx,0x18(%esp)
    20bc:	c7 44 24 10 ff ff ff 	movl   $0xffffffff,0x10(%esp)
    20c3:	ff 
    20c4:	8d 50 02             	lea    0x2(%eax),%edx
    20c7:	89 54 24 0c          	mov    %edx,0xc(%esp)
    20cb:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    20cf:	89 44 24 04          	mov    %eax,0x4(%esp)
    20d3:	8b 44 24 40          	mov    0x40(%esp),%eax
    20d7:	89 04 24             	mov    %eax,(%esp)
    20da:	e8 fc ff ff ff       	call   20db <block_read+0x65>
    20df:	85 c0                	test   %eax,%eax
    20e1:	75 0e                	jne    20f1 <block_read+0x7b>
    20e3:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
    20e8:	75 52                	jne    213c <block_read+0xc6>
    20ea:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
    20ef:	eb 55                	jmp    2146 <block_read+0xd0>
    20f1:	03 38                	add    (%eax),%edi
    20f3:	8b 4c 24 44          	mov    0x44(%esp),%ecx
    20f7:	01 31                	add    %esi,(%ecx)
    20f9:	01 74 24 1c          	add    %esi,0x1c(%esp)
    20fd:	29 f5                	sub    %esi,%ebp
    20ff:	85 f6                	test   %esi,%esi
    2101:	7e 14                	jle    2117 <block_read+0xa1>
    2103:	01 de                	add    %ebx,%esi
    2105:	8d 53 01             	lea    0x1(%ebx),%edx
    2108:	47                   	inc    %edi
    2109:	8a 4f ff             	mov    -0x1(%edi),%cl
    210c:	64 88 0b             	mov    %cl,%fs:(%ebx)
    210f:	39 f2                	cmp    %esi,%edx
    2111:	74 06                	je     2119 <block_read+0xa3>
    2113:	89 d3                	mov    %edx,%ebx
    2115:	eb ee                	jmp    2105 <block_read+0x8f>
    2117:	89 de                	mov    %ebx,%esi
    2119:	89 04 24             	mov    %eax,(%esp)
    211c:	e8 fc ff ff ff       	call   211d <block_read+0xa7>
    2121:	85 ed                	test   %ebp,%ebp
    2123:	7e 1d                	jle    2142 <block_read+0xcc>
    2125:	bf 00 00 00 00       	mov    $0x0,%edi
    212a:	8b 44 24 18          	mov    0x18(%esp),%eax
    212e:	89 f3                	mov    %esi,%ebx
    2130:	e9 71 ff ff ff       	jmp    20a6 <block_read+0x30>
    2135:	b8 00 00 00 00       	mov    $0x0,%eax
    213a:	eb 0a                	jmp    2146 <block_read+0xd0>
    213c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    2140:	eb 04                	jmp    2146 <block_read+0xd0>
    2142:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    2146:	83 c4 2c             	add    $0x2c,%esp
    2149:	5b                   	pop    %ebx
    214a:	5e                   	pop    %esi
    214b:	5f                   	pop    %edi
    214c:	5d                   	pop    %ebp
    214d:	c3                   	ret    

0000214e <rw_memory>:
    214e:	55                   	push   %ebp
    214f:	57                   	push   %edi
    2150:	56                   	push   %esi
    2151:	53                   	push   %ebx
    2152:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    2156:	83 7c 24 18 03       	cmpl   $0x3,0x18(%esp)
    215b:	74 09                	je     2166 <rw_memory+0x18>
    215d:	83 7c 24 18 04       	cmpl   $0x4,0x18(%esp)
    2162:	75 62                	jne    21c6 <rw_memory+0x78>
    2164:	eb 0b                	jmp    2171 <rw_memory+0x23>
    2166:	85 db                	test   %ebx,%ebx
    2168:	75 63                	jne    21cd <rw_memory+0x7f>
    216a:	b8 00 00 00 00       	mov    $0x0,%eax
    216f:	eb 60                	jmp    21d1 <rw_memory+0x83>
    2171:	8b 44 24 24          	mov    0x24(%esp),%eax
    2175:	8b 28                	mov    (%eax),%ebp
    2177:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
    217c:	7e 36                	jle    21b4 <rw_memory+0x66>
    217e:	81 fd ff ff 00 00    	cmp    $0xffff,%ebp
    2184:	7f 32                	jg     21b8 <rw_memory+0x6a>
    2186:	89 ef                	mov    %ebp,%edi
    2188:	03 7c 24 20          	add    0x20(%esp),%edi
    218c:	89 ea                	mov    %ebp,%edx
    218e:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    2192:	29 ee                	sub    %ebp,%esi
    2194:	8d 0c 16             	lea    (%esi,%edx,1),%ecx
    2197:	85 db                	test   %ebx,%ebx
    2199:	75 06                	jne    21a1 <rw_memory+0x53>
    219b:	ec                   	in     (%dx),%al
    219c:	64 88 01             	mov    %al,%fs:(%ecx)
    219f:	eb 04                	jmp    21a5 <rw_memory+0x57>
    21a1:	64 8a 01             	mov    %fs:(%ecx),%al
    21a4:	ee                   	out    %al,(%dx)
    21a5:	42                   	inc    %edx
    21a6:	39 fa                	cmp    %edi,%edx
    21a8:	74 10                	je     21ba <rw_memory+0x6c>
    21aa:	81 fa 00 00 01 00    	cmp    $0x10000,%edx
    21b0:	75 e2                	jne    2194 <rw_memory+0x46>
    21b2:	eb 06                	jmp    21ba <rw_memory+0x6c>
    21b4:	89 ea                	mov    %ebp,%edx
    21b6:	eb 02                	jmp    21ba <rw_memory+0x6c>
    21b8:	89 ea                	mov    %ebp,%edx
    21ba:	8b 44 24 24          	mov    0x24(%esp),%eax
    21be:	89 10                	mov    %edx,(%eax)
    21c0:	89 d0                	mov    %edx,%eax
    21c2:	29 e8                	sub    %ebp,%eax
    21c4:	eb 0b                	jmp    21d1 <rw_memory+0x83>
    21c6:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
    21cb:	eb 04                	jmp    21d1 <rw_memory+0x83>
    21cd:	8b 44 24 20          	mov    0x20(%esp),%eax
    21d1:	5b                   	pop    %ebx
    21d2:	5e                   	pop    %esi
    21d3:	5f                   	pop    %edi
    21d4:	5d                   	pop    %ebp
    21d5:	c3                   	ret    

000021d6 <rw_ttyx>:
    21d6:	83 ec 1c             	sub    $0x1c,%esp
    21d9:	8b 44 24 24          	mov    0x24(%esp),%eax
    21dd:	8b 54 24 28          	mov    0x28(%esp),%edx
    21e1:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
    21e5:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
    21ea:	75 12                	jne    21fe <rw_ttyx+0x28>
    21ec:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    21f0:	89 54 24 04          	mov    %edx,0x4(%esp)
    21f4:	89 04 24             	mov    %eax,(%esp)
    21f7:	e8 fc ff ff ff       	call   21f8 <rw_ttyx+0x22>
    21fc:	eb 10                	jmp    220e <rw_ttyx+0x38>
    21fe:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    2202:	89 54 24 04          	mov    %edx,0x4(%esp)
    2206:	89 04 24             	mov    %eax,(%esp)
    2209:	e8 fc ff ff ff       	call   220a <rw_ttyx+0x34>
    220e:	83 c4 1c             	add    $0x1c,%esp
    2211:	c3                   	ret    

00002212 <rw_tty>:
    2212:	a1 00 00 00 00       	mov    0x0,%eax
    2217:	8b 80 68 02 00 00    	mov    0x268(%eax),%eax
    221d:	85 c0                	test   %eax,%eax
    221f:	78 2d                	js     224e <rw_tty+0x3c>
    2221:	83 ec 2c             	sub    $0x2c,%esp
    2224:	8b 54 24 40          	mov    0x40(%esp),%edx
    2228:	89 54 24 10          	mov    %edx,0x10(%esp)
    222c:	8b 54 24 3c          	mov    0x3c(%esp),%edx
    2230:	89 54 24 0c          	mov    %edx,0xc(%esp)
    2234:	8b 54 24 38          	mov    0x38(%esp),%edx
    2238:	89 54 24 08          	mov    %edx,0x8(%esp)
    223c:	89 44 24 04          	mov    %eax,0x4(%esp)
    2240:	8b 44 24 30          	mov    0x30(%esp),%eax
    2244:	89 04 24             	mov    %eax,(%esp)
    2247:	e8 8a ff ff ff       	call   21d6 <rw_ttyx>
    224c:	eb 06                	jmp    2254 <rw_tty+0x42>
    224e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2253:	c3                   	ret    
    2254:	83 c4 2c             	add    $0x2c,%esp
    2257:	c3                   	ret    

00002258 <rw_char>:
    2258:	83 ec 2c             	sub    $0x2c,%esp
    225b:	8b 44 24 34          	mov    0x34(%esp),%eax
    225f:	c1 e8 08             	shr    $0x8,%eax
    2262:	83 f8 07             	cmp    $0x7,%eax
    2265:	77 37                	ja     229e <rw_char+0x46>
    2267:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
    226e:	85 c0                	test   %eax,%eax
    2270:	74 33                	je     22a5 <rw_char+0x4d>
    2272:	8b 54 24 40          	mov    0x40(%esp),%edx
    2276:	89 54 24 10          	mov    %edx,0x10(%esp)
    227a:	8b 54 24 3c          	mov    0x3c(%esp),%edx
    227e:	89 54 24 0c          	mov    %edx,0xc(%esp)
    2282:	8b 54 24 38          	mov    0x38(%esp),%edx
    2286:	89 54 24 08          	mov    %edx,0x8(%esp)
    228a:	0f b6 54 24 34       	movzbl 0x34(%esp),%edx
    228f:	89 54 24 04          	mov    %edx,0x4(%esp)
    2293:	8b 54 24 30          	mov    0x30(%esp),%edx
    2297:	89 14 24             	mov    %edx,(%esp)
    229a:	ff d0                	call   *%eax
    229c:	eb 0c                	jmp    22aa <rw_char+0x52>
    229e:	b8 ed ff ff ff       	mov    $0xffffffed,%eax
    22a3:	eb 05                	jmp    22aa <rw_char+0x52>
    22a5:	b8 ed ff ff ff       	mov    $0xffffffed,%eax
    22aa:	83 c4 2c             	add    $0x2c,%esp
    22ad:	c3                   	ret    

000022ae <file_read>:
    22ae:	55                   	push   %ebp
    22af:	57                   	push   %edi
    22b0:	56                   	push   %esi
    22b1:	53                   	push   %ebx
    22b2:	83 ec 1c             	sub    $0x1c,%esp
    22b5:	8b 5c 24 38          	mov    0x38(%esp),%ebx
    22b9:	83 7c 24 3c 00       	cmpl   $0x0,0x3c(%esp)
    22be:	0f 8e e0 00 00 00    	jle    23a4 <file_read+0xf6>
    22c4:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
    22c8:	8b 6c 24 34          	mov    0x34(%esp),%ebp
    22cc:	8b 45 0c             	mov    0xc(%ebp),%eax
    22cf:	85 c0                	test   %eax,%eax
    22d1:	79 05                	jns    22d8 <file_read+0x2a>
    22d3:	05 ff 03 00 00       	add    $0x3ff,%eax
    22d8:	c1 f8 0a             	sar    $0xa,%eax
    22db:	89 44 24 04          	mov    %eax,0x4(%esp)
    22df:	8b 44 24 30          	mov    0x30(%esp),%eax
    22e3:	89 04 24             	mov    %eax,(%esp)
    22e6:	e8 fc ff ff ff       	call   22e7 <file_read+0x39>
    22eb:	85 c0                	test   %eax,%eax
    22ed:	0f 84 c5 00 00 00    	je     23b8 <file_read+0x10a>
    22f3:	89 44 24 04          	mov    %eax,0x4(%esp)
    22f7:	8b 44 24 30          	mov    0x30(%esp),%eax
    22fb:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    22ff:	89 04 24             	mov    %eax,(%esp)
    2302:	e8 fc ff ff ff       	call   2303 <file_read+0x55>
    2307:	85 c0                	test   %eax,%eax
    2309:	0f 85 e2 00 00 00    	jne    23f1 <file_read+0x143>
    230f:	eb 5e                	jmp    236f <file_read+0xc1>
    2311:	89 d3                	mov    %edx,%ebx
    2313:	8d 53 01             	lea    0x1(%ebx),%edx
    2316:	41                   	inc    %ecx
    2317:	8a 41 ff             	mov    -0x1(%ecx),%al
    231a:	64 88 03             	mov    %al,%fs:(%ebx)
    231d:	39 f2                	cmp    %esi,%edx
    231f:	75 f0                	jne    2311 <file_read+0x63>
    2321:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2325:	eb 02                	jmp    2329 <file_read+0x7b>
    2327:	89 de                	mov    %ebx,%esi
    2329:	89 04 24             	mov    %eax,(%esp)
    232c:	e8 fc ff ff ff       	call   232d <file_read+0x7f>
    2331:	89 f3                	mov    %esi,%ebx
    2333:	eb 10                	jmp    2345 <file_read+0x97>
    2335:	89 c3                	mov    %eax,%ebx
    2337:	8d 43 01             	lea    0x1(%ebx),%eax
    233a:	b1 00                	mov    $0x0,%cl
    233c:	64 88 0b             	mov    %cl,%fs:(%ebx)
    233f:	39 d0                	cmp    %edx,%eax
    2341:	75 f2                	jne    2335 <file_read+0x87>
    2343:	89 d3                	mov    %edx,%ebx
    2345:	85 ff                	test   %edi,%edi
    2347:	75 83                	jne    22cc <file_read+0x1e>
    2349:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    234f:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    2354:	f7 e9                	imul   %ecx
    2356:	89 d0                	mov    %edx,%eax
    2358:	c1 f8 05             	sar    $0x5,%eax
    235b:	c1 f9 1f             	sar    $0x1f,%ecx
    235e:	29 c8                	sub    %ecx,%eax
    2360:	03 05 00 00 00 00    	add    0x0,%eax
    2366:	8b 74 24 30          	mov    0x30(%esp),%esi
    236a:	89 46 24             	mov    %eax,0x24(%esi)
    236d:	eb 2a                	jmp    2399 <file_read+0xeb>
    236f:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2375:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    237a:	f7 e9                	imul   %ecx
    237c:	89 d0                	mov    %edx,%eax
    237e:	c1 f8 05             	sar    $0x5,%eax
    2381:	c1 f9 1f             	sar    $0x1f,%ecx
    2384:	29 c8                	sub    %ecx,%eax
    2386:	03 05 00 00 00 00    	add    0x0,%eax
    238c:	8b 74 24 30          	mov    0x30(%esp),%esi
    2390:	89 46 24             	mov    %eax,0x24(%esi)
    2393:	39 7c 24 3c          	cmp    %edi,0x3c(%esp)
    2397:	74 15                	je     23ae <file_read+0x100>
    2399:	8b 44 24 3c          	mov    0x3c(%esp),%eax
    239d:	29 f8                	sub    %edi,%eax
    239f:	e9 99 00 00 00       	jmp    243d <file_read+0x18f>
    23a4:	b8 00 00 00 00       	mov    $0x0,%eax
    23a9:	e9 8f 00 00 00       	jmp    243d <file_read+0x18f>
    23ae:	b8 9d ff ff ff       	mov    $0xffffff9d,%eax
    23b3:	e9 85 00 00 00       	jmp    243d <file_read+0x18f>
    23b8:	8b 55 0c             	mov    0xc(%ebp),%edx
    23bb:	89 d0                	mov    %edx,%eax
    23bd:	25 ff 03 00 80       	and    $0x800003ff,%eax
    23c2:	79 07                	jns    23cb <file_read+0x11d>
    23c4:	48                   	dec    %eax
    23c5:	0d 00 fc ff ff       	or     $0xfffffc00,%eax
    23ca:	40                   	inc    %eax
    23cb:	b9 00 04 00 00       	mov    $0x400,%ecx
    23d0:	29 c1                	sub    %eax,%ecx
    23d2:	89 f8                	mov    %edi,%eax
    23d4:	39 cf                	cmp    %ecx,%edi
    23d6:	7e 02                	jle    23da <file_read+0x12c>
    23d8:	89 c8                	mov    %ecx,%eax
    23da:	01 c2                	add    %eax,%edx
    23dc:	89 55 0c             	mov    %edx,0xc(%ebp)
    23df:	29 c7                	sub    %eax,%edi
    23e1:	85 c0                	test   %eax,%eax
    23e3:	0f 8e 5c ff ff ff    	jle    2345 <file_read+0x97>
    23e9:	8d 14 03             	lea    (%ebx,%eax,1),%edx
    23ec:	e9 46 ff ff ff       	jmp    2337 <file_read+0x89>
    23f1:	8b 75 0c             	mov    0xc(%ebp),%esi
    23f4:	89 74 24 0c          	mov    %esi,0xc(%esp)
    23f8:	89 f2                	mov    %esi,%edx
    23fa:	81 e2 ff 03 00 80    	and    $0x800003ff,%edx
    2400:	79 08                	jns    240a <file_read+0x15c>
    2402:	4a                   	dec    %edx
    2403:	81 ca 00 fc ff ff    	or     $0xfffffc00,%edx
    2409:	42                   	inc    %edx
    240a:	89 d1                	mov    %edx,%ecx
    240c:	be 00 04 00 00       	mov    $0x400,%esi
    2411:	29 d6                	sub    %edx,%esi
    2413:	89 f2                	mov    %esi,%edx
    2415:	89 fe                	mov    %edi,%esi
    2417:	39 d7                	cmp    %edx,%edi
    2419:	7e 02                	jle    241d <file_read+0x16f>
    241b:	89 d6                	mov    %edx,%esi
    241d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    2421:	01 f2                	add    %esi,%edx
    2423:	89 55 0c             	mov    %edx,0xc(%ebp)
    2426:	29 f7                	sub    %esi,%edi
    2428:	03 08                	add    (%eax),%ecx
    242a:	85 f6                	test   %esi,%esi
    242c:	0f 8e f5 fe ff ff    	jle    2327 <file_read+0x79>
    2432:	01 de                	add    %ebx,%esi
    2434:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2438:	e9 d6 fe ff ff       	jmp    2313 <file_read+0x65>
    243d:	83 c4 1c             	add    $0x1c,%esp
    2440:	5b                   	pop    %ebx
    2441:	5e                   	pop    %esi
    2442:	5f                   	pop    %edi
    2443:	5d                   	pop    %ebp
    2444:	c3                   	ret    

00002445 <file_write>:
    2445:	55                   	push   %ebp
    2446:	57                   	push   %edi
    2447:	56                   	push   %esi
    2448:	53                   	push   %ebx
    2449:	83 ec 1c             	sub    $0x1c,%esp
    244c:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    2450:	8b 5c 24 38          	mov    0x38(%esp),%ebx
    2454:	8b 44 24 34          	mov    0x34(%esp),%eax
    2458:	f6 40 03 04          	testb  $0x4,0x3(%eax)
    245c:	74 05                	je     2463 <file_write+0x1e>
    245e:	8b 7d 04             	mov    0x4(%ebp),%edi
    2461:	eb 07                	jmp    246a <file_write+0x25>
    2463:	8b 44 24 34          	mov    0x34(%esp),%eax
    2467:	8b 78 0c             	mov    0xc(%eax),%edi
    246a:	83 7c 24 3c 00       	cmpl   $0x0,0x3c(%esp)
    246f:	0f 8e c3 00 00 00    	jle    2538 <file_write+0xf3>
    2475:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    247c:	00 
    247d:	89 f8                	mov    %edi,%eax
    247f:	85 ff                	test   %edi,%edi
    2481:	79 06                	jns    2489 <file_write+0x44>
    2483:	8d 87 ff 03 00 00    	lea    0x3ff(%edi),%eax
    2489:	c1 f8 0a             	sar    $0xa,%eax
    248c:	89 44 24 04          	mov    %eax,0x4(%esp)
    2490:	89 2c 24             	mov    %ebp,(%esp)
    2493:	e8 fc ff ff ff       	call   2494 <file_write+0x4f>
    2498:	85 c0                	test   %eax,%eax
    249a:	0f 84 a0 00 00 00    	je     2540 <file_write+0xfb>
    24a0:	89 44 24 04          	mov    %eax,0x4(%esp)
    24a4:	0f b7 45 2c          	movzwl 0x2c(%ebp),%eax
    24a8:	89 04 24             	mov    %eax,(%esp)
    24ab:	e8 fc ff ff ff       	call   24ac <file_write+0x67>
    24b0:	85 c0                	test   %eax,%eax
    24b2:	0f 84 88 00 00 00    	je     2540 <file_write+0xfb>
    24b8:	89 f9                	mov    %edi,%ecx
    24ba:	81 e1 ff 03 00 80    	and    $0x800003ff,%ecx
    24c0:	79 08                	jns    24ca <file_write+0x85>
    24c2:	49                   	dec    %ecx
    24c3:	81 c9 00 fc ff ff    	or     $0xfffffc00,%ecx
    24c9:	41                   	inc    %ecx
    24ca:	89 ca                	mov    %ecx,%edx
    24cc:	03 10                	add    (%eax),%edx
    24ce:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    24d2:	be 00 04 00 00       	mov    $0x400,%esi
    24d7:	29 ce                	sub    %ecx,%esi
    24d9:	89 f1                	mov    %esi,%ecx
    24db:	8b 74 24 3c          	mov    0x3c(%esp),%esi
    24df:	2b 74 24 08          	sub    0x8(%esp),%esi
    24e3:	89 74 24 0c          	mov    %esi,0xc(%esp)
    24e7:	89 ce                	mov    %ecx,%esi
    24e9:	3b 4c 24 0c          	cmp    0xc(%esp),%ecx
    24ed:	7e 04                	jle    24f3 <file_write+0xae>
    24ef:	8b 74 24 0c          	mov    0xc(%esp),%esi
    24f3:	01 f7                	add    %esi,%edi
    24f5:	3b 7d 04             	cmp    0x4(%ebp),%edi
    24f8:	76 07                	jbe    2501 <file_write+0xbc>
    24fa:	89 7d 04             	mov    %edi,0x4(%ebp)
    24fd:	c6 45 33 01          	movb   $0x1,0x33(%ebp)
    2501:	01 74 24 08          	add    %esi,0x8(%esp)
    2505:	85 f6                	test   %esi,%esi
    2507:	7e 14                	jle    251d <file_write+0xd8>
    2509:	01 de                	add    %ebx,%esi
    250b:	42                   	inc    %edx
    250c:	8d 4b 01             	lea    0x1(%ebx),%ecx
    250f:	64 8a 1b             	mov    %fs:(%ebx),%bl
    2512:	88 5a ff             	mov    %bl,-0x1(%edx)
    2515:	39 f1                	cmp    %esi,%ecx
    2517:	74 06                	je     251f <file_write+0xda>
    2519:	89 cb                	mov    %ecx,%ebx
    251b:	eb ee                	jmp    250b <file_write+0xc6>
    251d:	89 de                	mov    %ebx,%esi
    251f:	89 04 24             	mov    %eax,(%esp)
    2522:	e8 fc ff ff ff       	call   2523 <file_write+0xde>
    2527:	8b 44 24 08          	mov    0x8(%esp),%eax
    252b:	39 44 24 3c          	cmp    %eax,0x3c(%esp)
    252f:	7e 0f                	jle    2540 <file_write+0xfb>
    2531:	89 f3                	mov    %esi,%ebx
    2533:	e9 45 ff ff ff       	jmp    247d <file_write+0x38>
    2538:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    253f:	00 
    2540:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2546:	8b 1d 00 00 00 00    	mov    0x0,%ebx
    254c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    2551:	f7 e9                	imul   %ecx
    2553:	89 d0                	mov    %edx,%eax
    2555:	c1 f8 05             	sar    $0x5,%eax
    2558:	c1 f9 1f             	sar    $0x1f,%ecx
    255b:	29 c8                	sub    %ecx,%eax
    255d:	01 d8                	add    %ebx,%eax
    255f:	89 45 08             	mov    %eax,0x8(%ebp)
    2562:	8b 44 24 34          	mov    0x34(%esp),%eax
    2566:	f6 40 03 04          	testb  $0x4,0x3(%eax)
    256a:	75 1f                	jne    258b <file_write+0x146>
    256c:	89 78 0c             	mov    %edi,0xc(%eax)
    256f:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2575:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    257a:	f7 e9                	imul   %ecx
    257c:	89 d0                	mov    %edx,%eax
    257e:	c1 f8 05             	sar    $0x5,%eax
    2581:	c1 f9 1f             	sar    $0x1f,%ecx
    2584:	29 c8                	sub    %ecx,%eax
    2586:	01 c3                	add    %eax,%ebx
    2588:	89 5d 28             	mov    %ebx,0x28(%ebp)
    258b:	8b 7c 24 08          	mov    0x8(%esp),%edi
    258f:	89 f8                	mov    %edi,%eax
    2591:	85 ff                	test   %edi,%edi
    2593:	75 05                	jne    259a <file_write+0x155>
    2595:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    259a:	83 c4 1c             	add    $0x1c,%esp
    259d:	5b                   	pop    %ebx
    259e:	5e                   	pop    %esi
    259f:	5f                   	pop    %edi
    25a0:	5d                   	pop    %ebp
    25a1:	c3                   	ret    

000025a2 <cp_stat>:
    25a2:	56                   	push   %esi
    25a3:	53                   	push   %ebx
    25a4:	83 ec 34             	sub    $0x34,%esp
    25a7:	89 c6                	mov    %eax,%esi
    25a9:	89 d3                	mov    %edx,%ebx
    25ab:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
    25b2:	00 
    25b3:	89 14 24             	mov    %edx,(%esp)
    25b6:	e8 fc ff ff ff       	call   25b7 <cp_stat+0x15>
    25bb:	8b 46 2c             	mov    0x2c(%esi),%eax
    25be:	66 89 44 24 10       	mov    %ax,0x10(%esp)
    25c3:	66 8b 46 2e          	mov    0x2e(%esi),%ax
    25c7:	66 89 44 24 12       	mov    %ax,0x12(%esp)
    25cc:	8b 06                	mov    (%esi),%eax
    25ce:	66 89 44 24 14       	mov    %ax,0x14(%esp)
    25d3:	8a 46 0d             	mov    0xd(%esi),%al
    25d6:	88 44 24 16          	mov    %al,0x16(%esp)
    25da:	66 8b 46 02          	mov    0x2(%esi),%ax
    25de:	66 89 44 24 18       	mov    %ax,0x18(%esp)
    25e3:	8a 46 0c             	mov    0xc(%esi),%al
    25e6:	88 44 24 1a          	mov    %al,0x1a(%esp)
    25ea:	66 8b 46 0e          	mov    0xe(%esi),%ax
    25ee:	66 89 44 24 1c       	mov    %ax,0x1c(%esp)
    25f3:	8b 46 04             	mov    0x4(%esi),%eax
    25f6:	89 44 24 20          	mov    %eax,0x20(%esp)
    25fa:	8b 46 24             	mov    0x24(%esi),%eax
    25fd:	89 44 24 24          	mov    %eax,0x24(%esp)
    2601:	8b 46 08             	mov    0x8(%esi),%eax
    2604:	89 44 24 28          	mov    %eax,0x28(%esp)
    2608:	8b 46 28             	mov    0x28(%esi),%eax
    260b:	89 44 24 2c          	mov    %eax,0x2c(%esp)
    260f:	b9 00 00 00 00       	mov    $0x0,%ecx
    2614:	b8 00 00 00 00       	mov    $0x0,%eax
    2619:	8a 54 0c 10          	mov    0x10(%esp,%ecx,1),%dl
    261d:	64 88 14 0b          	mov    %dl,%fs:(%ebx,%ecx,1)
    2621:	40                   	inc    %eax
    2622:	89 c1                	mov    %eax,%ecx
    2624:	83 f8 20             	cmp    $0x20,%eax
    2627:	75 f0                	jne    2619 <cp_stat+0x77>
    2629:	83 c4 34             	add    $0x34,%esp
    262c:	5b                   	pop    %ebx
    262d:	5e                   	pop    %esi
    262e:	c3                   	ret    

0000262f <sys_stat>:
    262f:	53                   	push   %ebx
    2630:	83 ec 18             	sub    $0x18,%esp
    2633:	8b 44 24 20          	mov    0x20(%esp),%eax
    2637:	89 04 24             	mov    %eax,(%esp)
    263a:	e8 fc ff ff ff       	call   263b <sys_stat+0xc>
    263f:	89 c3                	mov    %eax,%ebx
    2641:	85 c0                	test   %eax,%eax
    2643:	74 18                	je     265d <sys_stat+0x2e>
    2645:	8b 54 24 24          	mov    0x24(%esp),%edx
    2649:	e8 54 ff ff ff       	call   25a2 <cp_stat>
    264e:	89 1c 24             	mov    %ebx,(%esp)
    2651:	e8 fc ff ff ff       	call   2652 <sys_stat+0x23>
    2656:	b8 00 00 00 00       	mov    $0x0,%eax
    265b:	eb 05                	jmp    2662 <sys_stat+0x33>
    265d:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    2662:	83 c4 18             	add    $0x18,%esp
    2665:	5b                   	pop    %ebx
    2666:	c3                   	ret    

00002667 <sys_fstat>:
    2667:	83 ec 0c             	sub    $0xc,%esp
    266a:	8b 44 24 10          	mov    0x10(%esp),%eax
    266e:	83 f8 13             	cmp    $0x13,%eax
    2671:	77 28                	ja     269b <sys_fstat+0x34>
    2673:	8b 15 00 00 00 00    	mov    0x0,%edx
    2679:	8b 84 82 80 02 00 00 	mov    0x280(%edx,%eax,4),%eax
    2680:	85 c0                	test   %eax,%eax
    2682:	74 1e                	je     26a2 <sys_fstat+0x3b>
    2684:	8b 40 08             	mov    0x8(%eax),%eax
    2687:	85 c0                	test   %eax,%eax
    2689:	74 1e                	je     26a9 <sys_fstat+0x42>
    268b:	8b 54 24 14          	mov    0x14(%esp),%edx
    268f:	e8 0e ff ff ff       	call   25a2 <cp_stat>
    2694:	b8 00 00 00 00       	mov    $0x0,%eax
    2699:	eb 13                	jmp    26ae <sys_fstat+0x47>
    269b:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    26a0:	eb 0c                	jmp    26ae <sys_fstat+0x47>
    26a2:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    26a7:	eb 05                	jmp    26ae <sys_fstat+0x47>
    26a9:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    26ae:	83 c4 0c             	add    $0xc,%esp
    26b1:	c3                   	ret    

000026b2 <copy_strings>:
    26b2:	55                   	push   %ebp
    26b3:	57                   	push   %edi
    26b4:	56                   	push   %esi
    26b5:	53                   	push   %ebx
    26b6:	83 ec 3c             	sub    $0x3c,%esp
    26b9:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
    26bd:	83 7c 24 50 00       	cmpl   $0x0,0x50(%esp)
    26c2:	0f 84 3b 01 00 00    	je     2803 <copy_strings+0x151>
    26c8:	89 c3                	mov    %eax,%ebx
    26ca:	66 8c d8             	mov    %ds,%ax
    26cd:	89 c1                	mov    %eax,%ecx
    26cf:	66 89 44 24 2a       	mov    %ax,0x2a(%esp)
    26d4:	66 8c e0             	mov    %fs,%ax
    26d7:	66 89 44 24 2e       	mov    %ax,0x2e(%esp)
    26dc:	66 89 44 24 2c       	mov    %ax,0x2c(%esp)
    26e1:	83 7c 24 54 02       	cmpl   $0x2,0x54(%esp)
    26e6:	74 16                	je     26fe <copy_strings+0x4c>
    26e8:	89 5c 24 20          	mov    %ebx,0x20(%esp)
    26ec:	8d 44 9a fc          	lea    -0x4(%edx,%ebx,4),%eax
    26f0:	89 44 24 24          	mov    %eax,0x24(%esp)
    26f4:	bd 00 00 00 00       	mov    $0x0,%ebp
    26f9:	e9 e6 00 00 00       	jmp    27e4 <copy_strings+0x132>
    26fe:	89 c8                	mov    %ecx,%eax
    2700:	8e e0                	mov    %eax,%fs
    2702:	eb e4                	jmp    26e8 <copy_strings+0x36>
    2704:	83 7c 24 54 01       	cmpl   $0x1,0x54(%esp)
    2709:	75 07                	jne    2712 <copy_strings+0x60>
    270b:	66 8b 44 24 2a       	mov    0x2a(%esp),%ax
    2710:	8e e0                	mov    %eax,%fs
    2712:	8b 44 24 24          	mov    0x24(%esp),%eax
    2716:	64 8b 00             	mov    %fs:(%eax),%eax
    2719:	89 c3                	mov    %eax,%ebx
    271b:	85 c0                	test   %eax,%eax
    271d:	75 0c                	jne    272b <copy_strings+0x79>
    271f:	c7 04 24 a0 01 00 00 	movl   $0x1a0,(%esp)
    2726:	e8 fc ff ff ff       	call   2727 <copy_strings+0x75>
    272b:	83 7c 24 54 01       	cmpl   $0x1,0x54(%esp)
    2730:	74 07                	je     2739 <copy_strings+0x87>
    2732:	b8 00 00 00 00       	mov    $0x0,%eax
    2737:	eb 08                	jmp    2741 <copy_strings+0x8f>
    2739:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    273d:	8e e0                	mov    %eax,%fs
    273f:	eb f1                	jmp    2732 <copy_strings+0x80>
    2741:	40                   	inc    %eax
    2742:	8d 4b 01             	lea    0x1(%ebx),%ecx
    2745:	64 8a 13             	mov    %fs:(%ebx),%dl
    2748:	84 d2                	test   %dl,%dl
    274a:	74 04                	je     2750 <copy_strings+0x9e>
    274c:	89 cb                	mov    %ecx,%ebx
    274e:	eb f1                	jmp    2741 <copy_strings+0x8f>
    2750:	89 44 24 14          	mov    %eax,0x14(%esp)
    2754:	89 4c 24 10          	mov    %ecx,0x10(%esp)
    2758:	85 c0                	test   %eax,%eax
    275a:	74 77                	je     27d3 <copy_strings+0x121>
    275c:	8b 5c 24 50          	mov    0x50(%esp),%ebx
    2760:	89 f2                	mov    %esi,%edx
    2762:	89 df                	mov    %ebx,%edi
    2764:	4f                   	dec    %edi
    2765:	89 fb                	mov    %edi,%ebx
    2767:	2b 5c 24 50          	sub    0x50(%esp),%ebx
    276b:	8b 44 24 10          	mov    0x10(%esp),%eax
    276f:	8d 34 18             	lea    (%eax,%ebx,1),%esi
    2772:	4d                   	dec    %ebp
    2773:	79 4a                	jns    27bf <copy_strings+0x10d>
    2775:	89 fd                	mov    %edi,%ebp
    2777:	81 e5 ff 0f 00 00    	and    $0xfff,%ebp
    277d:	83 7c 24 54 02       	cmpl   $0x2,0x54(%esp)
    2782:	75 06                	jne    278a <copy_strings+0xd8>
    2784:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    2788:	8e e0                	mov    %eax,%fs
    278a:	89 f8                	mov    %edi,%eax
    278c:	c1 e8 0c             	shr    $0xc,%eax
    278f:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
    2793:	8d 04 81             	lea    (%ecx,%eax,4),%eax
    2796:	89 44 24 18          	mov    %eax,0x18(%esp)
    279a:	8b 10                	mov    (%eax),%edx
    279c:	85 d2                	test   %edx,%edx
    279e:	75 11                	jne    27b1 <copy_strings+0xff>
    27a0:	e8 fc ff ff ff       	call   27a1 <copy_strings+0xef>
    27a5:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    27a9:	89 01                	mov    %eax,(%ecx)
    27ab:	89 c2                	mov    %eax,%edx
    27ad:	85 c0                	test   %eax,%eax
    27af:	74 59                	je     280a <copy_strings+0x158>
    27b1:	83 7c 24 54 02       	cmpl   $0x2,0x54(%esp)
    27b6:	75 07                	jne    27bf <copy_strings+0x10d>
    27b8:	66 8b 44 24 2a       	mov    0x2a(%esp),%ax
    27bd:	8e e0                	mov    %eax,%fs
    27bf:	64 8a 06             	mov    %fs:(%esi),%al
    27c2:	88 04 2a             	mov    %al,(%edx,%ebp,1)
    27c5:	03 5c 24 14          	add    0x14(%esp),%ebx
    27c9:	85 db                	test   %ebx,%ebx
    27cb:	75 97                	jne    2764 <copy_strings+0xb2>
    27cd:	89 d6                	mov    %edx,%esi
    27cf:	89 fb                	mov    %edi,%ebx
    27d1:	eb 04                	jmp    27d7 <copy_strings+0x125>
    27d3:	8b 5c 24 50          	mov    0x50(%esp),%ebx
    27d7:	ff 4c 24 20          	decl   0x20(%esp)
    27db:	83 6c 24 24 04       	subl   $0x4,0x24(%esp)
    27e0:	89 5c 24 50          	mov    %ebx,0x50(%esp)
    27e4:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
    27e9:	0f 8f 15 ff ff ff    	jg     2704 <copy_strings+0x52>
    27ef:	83 7c 24 54 02       	cmpl   $0x2,0x54(%esp)
    27f4:	75 1b                	jne    2811 <copy_strings+0x15f>
    27f6:	66 8b 44 24 2e       	mov    0x2e(%esp),%ax
    27fb:	8e e0                	mov    %eax,%fs
    27fd:	8b 44 24 50          	mov    0x50(%esp),%eax
    2801:	eb 12                	jmp    2815 <copy_strings+0x163>
    2803:	b8 00 00 00 00       	mov    $0x0,%eax
    2808:	eb 0b                	jmp    2815 <copy_strings+0x163>
    280a:	b8 00 00 00 00       	mov    $0x0,%eax
    280f:	eb 04                	jmp    2815 <copy_strings+0x163>
    2811:	8b 44 24 50          	mov    0x50(%esp),%eax
    2815:	83 c4 3c             	add    $0x3c,%esp
    2818:	5b                   	pop    %ebx
    2819:	5e                   	pop    %esi
    281a:	5f                   	pop    %edi
    281b:	5d                   	pop    %ebp
    281c:	c3                   	ret    

0000281d <do_execve>:
    281d:	55                   	push   %ebp
    281e:	57                   	push   %edi
    281f:	56                   	push   %esi
    2820:	53                   	push   %ebx
    2821:	81 ec dc 04 00 00    	sub    $0x4dc,%esp
    2827:	8b 84 24 f0 04 00 00 	mov    0x4f0(%esp),%eax
    282e:	66 83 78 04 0f       	cmpw   $0xf,0x4(%eax)
    2833:	0f 84 c2 07 00 00    	je     2ffb <do_execve+0x7de>
    2839:	c7 04 24 04 01 00 00 	movl   $0x104,(%esp)
    2840:	e8 fc ff ff ff       	call   2841 <do_execve+0x24>
    2845:	e9 b1 07 00 00       	jmp    2ffb <do_execve+0x7de>
    284a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    2850:	83 c0 04             	add    $0x4,%eax
    2853:	39 d8                	cmp    %ebx,%eax
    2855:	75 f3                	jne    284a <do_execve+0x2d>
    2857:	8b 84 24 f8 04 00 00 	mov    0x4f8(%esp),%eax
    285e:	89 04 24             	mov    %eax,(%esp)
    2861:	e8 fc ff ff ff       	call   2862 <do_execve+0x45>
    2866:	89 c5                	mov    %eax,%ebp
    2868:	85 c0                	test   %eax,%eax
    286a:	0f 84 81 07 00 00    	je     2ff1 <do_execve+0x7d4>
    2870:	83 bc 24 fc 04 00 00 	cmpl   $0x0,0x4fc(%esp)
    2877:	00 
    2878:	74 2c                	je     28a6 <do_execve+0x89>
    287a:	8b 84 24 fc 04 00 00 	mov    0x4fc(%esp),%eax
    2881:	83 c0 04             	add    $0x4,%eax
    2884:	8b bc 24 fc 04 00 00 	mov    0x4fc(%esp),%edi
    288b:	64 8b 17             	mov    %fs:(%edi),%edx
    288e:	85 d2                	test   %edx,%edx
    2890:	74 1e                	je     28b0 <do_execve+0x93>
    2892:	ba 00 00 00 00       	mov    $0x0,%edx
    2897:	42                   	inc    %edx
    2898:	8d 48 04             	lea    0x4(%eax),%ecx
    289b:	64 8b 00             	mov    %fs:(%eax),%eax
    289e:	85 c0                	test   %eax,%eax
    28a0:	74 18                	je     28ba <do_execve+0x9d>
    28a2:	89 c8                	mov    %ecx,%eax
    28a4:	eb f1                	jmp    2897 <do_execve+0x7a>
    28a6:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    28ad:	00 
    28ae:	eb 0e                	jmp    28be <do_execve+0xa1>
    28b0:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    28b7:	00 
    28b8:	eb 04                	jmp    28be <do_execve+0xa1>
    28ba:	89 54 24 10          	mov    %edx,0x10(%esp)
    28be:	83 bc 24 00 05 00 00 	cmpl   $0x0,0x500(%esp)
    28c5:	00 
    28c6:	74 2c                	je     28f4 <do_execve+0xd7>
    28c8:	8b 84 24 00 05 00 00 	mov    0x500(%esp),%eax
    28cf:	83 c0 04             	add    $0x4,%eax
    28d2:	8b bc 24 00 05 00 00 	mov    0x500(%esp),%edi
    28d9:	64 8b 17             	mov    %fs:(%edi),%edx
    28dc:	85 d2                	test   %edx,%edx
    28de:	74 1e                	je     28fe <do_execve+0xe1>
    28e0:	ba 00 00 00 00       	mov    $0x0,%edx
    28e5:	42                   	inc    %edx
    28e6:	8d 48 04             	lea    0x4(%eax),%ecx
    28e9:	64 8b 00             	mov    %fs:(%eax),%eax
    28ec:	85 c0                	test   %eax,%eax
    28ee:	74 18                	je     2908 <do_execve+0xeb>
    28f0:	89 c8                	mov    %ecx,%eax
    28f2:	eb f1                	jmp    28e5 <do_execve+0xc8>
    28f4:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
    28fb:	00 
    28fc:	eb 0e                	jmp    290c <do_execve+0xef>
    28fe:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
    2905:	00 
    2906:	eb 04                	jmp    290c <do_execve+0xef>
    2908:	89 54 24 1c          	mov    %edx,0x1c(%esp)
    290c:	8b 55 00             	mov    0x0(%ebp),%edx
    290f:	89 d0                	mov    %edx,%eax
    2911:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    2916:	66 3d 00 80          	cmp    $0x8000,%ax
    291a:	0f 85 5f 06 00 00    	jne    2f7f <do_execve+0x762>
    2920:	c7 44 24 0c fc ff 01 	movl   $0x1fffc,0xc(%esp)
    2927:	00 
    2928:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    292f:	00 
    2930:	66 8c e0             	mov    %fs,%ax
    2933:	66 89 44 24 20       	mov    %ax,0x20(%esp)
    2938:	66 89 44 24 24       	mov    %ax,0x24(%esp)
    293d:	0f b7 c2             	movzwl %dx,%eax
    2940:	f6 c6 08             	test   $0x8,%dh
    2943:	74 0a                	je     294f <do_execve+0x132>
    2945:	0f b7 7d 02          	movzwl 0x2(%ebp),%edi
    2949:	89 7c 24 28          	mov    %edi,0x28(%esp)
    294d:	eb 11                	jmp    2960 <do_execve+0x143>
    294f:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2955:	0f b7 b9 42 02 00 00 	movzwl 0x242(%ecx),%edi
    295c:	89 7c 24 28          	mov    %edi,0x28(%esp)
    2960:	f6 c6 04             	test   $0x4,%dh
    2963:	74 0a                	je     296f <do_execve+0x152>
    2965:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
    2969:	89 7c 24 2c          	mov    %edi,0x2c(%esp)
    296d:	eb 11                	jmp    2980 <do_execve+0x163>
    296f:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2975:	0f b7 b9 48 02 00 00 	movzwl 0x248(%ecx),%edi
    297c:	89 7c 24 2c          	mov    %edi,0x2c(%esp)
    2980:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    2986:	66 8b b1 42 02 00 00 	mov    0x242(%ecx),%si
    298d:	66 3b 75 02          	cmp    0x2(%ebp),%si
    2991:	75 05                	jne    2998 <do_execve+0x17b>
    2993:	c1 f8 06             	sar    $0x6,%eax
    2996:	eb 10                	jmp    29a8 <do_execve+0x18b>
    2998:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
    299c:	66 39 b9 48 02 00 00 	cmp    %di,0x248(%ecx)
    29a3:	75 03                	jne    29a8 <do_execve+0x18b>
    29a5:	c1 f8 03             	sar    $0x3,%eax
    29a8:	a8 01                	test   $0x1,%al
    29aa:	75 12                	jne    29be <do_execve+0x1a1>
    29ac:	f6 c2 49             	test   $0x49,%dl
    29af:	0f 84 d1 05 00 00    	je     2f86 <do_execve+0x769>
    29b5:	66 85 f6             	test   %si,%si
    29b8:	0f 85 cf 05 00 00    	jne    2f8d <do_execve+0x770>
    29be:	0f b7 45 0e          	movzwl 0xe(%ebp),%eax
    29c2:	89 44 24 04          	mov    %eax,0x4(%esp)
    29c6:	0f b7 45 2c          	movzwl 0x2c(%ebp),%eax
    29ca:	89 04 24             	mov    %eax,(%esp)
    29cd:	e8 fc ff ff ff       	call   29ce <do_execve+0x1b1>
    29d2:	89 c2                	mov    %eax,%edx
    29d4:	85 c0                	test   %eax,%eax
    29d6:	0f 84 b8 05 00 00    	je     2f94 <do_execve+0x777>
    29dc:	8b 00                	mov    (%eax),%eax
    29de:	8b 38                	mov    (%eax),%edi
    29e0:	8b 48 04             	mov    0x4(%eax),%ecx
    29e3:	89 4c 24 14          	mov    %ecx,0x14(%esp)
    29e7:	8b 48 08             	mov    0x8(%eax),%ecx
    29ea:	89 4c 24 30          	mov    %ecx,0x30(%esp)
    29ee:	8b 48 0c             	mov    0xc(%eax),%ecx
    29f1:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
    29f5:	8b 70 10             	mov    0x10(%eax),%esi
    29f8:	89 74 24 38          	mov    %esi,0x38(%esp)
    29fc:	8b 70 14             	mov    0x14(%eax),%esi
    29ff:	89 74 24 34          	mov    %esi,0x34(%esp)
    2a03:	8b 70 18             	mov    0x18(%eax),%esi
    2a06:	8b 48 1c             	mov    0x1c(%eax),%ecx
    2a09:	89 4c 24 18          	mov    %ecx,0x18(%esp)
    2a0d:	80 38 23             	cmpb   $0x23,(%eax)
    2a10:	0f 85 9a 01 00 00    	jne    2bb0 <do_execve+0x393>
    2a16:	80 78 01 21          	cmpb   $0x21,0x1(%eax)
    2a1a:	0f 85 9e 01 00 00    	jne    2bbe <do_execve+0x3a1>
    2a20:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
    2a25:	0f 85 a1 01 00 00    	jne    2bcc <do_execve+0x3af>
    2a2b:	8d 70 02             	lea    0x2(%eax),%esi
    2a2e:	8d 7c 24 51          	lea    0x51(%esp),%edi
    2a32:	b9 fe 03 00 00       	mov    $0x3fe,%ecx
    2a37:	fc                   	cld    
    2a38:	49                   	dec    %ecx
    2a39:	78 08                	js     2a43 <do_execve+0x226>
    2a3b:	ac                   	lods   %ds:(%esi),%al
    2a3c:	aa                   	stos   %al,%es:(%edi)
    2a3d:	84 c0                	test   %al,%al
    2a3f:	75 f7                	jne    2a38 <do_execve+0x21b>
    2a41:	f3 aa                	rep stos %al,%es:(%edi)
    2a43:	89 14 24             	mov    %edx,(%esp)
    2a46:	e8 fc ff ff ff       	call   2a47 <do_execve+0x22a>
    2a4b:	89 2c 24             	mov    %ebp,(%esp)
    2a4e:	e8 fc ff ff ff       	call   2a4f <do_execve+0x232>
    2a53:	c6 84 24 4f 04 00 00 	movb   $0x0,0x44f(%esp)
    2a5a:	00 
    2a5b:	8d 74 24 51          	lea    0x51(%esp),%esi
    2a5f:	b0 0a                	mov    $0xa,%al
    2a61:	fc                   	cld    
    2a62:	88 c4                	mov    %al,%ah
    2a64:	ac                   	lods   %ds:(%esi),%al
    2a65:	38 e0                	cmp    %ah,%al
    2a67:	74 09                	je     2a72 <do_execve+0x255>
    2a69:	84 c0                	test   %al,%al
    2a6b:	75 f7                	jne    2a64 <do_execve+0x247>
    2a6d:	be 01 00 00 00       	mov    $0x1,%esi
    2a72:	89 f0                	mov    %esi,%eax
    2a74:	48                   	dec    %eax
    2a75:	85 c0                	test   %eax,%eax
    2a77:	0f 84 0b 01 00 00    	je     2b88 <do_execve+0x36b>
    2a7d:	c6 00 00             	movb   $0x0,(%eax)
    2a80:	89 f2                	mov    %esi,%edx
    2a82:	eb 01                	jmp    2a85 <do_execve+0x268>
    2a84:	42                   	inc    %edx
    2a85:	8a 02                	mov    (%edx),%al
    2a87:	3c 20                	cmp    $0x20,%al
    2a89:	74 f9                	je     2a84 <do_execve+0x267>
    2a8b:	3c 09                	cmp    $0x9,%al
    2a8d:	74 f5                	je     2a84 <do_execve+0x267>
    2a8f:	89 d6                	mov    %edx,%esi
    2a91:	85 d2                	test   %edx,%edx
    2a93:	0f 84 f9 00 00 00    	je     2b92 <do_execve+0x375>
    2a99:	84 c0                	test   %al,%al
    2a9b:	0f 84 fb 00 00 00    	je     2b9c <do_execve+0x37f>
    2aa1:	89 54 24 48          	mov    %edx,0x48(%esp)
    2aa5:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
    2aac:	00 
    2aad:	0f 84 63 05 00 00    	je     3016 <do_execve+0x7f9>
    2ab3:	3c 20                	cmp    $0x20,%al
    2ab5:	0f 84 53 05 00 00    	je     300e <do_execve+0x7f1>
    2abb:	3c 09                	cmp    $0x9,%al
    2abd:	0f 84 4b 05 00 00    	je     300e <do_execve+0x7f1>
    2ac3:	8d 4a 01             	lea    0x1(%edx),%ecx
    2ac6:	3c 2f                	cmp    $0x2f,%al
    2ac8:	75 04                	jne    2ace <do_execve+0x2b1>
    2aca:	89 4c 24 48          	mov    %ecx,0x48(%esp)
    2ace:	89 ca                	mov    %ecx,%edx
    2ad0:	8a 01                	mov    (%ecx),%al
    2ad2:	84 c0                	test   %al,%al
    2ad4:	0f 84 3c 05 00 00    	je     3016 <do_execve+0x7f9>
    2ada:	3c 20                	cmp    $0x20,%al
    2adc:	0f 84 2c 05 00 00    	je     300e <do_execve+0x7f1>
    2ae2:	41                   	inc    %ecx
    2ae3:	3c 09                	cmp    $0x9,%al
    2ae5:	75 df                	jne    2ac6 <do_execve+0x2a9>
    2ae7:	e9 22 05 00 00       	jmp    300e <do_execve+0x7f1>
    2aec:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2af3:	00 
    2af4:	89 04 24             	mov    %eax,(%esp)
    2af7:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    2afe:	8d 54 24 4c          	lea    0x4c(%esp),%edx
    2b02:	b8 01 00 00 00       	mov    $0x1,%eax
    2b07:	e8 a6 fb ff ff       	call   26b2 <copy_strings>
    2b0c:	ff 44 24 10          	incl   0x10(%esp)
    2b10:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2b17:	00 
    2b18:	89 04 24             	mov    %eax,(%esp)
    2b1b:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    2b22:	8d 54 24 48          	lea    0x48(%esp),%edx
    2b26:	b8 01 00 00 00       	mov    $0x1,%eax
    2b2b:	e8 82 fb ff ff       	call   26b2 <copy_strings>
    2b30:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2b34:	ff 44 24 10          	incl   0x10(%esp)
    2b38:	85 c0                	test   %eax,%eax
    2b3a:	74 6a                	je     2ba6 <do_execve+0x389>
    2b3c:	8b 7c 24 24          	mov    0x24(%esp),%edi
    2b40:	66 8c d8             	mov    %ds,%ax
    2b43:	8e e0                	mov    %eax,%fs
    2b45:	89 34 24             	mov    %esi,(%esp)
    2b48:	e8 fc ff ff ff       	call   2b49 <do_execve+0x32c>
    2b4d:	89 c5                	mov    %eax,%ebp
    2b4f:	85 c0                	test   %eax,%eax
    2b51:	75 0e                	jne    2b61 <do_execve+0x344>
    2b53:	89 f8                	mov    %edi,%eax
    2b55:	8e e0                	mov    %eax,%fs
    2b57:	bf fe ff ff ff       	mov    $0xfffffffe,%edi
    2b5c:	e9 71 04 00 00       	jmp    2fd2 <do_execve+0x7b5>
    2b61:	8b 44 24 20          	mov    0x20(%esp),%eax
    2b65:	8e e0                	mov    %eax,%fs
    2b67:	8b 55 00             	mov    0x0(%ebp),%edx
    2b6a:	89 d0                	mov    %edx,%eax
    2b6c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    2b71:	66 3d 00 80          	cmp    $0x8000,%ax
    2b75:	0f 85 20 04 00 00    	jne    2f9b <do_execve+0x77e>
    2b7b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    2b82:	00 
    2b83:	e9 b5 fd ff ff       	jmp    293d <do_execve+0x120>
    2b88:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2b8d:	e9 40 04 00 00       	jmp    2fd2 <do_execve+0x7b5>
    2b92:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2b97:	e9 36 04 00 00       	jmp    2fd2 <do_execve+0x7b5>
    2b9c:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2ba1:	e9 2c 04 00 00       	jmp    2fd2 <do_execve+0x7b5>
    2ba6:	bf f4 ff ff ff       	mov    $0xfffffff4,%edi
    2bab:	e9 22 04 00 00       	jmp    2fd2 <do_execve+0x7b5>
    2bb0:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2bb4:	89 44 24 24          	mov    %eax,0x24(%esp)
    2bb8:	89 6c 24 20          	mov    %ebp,0x20(%esp)
    2bbc:	eb 1a                	jmp    2bd8 <do_execve+0x3bb>
    2bbe:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2bc2:	89 44 24 24          	mov    %eax,0x24(%esp)
    2bc6:	89 6c 24 20          	mov    %ebp,0x20(%esp)
    2bca:	eb 0c                	jmp    2bd8 <do_execve+0x3bb>
    2bcc:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2bd0:	89 44 24 24          	mov    %eax,0x24(%esp)
    2bd4:	89 6c 24 20          	mov    %ebp,0x20(%esp)
    2bd8:	89 14 24             	mov    %edx,(%esp)
    2bdb:	e8 fc ff ff ff       	call   2bdc <do_execve+0x3bf>
    2be0:	81 ff 0b 01 00 00    	cmp    $0x10b,%edi
    2be6:	0f 85 b6 03 00 00    	jne    2fa2 <do_execve+0x785>
    2bec:	85 f6                	test   %esi,%esi
    2bee:	0f 85 b5 03 00 00    	jne    2fa9 <do_execve+0x78c>
    2bf4:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
    2bf9:	0f 85 b1 03 00 00    	jne    2fb0 <do_execve+0x793>
    2bff:	8b 44 24 30          	mov    0x30(%esp),%eax
    2c03:	03 44 24 14          	add    0x14(%esp),%eax
    2c07:	89 44 24 18          	mov    %eax,0x18(%esp)
    2c0b:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
    2c0f:	01 c7                	add    %eax,%edi
    2c11:	89 7c 24 30          	mov    %edi,0x30(%esp)
    2c15:	81 ff 00 00 00 03    	cmp    $0x3000000,%edi
    2c1b:	0f 87 96 03 00 00    	ja     2fb7 <do_execve+0x79a>
    2c21:	8b 7c 24 38          	mov    0x38(%esp),%edi
    2c25:	8d 84 38 00 04 00 00 	lea    0x400(%eax,%edi,1),%eax
    2c2c:	8b 7c 24 20          	mov    0x20(%esp),%edi
    2c30:	39 47 04             	cmp    %eax,0x4(%edi)
    2c33:	0f 82 85 03 00 00    	jb     2fbe <do_execve+0x7a1>
    2c39:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
    2c3e:	75 54                	jne    2c94 <do_execve+0x477>
    2c40:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c47:	00 
    2c48:	8b 44 24 24          	mov    0x24(%esp),%eax
    2c4c:	89 04 24             	mov    %eax,(%esp)
    2c4f:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    2c56:	8b 94 24 00 05 00 00 	mov    0x500(%esp),%edx
    2c5d:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    2c61:	e8 4c fa ff ff       	call   26b2 <copy_strings>
    2c66:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c6d:	00 
    2c6e:	89 04 24             	mov    %eax,(%esp)
    2c71:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    2c78:	8b 94 24 fc 04 00 00 	mov    0x4fc(%esp),%edx
    2c7f:	8b 44 24 10          	mov    0x10(%esp),%eax
    2c83:	e8 2a fa ff ff       	call   26b2 <copy_strings>
    2c88:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2c8c:	85 c0                	test   %eax,%eax
    2c8e:	0f 84 31 03 00 00    	je     2fc5 <do_execve+0x7a8>
    2c94:	a1 00 00 00 00       	mov    0x0,%eax
    2c99:	8b 80 78 02 00 00    	mov    0x278(%eax),%eax
    2c9f:	85 c0                	test   %eax,%eax
    2ca1:	74 08                	je     2cab <do_execve+0x48e>
    2ca3:	89 04 24             	mov    %eax,(%esp)
    2ca6:	e8 fc ff ff ff       	call   2ca7 <do_execve+0x48a>
    2cab:	8b 15 00 00 00 00    	mov    0x0,%edx
    2cb1:	8b 44 24 20          	mov    0x20(%esp),%eax
    2cb5:	89 82 78 02 00 00    	mov    %eax,0x278(%edx)
    2cbb:	b8 00 00 00 00       	mov    $0x0,%eax
    2cc0:	c7 44 02 10 00 00 00 	movl   $0x0,0x10(%edx,%eax,1)
    2cc7:	00 
    2cc8:	83 c0 10             	add    $0x10,%eax
    2ccb:	3d 00 02 00 00       	cmp    $0x200,%eax
    2cd0:	75 ee                	jne    2cc0 <do_execve+0x4a3>
    2cd2:	bb 00 00 00 00       	mov    $0x0,%ebx
    2cd7:	a1 00 00 00 00       	mov    0x0,%eax
    2cdc:	8b 80 7c 02 00 00    	mov    0x27c(%eax),%eax
    2ce2:	88 d9                	mov    %bl,%cl
    2ce4:	d3 e8                	shr    %cl,%eax
    2ce6:	a8 01                	test   $0x1,%al
    2ce8:	74 08                	je     2cf2 <do_execve+0x4d5>
    2cea:	89 1c 24             	mov    %ebx,(%esp)
    2ced:	e8 fc ff ff ff       	call   2cee <do_execve+0x4d1>
    2cf2:	43                   	inc    %ebx
    2cf3:	83 fb 14             	cmp    $0x14,%ebx
    2cf6:	75 df                	jne    2cd7 <do_execve+0x4ba>
    2cf8:	a1 00 00 00 00       	mov    0x0,%eax
    2cfd:	c7 80 7c 02 00 00 00 	movl   $0x0,0x27c(%eax)
    2d04:	00 00 00 
    2d07:	b9 0f 00 00 00       	mov    $0xf,%ecx
    2d0c:	0f 03 c9             	lsl    %cx,%ecx
    2d0f:	41                   	inc    %ecx
    2d10:	8a b0 df 02 00 00    	mov    0x2df(%eax),%dh
    2d16:	8a 90 dc 02 00 00    	mov    0x2dc(%eax),%dl
    2d1c:	c1 e2 10             	shl    $0x10,%edx
    2d1f:	66 8b 90 da 02 00 00 	mov    0x2da(%eax),%dx
    2d26:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    2d2a:	89 14 24             	mov    %edx,(%esp)
    2d2d:	e8 fc ff ff ff       	call   2d2e <do_execve+0x511>
    2d32:	b9 17 00 00 00       	mov    $0x17,%ecx
    2d37:	0f 03 c9             	lsl    %cx,%ecx
    2d3a:	41                   	inc    %ecx
    2d3b:	a1 00 00 00 00       	mov    0x0,%eax
    2d40:	8a b0 e7 02 00 00    	mov    0x2e7(%eax),%dh
    2d46:	8a 90 e4 02 00 00    	mov    0x2e4(%eax),%dl
    2d4c:	c1 e2 10             	shl    $0x10,%edx
    2d4f:	66 8b 90 e2 02 00 00 	mov    0x2e2(%eax),%dx
    2d56:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    2d5a:	89 14 24             	mov    %edx,(%esp)
    2d5d:	e8 fc ff ff ff       	call   2d5e <do_execve+0x541>
    2d62:	a1 00 00 00 00       	mov    0x0,%eax
    2d67:	39 05 00 00 00 00    	cmp    %eax,0x0
    2d6d:	75 0a                	jne    2d79 <do_execve+0x55c>
    2d6f:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
    2d76:	00 00 00 
    2d79:	66 c7 80 64 02 00 00 	movw   $0x0,0x264(%eax)
    2d80:	00 00 
    2d82:	8b 7c 24 14          	mov    0x14(%esp),%edi
    2d86:	8d 8f ff 0f 00 00    	lea    0xfff(%edi),%ecx
    2d8c:	8a b0 df 02 00 00    	mov    0x2df(%eax),%dh
    2d92:	8a 90 dc 02 00 00    	mov    0x2dc(%eax),%dl
    2d98:	c1 e2 10             	shl    $0x10,%edx
    2d9b:	66 8b 90 da 02 00 00 	mov    0x2da(%eax),%dx
    2da2:	89 d7                	mov    %edx,%edi
    2da4:	66 89 90 da 02 00 00 	mov    %dx,0x2da(%eax)
    2dab:	c1 ca 10             	ror    $0x10,%edx
    2dae:	88 90 dc 02 00 00    	mov    %dl,0x2dc(%eax)
    2db4:	88 b0 df 02 00 00    	mov    %dh,0x2df(%eax)
    2dba:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
    2dc0:	89 ca                	mov    %ecx,%edx
    2dc2:	4a                   	dec    %edx
    2dc3:	c1 ea 0c             	shr    $0xc,%edx
    2dc6:	66 89 90 d8 02 00 00 	mov    %dx,0x2d8(%eax)
    2dcd:	c1 ca 10             	ror    $0x10,%edx
    2dd0:	8a b0 de 02 00 00    	mov    0x2de(%eax),%dh
    2dd6:	80 e6 f0             	and    $0xf0,%dh
    2dd9:	08 f2                	or     %dh,%dl
    2ddb:	88 90 de 02 00 00    	mov    %dl,0x2de(%eax)
    2de1:	89 fa                	mov    %edi,%edx
    2de3:	66 89 90 e2 02 00 00 	mov    %dx,0x2e2(%eax)
    2dea:	c1 ca 10             	ror    $0x10,%edx
    2ded:	88 90 e4 02 00 00    	mov    %dl,0x2e4(%eax)
    2df3:	88 b0 e7 02 00 00    	mov    %dh,0x2e7(%eax)
    2df9:	ba ff 3f 00 00       	mov    $0x3fff,%edx
    2dfe:	66 89 90 e0 02 00 00 	mov    %dx,0x2e0(%eax)
    2e05:	c1 ca 10             	ror    $0x10,%edx
    2e08:	8a b0 e6 02 00 00    	mov    0x2e6(%eax),%dh
    2e0e:	80 e6 f0             	and    $0xf0,%dh
    2e11:	08 f2                	or     %dh,%dl
    2e13:	88 90 e6 02 00 00    	mov    %dl,0x2e6(%eax)
    2e19:	6a 17                	push   $0x17
    2e1b:	0f a1                	pop    %fs
    2e1d:	8d b7 00 00 00 04    	lea    0x4000000(%edi),%esi
    2e23:	8d 9c 24 cc 04 00 00 	lea    0x4cc(%esp),%ebx
    2e2a:	81 c7 00 00 fe 03    	add    $0x3fe0000,%edi
    2e30:	81 ee 00 10 00 00    	sub    $0x1000,%esi
    2e36:	8b 03                	mov    (%ebx),%eax
    2e38:	85 c0                	test   %eax,%eax
    2e3a:	74 0c                	je     2e48 <do_execve+0x62b>
    2e3c:	89 74 24 04          	mov    %esi,0x4(%esp)
    2e40:	89 04 24             	mov    %eax,(%esp)
    2e43:	e8 fc ff ff ff       	call   2e44 <do_execve+0x627>
    2e48:	83 eb 04             	sub    $0x4,%ebx
    2e4b:	39 fe                	cmp    %edi,%esi
    2e4d:	75 e1                	jne    2e30 <do_execve+0x613>
    2e4f:	8b 54 24 0c          	mov    0xc(%esp),%edx
    2e53:	81 c2 00 00 fe 03    	add    $0x3fe0000,%edx
    2e59:	89 d0                	mov    %edx,%eax
    2e5b:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
    2e5f:	89 7c 24 0c          	mov    %edi,0xc(%esp)
    2e63:	83 e2 fc             	and    $0xfffffffc,%edx
    2e66:	f7 d7                	not    %edi
    2e68:	8d 34 ba             	lea    (%edx,%edi,4),%esi
    2e6b:	8b 7c 24 10          	mov    0x10(%esp),%edi
    2e6f:	89 fa                	mov    %edi,%edx
    2e71:	f7 d2                	not    %edx
    2e73:	8d 1c 96             	lea    (%esi,%edx,4),%ebx
    2e76:	64 89 73 fc          	mov    %esi,%fs:-0x4(%ebx)
    2e7a:	64 89 5b f8          	mov    %ebx,%fs:-0x8(%ebx)
    2e7e:	8d 4b f4             	lea    -0xc(%ebx),%ecx
    2e81:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    2e85:	64 89 7b f4          	mov    %edi,%fs:-0xc(%ebx)
    2e89:	89 dd                	mov    %ebx,%ebp
    2e8b:	eb 1a                	jmp    2ea7 <do_execve+0x68a>
    2e8d:	8d 4d 04             	lea    0x4(%ebp),%ecx
    2e90:	64 89 45 00          	mov    %eax,%fs:0x0(%ebp)
    2e94:	8d 50 01             	lea    0x1(%eax),%edx
    2e97:	64 8a 00             	mov    %fs:(%eax),%al
    2e9a:	84 c0                	test   %al,%al
    2e9c:	74 04                	je     2ea2 <do_execve+0x685>
    2e9e:	89 d0                	mov    %edx,%eax
    2ea0:	eb f2                	jmp    2e94 <do_execve+0x677>
    2ea2:	4f                   	dec    %edi
    2ea3:	89 cd                	mov    %ecx,%ebp
    2ea5:	89 d0                	mov    %edx,%eax
    2ea7:	85 ff                	test   %edi,%edi
    2ea9:	7f e2                	jg     2e8d <do_execve+0x670>
    2eab:	8b 7c 24 10          	mov    0x10(%esp),%edi
    2eaf:	89 f9                	mov    %edi,%ecx
    2eb1:	85 ff                	test   %edi,%edi
    2eb3:	79 05                	jns    2eba <do_execve+0x69d>
    2eb5:	b9 00 00 00 00       	mov    $0x0,%ecx
    2eba:	ba 00 00 00 00       	mov    $0x0,%edx
    2ebf:	64 89 14 8b          	mov    %edx,%fs:(%ebx,%ecx,4)
    2ec3:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    2ec7:	89 f7                	mov    %esi,%edi
    2ec9:	eb 19                	jmp    2ee4 <do_execve+0x6c7>
    2ecb:	8d 4f 04             	lea    0x4(%edi),%ecx
    2ece:	64 89 07             	mov    %eax,%fs:(%edi)
    2ed1:	8d 50 01             	lea    0x1(%eax),%edx
    2ed4:	64 8a 00             	mov    %fs:(%eax),%al
    2ed7:	84 c0                	test   %al,%al
    2ed9:	74 04                	je     2edf <do_execve+0x6c2>
    2edb:	89 d0                	mov    %edx,%eax
    2edd:	eb f2                	jmp    2ed1 <do_execve+0x6b4>
    2edf:	4b                   	dec    %ebx
    2ee0:	89 cf                	mov    %ecx,%edi
    2ee2:	89 d0                	mov    %edx,%eax
    2ee4:	85 db                	test   %ebx,%ebx
    2ee6:	7f e3                	jg     2ecb <do_execve+0x6ae>
    2ee8:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
    2eec:	89 f8                	mov    %edi,%eax
    2eee:	85 ff                	test   %edi,%edi
    2ef0:	79 05                	jns    2ef7 <do_execve+0x6da>
    2ef2:	b8 00 00 00 00       	mov    $0x0,%eax
    2ef7:	ba 00 00 00 00       	mov    $0x0,%edx
    2efc:	64 89 14 86          	mov    %edx,%fs:(%esi,%eax,4)
    2f00:	a1 00 00 00 00       	mov    0x0,%eax
    2f05:	8b 7c 24 14          	mov    0x14(%esp),%edi
    2f09:	89 b8 1c 02 00 00    	mov    %edi,0x21c(%eax)
    2f0f:	8b 7c 24 18          	mov    0x18(%esp),%edi
    2f13:	89 b8 20 02 00 00    	mov    %edi,0x220(%eax)
    2f19:	8b 5c 24 30          	mov    0x30(%esp),%ebx
    2f1d:	89 98 24 02 00 00    	mov    %ebx,0x224(%eax)
    2f23:	8b 54 24 08          	mov    0x8(%esp),%edx
    2f27:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    2f2d:	89 90 28 02 00 00    	mov    %edx,0x228(%eax)
    2f33:	8b 5c 24 28          	mov    0x28(%esp),%ebx
    2f37:	66 89 98 42 02 00 00 	mov    %bx,0x242(%eax)
    2f3e:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
    2f42:	66 89 98 48 02 00 00 	mov    %bx,0x248(%eax)
    2f49:	89 f8                	mov    %edi,%eax
    2f4b:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
    2f51:	74 0e                	je     2f61 <do_execve+0x744>
    2f53:	b2 00                	mov    $0x0,%dl
    2f55:	40                   	inc    %eax
    2f56:	64 88 50 ff          	mov    %dl,%fs:-0x1(%eax)
    2f5a:	a9 ff 0f 00 00       	test   $0xfff,%eax
    2f5f:	75 f4                	jne    2f55 <do_execve+0x738>
    2f61:	8b 84 24 f0 04 00 00 	mov    0x4f0(%esp),%eax
    2f68:	8b 7c 24 34          	mov    0x34(%esp),%edi
    2f6c:	89 38                	mov    %edi,(%eax)
    2f6e:	8b 7c 24 08          	mov    0x8(%esp),%edi
    2f72:	89 78 0c             	mov    %edi,0xc(%eax)
    2f75:	b8 00 00 00 00       	mov    $0x0,%eax
    2f7a:	e9 18 01 00 00       	jmp    3097 <do_execve+0x87a>
    2f7f:	bf f3 ff ff ff       	mov    $0xfffffff3,%edi
    2f84:	eb 44                	jmp    2fca <do_execve+0x7ad>
    2f86:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2f8b:	eb 3d                	jmp    2fca <do_execve+0x7ad>
    2f8d:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2f92:	eb 36                	jmp    2fca <do_execve+0x7ad>
    2f94:	bf f3 ff ff ff       	mov    $0xfffffff3,%edi
    2f99:	eb 2f                	jmp    2fca <do_execve+0x7ad>
    2f9b:	bf f3 ff ff ff       	mov    $0xfffffff3,%edi
    2fa0:	eb 28                	jmp    2fca <do_execve+0x7ad>
    2fa2:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2fa7:	eb 21                	jmp    2fca <do_execve+0x7ad>
    2fa9:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2fae:	eb 1a                	jmp    2fca <do_execve+0x7ad>
    2fb0:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2fb5:	eb 13                	jmp    2fca <do_execve+0x7ad>
    2fb7:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2fbc:	eb 0c                	jmp    2fca <do_execve+0x7ad>
    2fbe:	bf f8 ff ff ff       	mov    $0xfffffff8,%edi
    2fc3:	eb 05                	jmp    2fca <do_execve+0x7ad>
    2fc5:	bf f4 ff ff ff       	mov    $0xfffffff4,%edi
    2fca:	89 2c 24             	mov    %ebp,(%esp)
    2fcd:	e8 fc ff ff ff       	call   2fce <do_execve+0x7b1>
    2fd2:	8d b4 24 50 04 00 00 	lea    0x450(%esp),%esi
    2fd9:	8b 06                	mov    (%esi),%eax
    2fdb:	89 04 24             	mov    %eax,(%esp)
    2fde:	e8 fc ff ff ff       	call   2fdf <do_execve+0x7c2>
    2fe3:	83 c6 04             	add    $0x4,%esi
    2fe6:	39 f3                	cmp    %esi,%ebx
    2fe8:	75 ef                	jne    2fd9 <do_execve+0x7bc>
    2fea:	89 f8                	mov    %edi,%eax
    2fec:	e9 a6 00 00 00       	jmp    3097 <do_execve+0x87a>
    2ff1:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    2ff6:	e9 9c 00 00 00       	jmp    3097 <do_execve+0x87a>
    2ffb:	8d 9c 24 d0 04 00 00 	lea    0x4d0(%esp),%ebx
    3002:	8d 84 24 50 04 00 00 	lea    0x450(%esp),%eax
    3009:	e9 3c f8 ff ff       	jmp    284a <do_execve+0x2d>
    300e:	c6 02 00             	movb   $0x0,(%edx)
    3011:	42                   	inc    %edx
    3012:	89 54 24 4c          	mov    %edx,0x4c(%esp)
    3016:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    301d:	00 
    301e:	8b 44 24 0c          	mov    0xc(%esp),%eax
    3022:	89 04 24             	mov    %eax,(%esp)
    3025:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    302c:	8b 94 24 00 05 00 00 	mov    0x500(%esp),%edx
    3033:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    3037:	e8 76 f6 ff ff       	call   26b2 <copy_strings>
    303c:	8b bc 24 fc 04 00 00 	mov    0x4fc(%esp),%edi
    3043:	8d 57 04             	lea    0x4(%edi),%edx
    3046:	8b 7c 24 10          	mov    0x10(%esp),%edi
    304a:	4f                   	dec    %edi
    304b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3052:	00 
    3053:	89 04 24             	mov    %eax,(%esp)
    3056:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    305d:	89 f8                	mov    %edi,%eax
    305f:	e8 4e f6 ff ff       	call   26b2 <copy_strings>
    3064:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    306b:	00 
    306c:	89 04 24             	mov    %eax,(%esp)
    306f:	8d 8c 24 50 04 00 00 	lea    0x450(%esp),%ecx
    3076:	8d 94 24 f8 04 00 00 	lea    0x4f8(%esp),%edx
    307d:	b8 01 00 00 00       	mov    $0x1,%eax
    3082:	e8 2b f6 ff ff       	call   26b2 <copy_strings>
    3087:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%esp)
    308c:	0f 85 5a fa ff ff    	jne    2aec <do_execve+0x2cf>
    3092:	e9 79 fa ff ff       	jmp    2b10 <do_execve+0x2f3>
    3097:	81 c4 dc 04 00 00    	add    $0x4dc,%esp
    309d:	5b                   	pop    %ebx
    309e:	5e                   	pop    %esi
    309f:	5f                   	pop    %edi
    30a0:	5d                   	pop    %ebp
    30a1:	c3                   	ret    

000030a2 <read_pipe>:
    30a2:	55                   	push   %ebp
    30a3:	57                   	push   %edi
    30a4:	56                   	push   %esi
    30a5:	53                   	push   %ebx
    30a6:	83 ec 1c             	sub    $0x1c,%esp
    30a9:	8b 5c 24 30          	mov    0x30(%esp),%ebx
    30ad:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
    30b2:	0f 8e cd 00 00 00    	jle    3185 <read_pipe+0xe3>
    30b8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    30bf:	00 
    30c0:	8d 6b 20             	lea    0x20(%ebx),%ebp
    30c3:	e9 a0 00 00 00       	jmp    3168 <read_pipe+0xc6>
    30c8:	89 2c 24             	mov    %ebp,(%esp)
    30cb:	e8 fc ff ff ff       	call   30cc <read_pipe+0x2a>
    30d0:	66 83 7b 30 02       	cmpw   $0x2,0x30(%ebx)
    30d5:	0f 85 bd 00 00 00    	jne    3198 <read_pipe+0xf6>
    30db:	89 2c 24             	mov    %ebp,(%esp)
    30de:	e8 fc ff ff ff       	call   30df <read_pipe+0x3d>
    30e3:	8b 43 10             	mov    0x10(%ebx),%eax
    30e6:	0f b7 f0             	movzwl %ax,%esi
    30e9:	0f b7 53 0e          	movzwl 0xe(%ebx),%edx
    30ed:	29 f2                	sub    %esi,%edx
    30ef:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    30f5:	74 d1                	je     30c8 <read_pipe+0x26>
    30f7:	bf 00 10 00 00       	mov    $0x1000,%edi
    30fc:	29 f7                	sub    %esi,%edi
    30fe:	89 d1                	mov    %edx,%ecx
    3100:	3b 54 24 38          	cmp    0x38(%esp),%edx
    3104:	7e 04                	jle    310a <read_pipe+0x68>
    3106:	8b 4c 24 38          	mov    0x38(%esp),%ecx
    310a:	89 ca                	mov    %ecx,%edx
    310c:	39 f9                	cmp    %edi,%ecx
    310e:	7e 02                	jle    3112 <read_pipe+0x70>
    3110:	89 fa                	mov    %edi,%edx
    3112:	29 54 24 38          	sub    %edx,0x38(%esp)
    3116:	01 54 24 0c          	add    %edx,0xc(%esp)
    311a:	01 d0                	add    %edx,%eax
    311c:	25 ff 0f 00 00       	and    $0xfff,%eax
    3121:	66 89 43 10          	mov    %ax,0x10(%ebx)
    3125:	85 d2                	test   %edx,%edx
    3127:	7e 28                	jle    3151 <read_pipe+0xaf>
    3129:	8b 7b 04             	mov    0x4(%ebx),%edi
    312c:	03 54 24 34          	add    0x34(%esp),%edx
    3130:	89 54 24 08          	mov    %edx,0x8(%esp)
    3134:	8b 54 24 34          	mov    0x34(%esp),%edx
    3138:	29 d6                	sub    %edx,%esi
    313a:	8d 42 01             	lea    0x1(%edx),%eax
    313d:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
    3140:	8a 4c 39 ff          	mov    -0x1(%ecx,%edi,1),%cl
    3144:	64 88 0a             	mov    %cl,%fs:(%edx)
    3147:	3b 44 24 08          	cmp    0x8(%esp),%eax
    314b:	74 0c                	je     3159 <read_pipe+0xb7>
    314d:	89 c2                	mov    %eax,%edx
    314f:	eb e9                	jmp    313a <read_pipe+0x98>
    3151:	8b 44 24 34          	mov    0x34(%esp),%eax
    3155:	89 44 24 08          	mov    %eax,0x8(%esp)
    3159:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
    315e:	7e 2d                	jle    318d <read_pipe+0xeb>
    3160:	8b 44 24 08          	mov    0x8(%esp),%eax
    3164:	89 44 24 34          	mov    %eax,0x34(%esp)
    3168:	8b 43 10             	mov    0x10(%ebx),%eax
    316b:	0f b7 f0             	movzwl %ax,%esi
    316e:	0f b7 53 0e          	movzwl 0xe(%ebx),%edx
    3172:	29 f2                	sub    %esi,%edx
    3174:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    317a:	0f 85 77 ff ff ff    	jne    30f7 <read_pipe+0x55>
    3180:	e9 43 ff ff ff       	jmp    30c8 <read_pipe+0x26>
    3185:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    318c:	00 
    318d:	83 c3 20             	add    $0x20,%ebx
    3190:	89 1c 24             	mov    %ebx,(%esp)
    3193:	e8 fc ff ff ff       	call   3194 <read_pipe+0xf2>
    3198:	8b 44 24 0c          	mov    0xc(%esp),%eax
    319c:	83 c4 1c             	add    $0x1c,%esp
    319f:	5b                   	pop    %ebx
    31a0:	5e                   	pop    %esi
    31a1:	5f                   	pop    %edi
    31a2:	5d                   	pop    %ebp
    31a3:	c3                   	ret    

000031a4 <write_pipe>:
    31a4:	55                   	push   %ebp
    31a5:	57                   	push   %edi
    31a6:	56                   	push   %esi
    31a7:	53                   	push   %ebx
    31a8:	83 ec 1c             	sub    $0x1c,%esp
    31ab:	8b 5c 24 30          	mov    0x30(%esp),%ebx
    31af:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
    31b4:	0f 8e e8 00 00 00    	jle    32a2 <write_pipe+0xfe>
    31ba:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    31c1:	00 
    31c2:	8d 73 20             	lea    0x20(%ebx),%esi
    31c5:	e9 b8 00 00 00       	jmp    3282 <write_pipe+0xde>
    31ca:	89 34 24             	mov    %esi,(%esp)
    31cd:	e8 fc ff ff ff       	call   31ce <write_pipe+0x2a>
    31d2:	66 83 7b 30 02       	cmpw   $0x2,0x30(%ebx)
    31d7:	74 21                	je     31fa <write_pipe+0x56>
    31d9:	a1 00 00 00 00       	mov    0x0,%eax
    31de:	81 48 0c 00 10 00 00 	orl    $0x1000,0xc(%eax)
    31e5:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
    31ea:	0f 85 cb 00 00 00    	jne    32bb <write_pipe+0x117>
    31f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    31f5:	e9 c5 00 00 00       	jmp    32bf <write_pipe+0x11b>
    31fa:	89 34 24             	mov    %esi,(%esp)
    31fd:	e8 fc ff ff ff       	call   31fe <write_pipe+0x5a>
    3202:	66 8b 53 0e          	mov    0xe(%ebx),%dx
    3206:	0f b7 c2             	movzwl %dx,%eax
    3209:	0f b7 4b 10          	movzwl 0x10(%ebx),%ecx
    320d:	89 c7                	mov    %eax,%edi
    320f:	29 cf                	sub    %ecx,%edi
    3211:	89 f9                	mov    %edi,%ecx
    3213:	f7 d1                	not    %ecx
    3215:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    321b:	74 ad                	je     31ca <write_pipe+0x26>
    321d:	bf 00 10 00 00       	mov    $0x1000,%edi
    3222:	29 c7                	sub    %eax,%edi
    3224:	89 cd                	mov    %ecx,%ebp
    3226:	3b 4c 24 38          	cmp    0x38(%esp),%ecx
    322a:	7e 04                	jle    3230 <write_pipe+0x8c>
    322c:	8b 6c 24 38          	mov    0x38(%esp),%ebp
    3230:	89 e9                	mov    %ebp,%ecx
    3232:	39 fd                	cmp    %edi,%ebp
    3234:	7e 02                	jle    3238 <write_pipe+0x94>
    3236:	89 f9                	mov    %edi,%ecx
    3238:	29 4c 24 38          	sub    %ecx,0x38(%esp)
    323c:	01 4c 24 0c          	add    %ecx,0xc(%esp)
    3240:	01 ca                	add    %ecx,%edx
    3242:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    3248:	66 89 53 0e          	mov    %dx,0xe(%ebx)
    324c:	85 c9                	test   %ecx,%ecx
    324e:	7e 23                	jle    3273 <write_pipe+0xcf>
    3250:	89 cf                	mov    %ecx,%edi
    3252:	03 7c 24 34          	add    0x34(%esp),%edi
    3256:	8b 54 24 34          	mov    0x34(%esp),%edx
    325a:	29 d0                	sub    %edx,%eax
    325c:	89 c5                	mov    %eax,%ebp
    325e:	8d 42 01             	lea    0x1(%edx),%eax
    3261:	64 8a 0a             	mov    %fs:(%edx),%cl
    3264:	01 ea                	add    %ebp,%edx
    3266:	03 53 04             	add    0x4(%ebx),%edx
    3269:	88 0a                	mov    %cl,(%edx)
    326b:	39 f8                	cmp    %edi,%eax
    326d:	74 08                	je     3277 <write_pipe+0xd3>
    326f:	89 c2                	mov    %eax,%edx
    3271:	eb eb                	jmp    325e <write_pipe+0xba>
    3273:	8b 7c 24 34          	mov    0x34(%esp),%edi
    3277:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
    327c:	7e 2c                	jle    32aa <write_pipe+0x106>
    327e:	89 7c 24 34          	mov    %edi,0x34(%esp)
    3282:	66 8b 53 0e          	mov    0xe(%ebx),%dx
    3286:	0f b7 c2             	movzwl %dx,%eax
    3289:	0f b7 4b 10          	movzwl 0x10(%ebx),%ecx
    328d:	89 c7                	mov    %eax,%edi
    328f:	29 cf                	sub    %ecx,%edi
    3291:	89 f9                	mov    %edi,%ecx
    3293:	f7 d1                	not    %ecx
    3295:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    329b:	75 80                	jne    321d <write_pipe+0x79>
    329d:	e9 28 ff ff ff       	jmp    31ca <write_pipe+0x26>
    32a2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    32a9:	00 
    32aa:	83 c3 20             	add    $0x20,%ebx
    32ad:	89 1c 24             	mov    %ebx,(%esp)
    32b0:	e8 fc ff ff ff       	call   32b1 <write_pipe+0x10d>
    32b5:	8b 44 24 0c          	mov    0xc(%esp),%eax
    32b9:	eb 04                	jmp    32bf <write_pipe+0x11b>
    32bb:	8b 44 24 0c          	mov    0xc(%esp),%eax
    32bf:	83 c4 1c             	add    $0x1c,%esp
    32c2:	5b                   	pop    %ebx
    32c3:	5e                   	pop    %esi
    32c4:	5f                   	pop    %edi
    32c5:	5d                   	pop    %ebp
    32c6:	c3                   	ret    

000032c7 <sys_pipe>:
    32c7:	57                   	push   %edi
    32c8:	56                   	push   %esi
    32c9:	53                   	push   %ebx
    32ca:	83 ec 10             	sub    $0x10,%esp
    32cd:	8b 5c 24 20          	mov    0x20(%esp),%ebx
    32d1:	b8 04 00 00 00       	mov    $0x4,%eax
    32d6:	be 04 04 00 00       	mov    $0x404,%esi
    32db:	ba 00 00 00 00       	mov    $0x0,%edx
    32e0:	66 83 38 00          	cmpw   $0x0,(%eax)
    32e4:	75 0d                	jne    32f3 <sys_pipe+0x2c>
    32e6:	8d 78 fc             	lea    -0x4(%eax),%edi
    32e9:	89 7c 94 08          	mov    %edi,0x8(%esp,%edx,4)
    32ed:	66 ff 00             	incw   (%eax)
    32f0:	8d 52 01             	lea    0x1(%edx),%edx
    32f3:	83 fa 01             	cmp    $0x1,%edx
    32f6:	0f 8f 1f 01 00 00    	jg     341b <sys_pipe+0x154>
    32fc:	83 c0 10             	add    $0x10,%eax
    32ff:	39 f0                	cmp    %esi,%eax
    3301:	75 dd                	jne    32e0 <sys_pipe+0x19>
    3303:	e9 03 01 00 00       	jmp    340b <sys_pipe+0x144>
    3308:	8b 44 24 08          	mov    0x8(%esp),%eax
    330c:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    3312:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3317:	e9 29 01 00 00       	jmp    3445 <sys_pipe+0x17e>
    331c:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    3322:	ba 00 00 00 00       	mov    $0x0,%edx
    3327:	b8 00 00 00 00       	mov    $0x0,%eax
    332c:	83 bc 81 80 02 00 00 	cmpl   $0x0,0x280(%ecx,%eax,4)
    3333:	00 
    3334:	75 0f                	jne    3345 <sys_pipe+0x7e>
    3336:	89 04 94             	mov    %eax,(%esp,%edx,4)
    3339:	8b 74 94 08          	mov    0x8(%esp,%edx,4),%esi
    333d:	89 b4 81 80 02 00 00 	mov    %esi,0x280(%ecx,%eax,4)
    3344:	42                   	inc    %edx
    3345:	40                   	inc    %eax
    3346:	83 fa 01             	cmp    $0x1,%edx
    3349:	0f 8f e8 00 00 00    	jg     3437 <sys_pipe+0x170>
    334f:	83 f8 14             	cmp    $0x14,%eax
    3352:	75 d8                	jne    332c <sys_pipe+0x65>
    3354:	e9 d0 00 00 00       	jmp    3429 <sys_pipe+0x162>
    3359:	8b 14 24             	mov    (%esp),%edx
    335c:	a1 00 00 00 00       	mov    0x0,%eax
    3361:	c7 84 90 80 02 00 00 	movl   $0x0,0x280(%eax,%edx,4)
    3368:	00 00 00 00 
    336c:	8b 44 24 0c          	mov    0xc(%esp),%eax
    3370:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    3376:	8b 44 24 08          	mov    0x8(%esp),%eax
    337a:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    3380:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3385:	e9 bb 00 00 00       	jmp    3445 <sys_pipe+0x17e>
    338a:	e8 fc ff ff ff       	call   338b <sys_pipe+0xc4>
    338f:	85 c0                	test   %eax,%eax
    3391:	75 3d                	jne    33d0 <sys_pipe+0x109>
    3393:	a1 00 00 00 00       	mov    0x0,%eax
    3398:	8b 54 24 04          	mov    0x4(%esp),%edx
    339c:	c7 84 90 80 02 00 00 	movl   $0x0,0x280(%eax,%edx,4)
    33a3:	00 00 00 00 
    33a7:	8b 14 24             	mov    (%esp),%edx
    33aa:	c7 84 90 80 02 00 00 	movl   $0x0,0x280(%eax,%edx,4)
    33b1:	00 00 00 00 
    33b5:	8b 44 24 0c          	mov    0xc(%esp),%eax
    33b9:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    33bf:	8b 44 24 08          	mov    0x8(%esp),%eax
    33c3:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    33c9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    33ce:	eb 75                	jmp    3445 <sys_pipe+0x17e>
    33d0:	8b 4c 24 08          	mov    0x8(%esp),%ecx
    33d4:	8b 54 24 0c          	mov    0xc(%esp),%edx
    33d8:	89 42 08             	mov    %eax,0x8(%edx)
    33db:	89 41 08             	mov    %eax,0x8(%ecx)
    33de:	c7 42 0c 00 00 00 00 	movl   $0x0,0xc(%edx)
    33e5:	c7 41 0c 00 00 00 00 	movl   $0x0,0xc(%ecx)
    33ec:	66 c7 01 01 00       	movw   $0x1,(%ecx)
    33f1:	66 c7 02 02 00       	movw   $0x2,(%edx)
    33f6:	8b 04 24             	mov    (%esp),%eax
    33f9:	64 89 03             	mov    %eax,%fs:(%ebx)
    33fc:	8b 44 24 04          	mov    0x4(%esp),%eax
    3400:	64 89 43 04          	mov    %eax,%fs:0x4(%ebx)
    3404:	b8 00 00 00 00       	mov    $0x0,%eax
    3409:	eb 3a                	jmp    3445 <sys_pipe+0x17e>
    340b:	83 fa 01             	cmp    $0x1,%edx
    340e:	0f 84 f4 fe ff ff    	je     3308 <sys_pipe+0x41>
    3414:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3419:	eb 2a                	jmp    3445 <sys_pipe+0x17e>
    341b:	83 fa 01             	cmp    $0x1,%edx
    341e:	0f 85 f8 fe ff ff    	jne    331c <sys_pipe+0x55>
    3424:	e9 df fe ff ff       	jmp    3308 <sys_pipe+0x41>
    3429:	83 fa 01             	cmp    $0x1,%edx
    342c:	0f 85 3a ff ff ff    	jne    336c <sys_pipe+0xa5>
    3432:	e9 22 ff ff ff       	jmp    3359 <sys_pipe+0x92>
    3437:	83 fa 01             	cmp    $0x1,%edx
    343a:	0f 85 4a ff ff ff    	jne    338a <sys_pipe+0xc3>
    3440:	e9 14 ff ff ff       	jmp    3359 <sys_pipe+0x92>
    3445:	83 c4 10             	add    $0x10,%esp
    3448:	5b                   	pop    %ebx
    3449:	5e                   	pop    %esi
    344a:	5f                   	pop    %edi
    344b:	c3                   	ret    

0000344c <permission>:
    344c:	56                   	push   %esi
    344d:	53                   	push   %ebx
    344e:	0f b7 08             	movzwl (%eax),%ecx
    3451:	66 83 78 2c 00       	cmpw   $0x0,0x2c(%eax)
    3456:	74 06                	je     345e <permission+0x12>
    3458:	80 78 0d 00          	cmpb   $0x0,0xd(%eax)
    345c:	74 3e                	je     349c <permission+0x50>
    345e:	8b 35 00 00 00 00    	mov    0x0,%esi
    3464:	66 8b 9e 42 02 00 00 	mov    0x242(%esi),%bx
    346b:	66 3b 58 02          	cmp    0x2(%eax),%bx
    346f:	75 05                	jne    3476 <permission+0x2a>
    3471:	c1 f9 06             	sar    $0x6,%ecx
    3474:	eb 10                	jmp    3486 <permission+0x3a>
    3476:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
    347a:	66 39 86 48 02 00 00 	cmp    %ax,0x248(%esi)
    3481:	75 03                	jne    3486 <permission+0x3a>
    3483:	c1 f9 03             	sar    $0x3,%ecx
    3486:	89 d0                	mov    %edx,%eax
    3488:	83 e0 07             	and    $0x7,%eax
    348b:	21 c1                	and    %eax,%ecx
    348d:	39 d1                	cmp    %edx,%ecx
    348f:	74 12                	je     34a3 <permission+0x57>
    3491:	66 85 db             	test   %bx,%bx
    3494:	0f 94 c0             	sete   %al
    3497:	0f b6 c0             	movzbl %al,%eax
    349a:	eb 0c                	jmp    34a8 <permission+0x5c>
    349c:	b8 00 00 00 00       	mov    $0x0,%eax
    34a1:	eb 05                	jmp    34a8 <permission+0x5c>
    34a3:	b8 01 00 00 00       	mov    $0x1,%eax
    34a8:	5b                   	pop    %ebx
    34a9:	5e                   	pop    %esi
    34aa:	c3                   	ret    

000034ab <find_entry>:
    34ab:	55                   	push   %ebp
    34ac:	57                   	push   %edi
    34ad:	56                   	push   %esi
    34ae:	53                   	push   %ebx
    34af:	83 ec 2c             	sub    $0x2c,%esp
    34b2:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    34b6:	89 d6                	mov    %edx,%esi
    34b8:	89 4c 24 14          	mov    %ecx,0x14(%esp)
    34bc:	83 f9 0e             	cmp    $0xe,%ecx
    34bf:	7e 08                	jle    34c9 <find_entry+0x1e>
    34c1:	c7 44 24 14 0e 00 00 	movl   $0xe,0x14(%esp)
    34c8:	00 
    34c9:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    34cd:	8b 00                	mov    (%eax),%eax
    34cf:	8b 78 04             	mov    0x4(%eax),%edi
    34d2:	8b 44 24 40          	mov    0x40(%esp),%eax
    34d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    34dc:	8b 44 24 14          	mov    0x14(%esp),%eax
    34e0:	85 c0                	test   %eax,%eax
    34e2:	0f 84 5d 01 00 00    	je     3645 <find_entry+0x19a>
    34e8:	83 f8 02             	cmp    $0x2,%eax
    34eb:	75 61                	jne    354e <find_entry+0xa3>
    34ed:	64 8a 06             	mov    %fs:(%esi),%al
    34f0:	3c 2e                	cmp    $0x2e,%al
    34f2:	75 5a                	jne    354e <find_entry+0xa3>
    34f4:	64 8a 46 01          	mov    %fs:0x1(%esi),%al
    34f8:	3c 2e                	cmp    $0x2e,%al
    34fa:	75 52                	jne    354e <find_entry+0xa3>
    34fc:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    3500:	8b 00                	mov    (%eax),%eax
    3502:	8b 15 00 00 00 00    	mov    0x0,%edx
    3508:	3b 82 74 02 00 00    	cmp    0x274(%edx),%eax
    350e:	74 36                	je     3546 <find_entry+0x9b>
    3510:	66 83 78 2e 01       	cmpw   $0x1,0x2e(%eax)
    3515:	75 37                	jne    354e <find_entry+0xa3>
    3517:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    351b:	89 04 24             	mov    %eax,(%esp)
    351e:	e8 fc ff ff ff       	call   351f <find_entry+0x74>
    3523:	89 c3                	mov    %eax,%ebx
    3525:	83 78 5c 00          	cmpl   $0x0,0x5c(%eax)
    3529:	74 23                	je     354e <find_entry+0xa3>
    352b:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
    352f:	8b 45 00             	mov    0x0(%ebp),%eax
    3532:	89 04 24             	mov    %eax,(%esp)
    3535:	e8 fc ff ff ff       	call   3536 <find_entry+0x8b>
    353a:	8b 43 5c             	mov    0x5c(%ebx),%eax
    353d:	89 45 00             	mov    %eax,0x0(%ebp)
    3540:	66 ff 40 30          	incw   0x30(%eax)
    3544:	eb 08                	jmp    354e <find_entry+0xa3>
    3546:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
    354d:	00 
    354e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    3552:	8b 00                	mov    (%eax),%eax
    3554:	0f b7 50 0e          	movzwl 0xe(%eax),%edx
    3558:	85 d2                	test   %edx,%edx
    355a:	0f 84 ec 00 00 00    	je     364c <find_entry+0x1a1>
    3560:	89 54 24 04          	mov    %edx,0x4(%esp)
    3564:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    3568:	89 04 24             	mov    %eax,(%esp)
    356b:	e8 fc ff ff ff       	call   356c <find_entry+0xc1>
    3570:	89 c2                	mov    %eax,%edx
    3572:	85 c0                	test   %eax,%eax
    3574:	0f 84 d9 00 00 00    	je     3653 <find_entry+0x1a8>
    357a:	8b 18                	mov    (%eax),%ebx
    357c:	c1 ef 04             	shr    $0x4,%edi
    357f:	89 7c 24 18          	mov    %edi,0x18(%esp)
    3583:	0f 84 ad 00 00 00    	je     3636 <find_entry+0x18b>
    3589:	bd 00 00 00 00       	mov    $0x0,%ebp
    358e:	8b 02                	mov    (%edx),%eax
    3590:	05 00 04 00 00       	add    $0x400,%eax
    3595:	39 c3                	cmp    %eax,%ebx
    3597:	72 4f                	jb     35e8 <find_entry+0x13d>
    3599:	89 14 24             	mov    %edx,(%esp)
    359c:	e8 fc ff ff ff       	call   359d <find_entry+0xf2>
    35a1:	89 ef                	mov    %ebp,%edi
    35a3:	89 e8                	mov    %ebp,%eax
    35a5:	c1 e8 06             	shr    $0x6,%eax
    35a8:	89 44 24 04          	mov    %eax,0x4(%esp)
    35ac:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    35b0:	8b 00                	mov    (%eax),%eax
    35b2:	89 04 24             	mov    %eax,(%esp)
    35b5:	e8 fc ff ff ff       	call   35b6 <find_entry+0x10b>
    35ba:	85 c0                	test   %eax,%eax
    35bc:	74 1e                	je     35dc <find_entry+0x131>
    35be:	89 44 24 04          	mov    %eax,0x4(%esp)
    35c2:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    35c6:	8b 00                	mov    (%eax),%eax
    35c8:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    35cc:	89 04 24             	mov    %eax,(%esp)
    35cf:	e8 fc ff ff ff       	call   35d0 <find_entry+0x125>
    35d4:	89 c2                	mov    %eax,%edx
    35d6:	85 c0                	test   %eax,%eax
    35d8:	75 0c                	jne    35e6 <find_entry+0x13b>
    35da:	eb 05                	jmp    35e1 <find_entry+0x136>
    35dc:	ba 00 00 00 00       	mov    $0x0,%edx
    35e1:	8d 6f 40             	lea    0x40(%edi),%ebp
    35e4:	eb 46                	jmp    362c <find_entry+0x181>
    35e6:	8b 18                	mov    (%eax),%ebx
    35e8:	85 db                	test   %ebx,%ebx
    35ea:	74 3c                	je     3628 <find_entry+0x17d>
    35ec:	66 83 3b 00          	cmpw   $0x0,(%ebx)
    35f0:	74 36                	je     3628 <find_entry+0x17d>
    35f2:	8b 44 24 14          	mov    0x14(%esp),%eax
    35f6:	83 f8 0e             	cmp    $0xe,%eax
    35f9:	7f 2d                	jg     3628 <find_entry+0x17d>
    35fb:	83 f8 0d             	cmp    $0xd,%eax
    35fe:	7f 07                	jg     3607 <find_entry+0x15c>
    3600:	80 7c 03 02 00       	cmpb   $0x0,0x2(%ebx,%eax,1)
    3605:	75 21                	jne    3628 <find_entry+0x17d>
    3607:	8d 7b 02             	lea    0x2(%ebx),%edi
    360a:	b8 00 00 00 00       	mov    $0x0,%eax
    360f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    3613:	fc                   	cld    
    3614:	64 f3 a6             	repz cmpsb %es:(%edi),%fs:(%esi)
    3617:	0f 94 c0             	sete   %al
    361a:	85 c0                	test   %eax,%eax
    361c:	74 0a                	je     3628 <find_entry+0x17d>
    361e:	8b 44 24 40          	mov    0x40(%esp),%eax
    3622:	89 18                	mov    %ebx,(%eax)
    3624:	89 d0                	mov    %edx,%eax
    3626:	eb 30                	jmp    3658 <find_entry+0x1ad>
    3628:	83 c3 10             	add    $0x10,%ebx
    362b:	45                   	inc    %ebp
    362c:	3b 6c 24 18          	cmp    0x18(%esp),%ebp
    3630:	0f 8c 58 ff ff ff    	jl     358e <find_entry+0xe3>
    3636:	89 14 24             	mov    %edx,(%esp)
    3639:	e8 fc ff ff ff       	call   363a <find_entry+0x18f>
    363e:	b8 00 00 00 00       	mov    $0x0,%eax
    3643:	eb 13                	jmp    3658 <find_entry+0x1ad>
    3645:	b8 00 00 00 00       	mov    $0x0,%eax
    364a:	eb 0c                	jmp    3658 <find_entry+0x1ad>
    364c:	b8 00 00 00 00       	mov    $0x0,%eax
    3651:	eb 05                	jmp    3658 <find_entry+0x1ad>
    3653:	b8 00 00 00 00       	mov    $0x0,%eax
    3658:	83 c4 2c             	add    $0x2c,%esp
    365b:	5b                   	pop    %ebx
    365c:	5e                   	pop    %esi
    365d:	5f                   	pop    %edi
    365e:	5d                   	pop    %ebp
    365f:	c3                   	ret    

00003660 <dir_namei>:
    3660:	55                   	push   %ebp
    3661:	57                   	push   %edi
    3662:	56                   	push   %esi
    3663:	53                   	push   %ebx
    3664:	83 ec 2c             	sub    $0x2c,%esp
    3667:	89 c5                	mov    %eax,%ebp
    3669:	89 54 24 08          	mov    %edx,0x8(%esp)
    366d:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
    3671:	a1 00 00 00 00       	mov    0x0,%eax
    3676:	8b 80 74 02 00 00    	mov    0x274(%eax),%eax
    367c:	85 c0                	test   %eax,%eax
    367e:	74 07                	je     3687 <dir_namei+0x27>
    3680:	66 83 78 30 00       	cmpw   $0x0,0x30(%eax)
    3685:	75 0c                	jne    3693 <dir_namei+0x33>
    3687:	c7 04 24 ae 01 00 00 	movl   $0x1ae,(%esp)
    368e:	e8 fc ff ff ff       	call   368f <dir_namei+0x2f>
    3693:	a1 00 00 00 00       	mov    0x0,%eax
    3698:	8b 80 70 02 00 00    	mov    0x270(%eax),%eax
    369e:	85 c0                	test   %eax,%eax
    36a0:	74 07                	je     36a9 <dir_namei+0x49>
    36a2:	66 83 78 30 00       	cmpw   $0x0,0x30(%eax)
    36a7:	75 0c                	jne    36b5 <dir_namei+0x55>
    36a9:	c7 04 24 bc 01 00 00 	movl   $0x1bc,(%esp)
    36b0:	e8 fc ff ff ff       	call   36b1 <dir_namei+0x51>
    36b5:	64 8a 45 00          	mov    %fs:0x0(%ebp),%al
    36b9:	3c 2f                	cmp    $0x2f,%al
    36bb:	75 14                	jne    36d1 <dir_namei+0x71>
    36bd:	a1 00 00 00 00       	mov    0x0,%eax
    36c2:	8b 80 74 02 00 00    	mov    0x274(%eax),%eax
    36c8:	89 44 24 18          	mov    %eax,0x18(%esp)
    36cc:	8d 75 01             	lea    0x1(%ebp),%esi
    36cf:	eb 19                	jmp    36ea <dir_namei+0x8a>
    36d1:	84 c0                	test   %al,%al
    36d3:	0f 84 2b 01 00 00    	je     3804 <dir_namei+0x1a4>
    36d9:	a1 00 00 00 00       	mov    0x0,%eax
    36de:	8b 80 70 02 00 00    	mov    0x270(%eax),%eax
    36e4:	89 44 24 18          	mov    %eax,0x18(%esp)
    36e8:	89 ee                	mov    %ebp,%esi
    36ea:	8b 44 24 18          	mov    0x18(%esp),%eax
    36ee:	66 ff 40 30          	incw   0x30(%eax)
    36f2:	8b 7c 24 18          	mov    0x18(%esp),%edi
    36f6:	8b 07                	mov    (%edi),%eax
    36f8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    36fd:	66 3d 00 40          	cmp    $0x4000,%ax
    3701:	75 2f                	jne    3732 <dir_namei+0xd2>
    3703:	ba 01 00 00 00       	mov    $0x1,%edx
    3708:	89 f8                	mov    %edi,%eax
    370a:	e8 3d fd ff ff       	call   344c <permission>
    370f:	85 c0                	test   %eax,%eax
    3711:	74 1f                	je     3732 <dir_namei+0xd2>
    3713:	8d 46 01             	lea    0x1(%esi),%eax
    3716:	64 8a 16             	mov    %fs:(%esi),%dl
    3719:	84 d2                	test   %dl,%dl
    371b:	0f 84 87 00 00 00    	je     37a8 <dir_namei+0x148>
    3721:	80 fa 2f             	cmp    $0x2f,%dl
    3724:	75 19                	jne    373f <dir_namei+0xdf>
    3726:	89 c3                	mov    %eax,%ebx
    3728:	b9 00 00 00 00       	mov    $0x0,%ecx
    372d:	e9 b3 00 00 00       	jmp    37e5 <dir_namei+0x185>
    3732:	89 3c 24             	mov    %edi,(%esp)
    3735:	e8 fc ff ff ff       	call   3736 <dir_namei+0xd6>
    373a:	e9 c5 00 00 00       	jmp    3804 <dir_namei+0x1a4>
    373f:	89 c1                	mov    %eax,%ecx
    3741:	29 f1                	sub    %esi,%ecx
    3743:	8d 58 01             	lea    0x1(%eax),%ebx
    3746:	64 8a 00             	mov    %fs:(%eax),%al
    3749:	84 c0                	test   %al,%al
    374b:	74 5f                	je     37ac <dir_namei+0x14c>
    374d:	3c 2f                	cmp    $0x2f,%al
    374f:	0f 84 90 00 00 00    	je     37e5 <dir_namei+0x185>
    3755:	89 d8                	mov    %ebx,%eax
    3757:	eb e6                	jmp    373f <dir_namei+0xdf>
    3759:	8b 44 24 18          	mov    0x18(%esp),%eax
    375d:	89 04 24             	mov    %eax,(%esp)
    3760:	e8 fc ff ff ff       	call   3761 <dir_namei+0x101>
    3765:	e9 9a 00 00 00       	jmp    3804 <dir_namei+0x1a4>
    376a:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    376e:	0f b7 3a             	movzwl (%edx),%edi
    3771:	8b 54 24 18          	mov    0x18(%esp),%edx
    3775:	0f b7 72 2c          	movzwl 0x2c(%edx),%esi
    3779:	89 04 24             	mov    %eax,(%esp)
    377c:	e8 fc ff ff ff       	call   377d <dir_namei+0x11d>
    3781:	8b 44 24 18          	mov    0x18(%esp),%eax
    3785:	89 04 24             	mov    %eax,(%esp)
    3788:	e8 fc ff ff ff       	call   3789 <dir_namei+0x129>
    378d:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3791:	89 34 24             	mov    %esi,(%esp)
    3794:	e8 fc ff ff ff       	call   3795 <dir_namei+0x135>
    3799:	89 44 24 18          	mov    %eax,0x18(%esp)
    379d:	85 c0                	test   %eax,%eax
    379f:	74 63                	je     3804 <dir_namei+0x1a4>
    37a1:	89 de                	mov    %ebx,%esi
    37a3:	e9 4a ff ff ff       	jmp    36f2 <dir_namei+0x92>
    37a8:	89 f8                	mov    %edi,%eax
    37aa:	eb 02                	jmp    37ae <dir_namei+0x14e>
    37ac:	89 f8                	mov    %edi,%eax
    37ae:	85 c0                	test   %eax,%eax
    37b0:	74 2c                	je     37de <dir_namei+0x17e>
    37b2:	89 e9                	mov    %ebp,%ecx
    37b4:	eb 08                	jmp    37be <dir_namei+0x15e>
    37b6:	3c 2f                	cmp    $0x2f,%al
    37b8:	75 02                	jne    37bc <dir_namei+0x15c>
    37ba:	89 d1                	mov    %edx,%ecx
    37bc:	89 d5                	mov    %edx,%ebp
    37be:	8d 55 01             	lea    0x1(%ebp),%edx
    37c1:	64 8a 45 00          	mov    %fs:0x0(%ebp),%al
    37c5:	84 c0                	test   %al,%al
    37c7:	75 ed                	jne    37b6 <dir_namei+0x156>
    37c9:	29 ca                	sub    %ecx,%edx
    37cb:	8d 42 ff             	lea    -0x1(%edx),%eax
    37ce:	8b 54 24 08          	mov    0x8(%esp),%edx
    37d2:	89 02                	mov    %eax,(%edx)
    37d4:	8b 44 24 0c          	mov    0xc(%esp),%eax
    37d8:	89 08                	mov    %ecx,(%eax)
    37da:	89 f8                	mov    %edi,%eax
    37dc:	eb 2b                	jmp    3809 <dir_namei+0x1a9>
    37de:	b8 00 00 00 00       	mov    $0x0,%eax
    37e3:	eb 24                	jmp    3809 <dir_namei+0x1a9>
    37e5:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    37e9:	89 04 24             	mov    %eax,(%esp)
    37ec:	89 f2                	mov    %esi,%edx
    37ee:	8d 44 24 18          	lea    0x18(%esp),%eax
    37f2:	e8 b4 fc ff ff       	call   34ab <find_entry>
    37f7:	85 c0                	test   %eax,%eax
    37f9:	0f 85 6b ff ff ff    	jne    376a <dir_namei+0x10a>
    37ff:	e9 55 ff ff ff       	jmp    3759 <dir_namei+0xf9>
    3804:	b8 00 00 00 00       	mov    $0x0,%eax
    3809:	83 c4 2c             	add    $0x2c,%esp
    380c:	5b                   	pop    %ebx
    380d:	5e                   	pop    %esi
    380e:	5f                   	pop    %edi
    380f:	5d                   	pop    %ebp
    3810:	c3                   	ret    

00003811 <add_entry>:
    3811:	55                   	push   %ebp
    3812:	57                   	push   %edi
    3813:	56                   	push   %esi
    3814:	53                   	push   %ebx
    3815:	83 ec 1c             	sub    $0x1c,%esp
    3818:	89 c7                	mov    %eax,%edi
    381a:	89 54 24 0c          	mov    %edx,0xc(%esp)
    381e:	8b 44 24 30          	mov    0x30(%esp),%eax
    3822:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    3828:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    382c:	83 f9 0e             	cmp    $0xe,%ecx
    382f:	7e 08                	jle    3839 <add_entry+0x28>
    3831:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
    3838:	00 
    3839:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
    383e:	0f 84 11 01 00 00    	je     3955 <add_entry+0x144>
    3844:	0f b7 47 0e          	movzwl 0xe(%edi),%eax
    3848:	85 c0                	test   %eax,%eax
    384a:	0f 84 0c 01 00 00    	je     395c <add_entry+0x14b>
    3850:	89 44 24 04          	mov    %eax,0x4(%esp)
    3854:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
    3858:	89 04 24             	mov    %eax,(%esp)
    385b:	e8 fc ff ff ff       	call   385c <add_entry+0x4b>
    3860:	89 c1                	mov    %eax,%ecx
    3862:	85 c0                	test   %eax,%eax
    3864:	0f 84 f9 00 00 00    	je     3963 <add_entry+0x152>
    386a:	8b 18                	mov    (%eax),%ebx
    386c:	be 00 00 00 00       	mov    $0x0,%esi
    3871:	8b 01                	mov    (%ecx),%eax
    3873:	05 00 04 00 00       	add    $0x400,%eax
    3878:	39 c3                	cmp    %eax,%ebx
    387a:	72 3e                	jb     38ba <add_entry+0xa9>
    387c:	89 0c 24             	mov    %ecx,(%esp)
    387f:	e8 fc ff ff ff       	call   3880 <add_entry+0x6f>
    3884:	89 f0                	mov    %esi,%eax
    3886:	c1 e8 06             	shr    $0x6,%eax
    3889:	89 44 24 04          	mov    %eax,0x4(%esp)
    388d:	89 3c 24             	mov    %edi,(%esp)
    3890:	e8 fc ff ff ff       	call   3891 <add_entry+0x80>
    3895:	85 c0                	test   %eax,%eax
    3897:	0f 84 cd 00 00 00    	je     396a <add_entry+0x159>
    389d:	89 44 24 04          	mov    %eax,0x4(%esp)
    38a1:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
    38a5:	89 04 24             	mov    %eax,(%esp)
    38a8:	e8 fc ff ff ff       	call   38a9 <add_entry+0x98>
    38ad:	89 c1                	mov    %eax,%ecx
    38af:	85 c0                	test   %eax,%eax
    38b1:	75 05                	jne    38b8 <add_entry+0xa7>
    38b3:	8d 76 40             	lea    0x40(%esi),%esi
    38b6:	eb b9                	jmp    3871 <add_entry+0x60>
    38b8:	8b 18                	mov    (%eax),%ebx
    38ba:	89 f0                	mov    %esi,%eax
    38bc:	c1 e0 04             	shl    $0x4,%eax
    38bf:	3b 47 04             	cmp    0x4(%edi),%eax
    38c2:	72 2f                	jb     38f3 <add_entry+0xe2>
    38c4:	66 c7 03 00 00       	movw   $0x0,(%ebx)
    38c9:	83 c0 10             	add    $0x10,%eax
    38cc:	89 47 04             	mov    %eax,0x4(%edi)
    38cf:	c6 47 33 01          	movb   $0x1,0x33(%edi)
    38d3:	8b 2d 00 00 00 00    	mov    0x0,%ebp
    38d9:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    38de:	f7 ed                	imul   %ebp
    38e0:	89 d0                	mov    %edx,%eax
    38e2:	c1 f8 05             	sar    $0x5,%eax
    38e5:	c1 fd 1f             	sar    $0x1f,%ebp
    38e8:	29 e8                	sub    %ebp,%eax
    38ea:	03 05 00 00 00 00    	add    0x0,%eax
    38f0:	89 47 28             	mov    %eax,0x28(%edi)
    38f3:	66 83 3b 00          	cmpw   $0x0,(%ebx)
    38f7:	75 53                	jne    394c <add_entry+0x13b>
    38f9:	89 cd                	mov    %ecx,%ebp
    38fb:	8b 35 00 00 00 00    	mov    0x0,%esi
    3901:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3906:	f7 ee                	imul   %esi
    3908:	89 d0                	mov    %edx,%eax
    390a:	c1 f8 05             	sar    $0x5,%eax
    390d:	c1 fe 1f             	sar    $0x1f,%esi
    3910:	29 f0                	sub    %esi,%eax
    3912:	03 05 00 00 00 00    	add    0x0,%eax
    3918:	89 47 08             	mov    %eax,0x8(%edi)
    391b:	b8 00 00 00 00       	mov    $0x0,%eax
    3920:	8b 74 24 08          	mov    0x8(%esp),%esi
    3924:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    3928:	39 c6                	cmp    %eax,%esi
    392a:	7e 06                	jle    3932 <add_entry+0x121>
    392c:	64 8a 14 07          	mov    %fs:(%edi,%eax,1),%dl
    3930:	eb 02                	jmp    3934 <add_entry+0x123>
    3932:	b2 00                	mov    $0x0,%dl
    3934:	88 54 03 02          	mov    %dl,0x2(%ebx,%eax,1)
    3938:	40                   	inc    %eax
    3939:	83 f8 0e             	cmp    $0xe,%eax
    393c:	75 ea                	jne    3928 <add_entry+0x117>
    393e:	c6 45 0b 01          	movb   $0x1,0xb(%ebp)
    3942:	8b 44 24 30          	mov    0x30(%esp),%eax
    3946:	89 18                	mov    %ebx,(%eax)
    3948:	89 c8                	mov    %ecx,%eax
    394a:	eb 23                	jmp    396f <add_entry+0x15e>
    394c:	83 c3 10             	add    $0x10,%ebx
    394f:	46                   	inc    %esi
    3950:	e9 1c ff ff ff       	jmp    3871 <add_entry+0x60>
    3955:	b8 00 00 00 00       	mov    $0x0,%eax
    395a:	eb 13                	jmp    396f <add_entry+0x15e>
    395c:	b8 00 00 00 00       	mov    $0x0,%eax
    3961:	eb 0c                	jmp    396f <add_entry+0x15e>
    3963:	b8 00 00 00 00       	mov    $0x0,%eax
    3968:	eb 05                	jmp    396f <add_entry+0x15e>
    396a:	b8 00 00 00 00       	mov    $0x0,%eax
    396f:	83 c4 1c             	add    $0x1c,%esp
    3972:	5b                   	pop    %ebx
    3973:	5e                   	pop    %esi
    3974:	5f                   	pop    %edi
    3975:	5d                   	pop    %ebp
    3976:	c3                   	ret    

00003977 <namei>:
    3977:	56                   	push   %esi
    3978:	53                   	push   %ebx
    3979:	83 ec 24             	sub    $0x24,%esp
    397c:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
    3980:	8d 54 24 18          	lea    0x18(%esp),%edx
    3984:	8b 44 24 30          	mov    0x30(%esp),%eax
    3988:	e8 d3 fc ff ff       	call   3660 <dir_namei>
    398d:	89 44 24 14          	mov    %eax,0x14(%esp)
    3991:	85 c0                	test   %eax,%eax
    3993:	0f 84 9a 00 00 00    	je     3a33 <namei+0xbc>
    3999:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    399d:	85 c9                	test   %ecx,%ecx
    399f:	0f 84 95 00 00 00    	je     3a3a <namei+0xc3>
    39a5:	8d 44 24 10          	lea    0x10(%esp),%eax
    39a9:	89 04 24             	mov    %eax,(%esp)
    39ac:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    39b0:	8d 44 24 14          	lea    0x14(%esp),%eax
    39b4:	e8 f2 fa ff ff       	call   34ab <find_entry>
    39b9:	85 c0                	test   %eax,%eax
    39bb:	75 13                	jne    39d0 <namei+0x59>
    39bd:	8b 44 24 14          	mov    0x14(%esp),%eax
    39c1:	89 04 24             	mov    %eax,(%esp)
    39c4:	e8 fc ff ff ff       	call   39c5 <namei+0x4e>
    39c9:	b8 00 00 00 00       	mov    $0x0,%eax
    39ce:	eb 6a                	jmp    3a3a <namei+0xc3>
    39d0:	8b 54 24 10          	mov    0x10(%esp),%edx
    39d4:	0f b7 32             	movzwl (%edx),%esi
    39d7:	8b 54 24 14          	mov    0x14(%esp),%edx
    39db:	0f b7 5a 2c          	movzwl 0x2c(%edx),%ebx
    39df:	89 04 24             	mov    %eax,(%esp)
    39e2:	e8 fc ff ff ff       	call   39e3 <namei+0x6c>
    39e7:	8b 44 24 14          	mov    0x14(%esp),%eax
    39eb:	89 04 24             	mov    %eax,(%esp)
    39ee:	e8 fc ff ff ff       	call   39ef <namei+0x78>
    39f3:	89 74 24 04          	mov    %esi,0x4(%esp)
    39f7:	89 1c 24             	mov    %ebx,(%esp)
    39fa:	e8 fc ff ff ff       	call   39fb <namei+0x84>
    39ff:	89 c3                	mov    %eax,%ebx
    3a01:	89 44 24 14          	mov    %eax,0x14(%esp)
    3a05:	85 c0                	test   %eax,%eax
    3a07:	74 31                	je     3a3a <namei+0xc3>
    3a09:	8b 35 00 00 00 00    	mov    0x0,%esi
    3a0f:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    3a14:	89 c8                	mov    %ecx,%eax
    3a16:	f7 ee                	imul   %esi
    3a18:	89 d0                	mov    %edx,%eax
    3a1a:	c1 f8 05             	sar    $0x5,%eax
    3a1d:	c1 fe 1f             	sar    $0x1f,%esi
    3a20:	29 f0                	sub    %esi,%eax
    3a22:	03 05 00 00 00 00    	add    0x0,%eax
    3a28:	89 43 24             	mov    %eax,0x24(%ebx)
    3a2b:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    3a2f:	89 d8                	mov    %ebx,%eax
    3a31:	eb 07                	jmp    3a3a <namei+0xc3>
    3a33:	b8 00 00 00 00       	mov    $0x0,%eax
    3a38:	eb 00                	jmp    3a3a <namei+0xc3>
    3a3a:	83 c4 24             	add    $0x24,%esp
    3a3d:	5b                   	pop    %ebx
    3a3e:	5e                   	pop    %esi
    3a3f:	c3                   	ret    

00003a40 <open_namei>:
    3a40:	55                   	push   %ebp
    3a41:	57                   	push   %edi
    3a42:	56                   	push   %esi
    3a43:	53                   	push   %ebx
    3a44:	83 ec 2c             	sub    $0x2c,%esp
    3a47:	8b 5c 24 44          	mov    0x44(%esp),%ebx
    3a4b:	89 d8                	mov    %ebx,%eax
    3a4d:	25 03 02 00 00       	and    $0x203,%eax
    3a52:	3d 00 02 00 00       	cmp    $0x200,%eax
    3a57:	75 03                	jne    3a5c <open_namei+0x1c>
    3a59:	83 cb 01             	or     $0x1,%ebx
    3a5c:	a1 00 00 00 00       	mov    0x0,%eax
    3a61:	8b b0 6c 02 00 00    	mov    0x26c(%eax),%esi
    3a67:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
    3a6b:	8d 54 24 18          	lea    0x18(%esp),%edx
    3a6f:	8b 44 24 40          	mov    0x40(%esp),%eax
    3a73:	e8 e8 fb ff ff       	call   3660 <dir_namei>
    3a78:	89 44 24 14          	mov    %eax,0x14(%esp)
    3a7c:	85 c0                	test   %eax,%eax
    3a7e:	0f 84 fd 01 00 00    	je     3c81 <open_namei+0x241>
    3a84:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    3a88:	85 c9                	test   %ecx,%ecx
    3a8a:	75 27                	jne    3ab3 <open_namei+0x73>
    3a8c:	89 de                	mov    %ebx,%esi
    3a8e:	81 e6 43 02 00 00    	and    $0x243,%esi
    3a94:	75 0b                	jne    3aa1 <open_namei+0x61>
    3a96:	8b 7c 24 4c          	mov    0x4c(%esp),%edi
    3a9a:	89 07                	mov    %eax,(%edi)
    3a9c:	e9 f3 01 00 00       	jmp    3c94 <open_namei+0x254>
    3aa1:	89 04 24             	mov    %eax,(%esp)
    3aa4:	e8 fc ff ff ff       	call   3aa5 <open_namei+0x65>
    3aa9:	be eb ff ff ff       	mov    $0xffffffeb,%esi
    3aae:	e9 e1 01 00 00       	jmp    3c94 <open_namei+0x254>
    3ab3:	8d 44 24 10          	lea    0x10(%esp),%eax
    3ab7:	89 04 24             	mov    %eax,(%esp)
    3aba:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    3abe:	8d 44 24 14          	lea    0x14(%esp),%eax
    3ac2:	e8 e4 f9 ff ff       	call   34ab <find_entry>
    3ac7:	85 c0                	test   %eax,%eax
    3ac9:	0f 85 02 01 00 00    	jne    3bd1 <open_namei+0x191>
    3acf:	f6 c3 40             	test   $0x40,%bl
    3ad2:	75 16                	jne    3aea <open_namei+0xaa>
    3ad4:	8b 44 24 14          	mov    0x14(%esp),%eax
    3ad8:	89 04 24             	mov    %eax,(%esp)
    3adb:	e8 fc ff ff ff       	call   3adc <open_namei+0x9c>
    3ae0:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    3ae5:	e9 aa 01 00 00       	jmp    3c94 <open_namei+0x254>
    3aea:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    3aee:	ba 02 00 00 00       	mov    $0x2,%edx
    3af3:	89 d8                	mov    %ebx,%eax
    3af5:	e8 52 f9 ff ff       	call   344c <permission>
    3afa:	85 c0                	test   %eax,%eax
    3afc:	75 12                	jne    3b10 <open_namei+0xd0>
    3afe:	89 1c 24             	mov    %ebx,(%esp)
    3b01:	e8 fc ff ff ff       	call   3b02 <open_namei+0xc2>
    3b06:	be f3 ff ff ff       	mov    $0xfffffff3,%esi
    3b0b:	e9 84 01 00 00       	jmp    3c94 <open_namei+0x254>
    3b10:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    3b14:	89 04 24             	mov    %eax,(%esp)
    3b17:	e8 fc ff ff ff       	call   3b18 <open_namei+0xd8>
    3b1c:	89 c3                	mov    %eax,%ebx
    3b1e:	85 c0                	test   %eax,%eax
    3b20:	75 16                	jne    3b38 <open_namei+0xf8>
    3b22:	8b 44 24 14          	mov    0x14(%esp),%eax
    3b26:	89 04 24             	mov    %eax,(%esp)
    3b29:	e8 fc ff ff ff       	call   3b2a <open_namei+0xea>
    3b2e:	be e4 ff ff ff       	mov    $0xffffffe4,%esi
    3b33:	e9 5c 01 00 00       	jmp    3c94 <open_namei+0x254>
    3b38:	a1 00 00 00 00       	mov    0x0,%eax
    3b3d:	66 8b 80 42 02 00 00 	mov    0x242(%eax),%ax
    3b44:	66 89 43 02          	mov    %ax,0x2(%ebx)
    3b48:	f7 d6                	not    %esi
    3b4a:	81 e6 ff 01 00 00    	and    $0x1ff,%esi
    3b50:	23 74 24 48          	and    0x48(%esp),%esi
    3b54:	81 ce 00 80 00 00    	or     $0x8000,%esi
    3b5a:	66 89 33             	mov    %si,(%ebx)
    3b5d:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    3b61:	8d 44 24 10          	lea    0x10(%esp),%eax
    3b65:	89 04 24             	mov    %eax,(%esp)
    3b68:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    3b6c:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    3b70:	8b 44 24 14          	mov    0x14(%esp),%eax
    3b74:	e8 98 fc ff ff       	call   3811 <add_entry>
    3b79:	85 c0                	test   %eax,%eax
    3b7b:	75 21                	jne    3b9e <open_namei+0x15e>
    3b7d:	fe 4b 0d             	decb   0xd(%ebx)
    3b80:	89 1c 24             	mov    %ebx,(%esp)
    3b83:	e8 fc ff ff ff       	call   3b84 <open_namei+0x144>
    3b88:	8b 44 24 14          	mov    0x14(%esp),%eax
    3b8c:	89 04 24             	mov    %eax,(%esp)
    3b8f:	e8 fc ff ff ff       	call   3b90 <open_namei+0x150>
    3b94:	be e4 ff ff ff       	mov    $0xffffffe4,%esi
    3b99:	e9 f6 00 00 00       	jmp    3c94 <open_namei+0x254>
    3b9e:	66 8b 4b 2e          	mov    0x2e(%ebx),%cx
    3ba2:	8b 54 24 10          	mov    0x10(%esp),%edx
    3ba6:	66 89 0a             	mov    %cx,(%edx)
    3ba9:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    3bad:	89 04 24             	mov    %eax,(%esp)
    3bb0:	e8 fc ff ff ff       	call   3bb1 <open_namei+0x171>
    3bb5:	8b 44 24 14          	mov    0x14(%esp),%eax
    3bb9:	89 04 24             	mov    %eax,(%esp)
    3bbc:	e8 fc ff ff ff       	call   3bbd <open_namei+0x17d>
    3bc1:	8b 44 24 4c          	mov    0x4c(%esp),%eax
    3bc5:	89 18                	mov    %ebx,(%eax)
    3bc7:	be 00 00 00 00       	mov    $0x0,%esi
    3bcc:	e9 c3 00 00 00       	jmp    3c94 <open_namei+0x254>
    3bd1:	8b 54 24 10          	mov    0x10(%esp),%edx
    3bd5:	0f b7 2a             	movzwl (%edx),%ebp
    3bd8:	8b 54 24 14          	mov    0x14(%esp),%edx
    3bdc:	0f b7 7a 2c          	movzwl 0x2c(%edx),%edi
    3be0:	89 04 24             	mov    %eax,(%esp)
    3be3:	e8 fc ff ff ff       	call   3be4 <open_namei+0x1a4>
    3be8:	8b 44 24 14          	mov    0x14(%esp),%eax
    3bec:	89 04 24             	mov    %eax,(%esp)
    3bef:	e8 fc ff ff ff       	call   3bf0 <open_namei+0x1b0>
    3bf4:	89 de                	mov    %ebx,%esi
    3bf6:	81 e6 80 00 00 00    	and    $0x80,%esi
    3bfc:	0f 85 86 00 00 00    	jne    3c88 <open_namei+0x248>
    3c02:	89 6c 24 04          	mov    %ebp,0x4(%esp)
    3c06:	89 3c 24             	mov    %edi,(%esp)
    3c09:	e8 fc ff ff ff       	call   3c0a <open_namei+0x1ca>
    3c0e:	89 c7                	mov    %eax,%edi
    3c10:	85 c0                	test   %eax,%eax
    3c12:	74 7b                	je     3c8f <open_namei+0x24f>
    3c14:	8b 00                	mov    (%eax),%eax
    3c16:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    3c1b:	66 3d 00 40          	cmp    $0x4000,%ax
    3c1f:	75 05                	jne    3c26 <open_namei+0x1e6>
    3c21:	f6 c3 03             	test   $0x3,%bl
    3c24:	75 17                	jne    3c3d <open_namei+0x1fd>
    3c26:	89 d8                	mov    %ebx,%eax
    3c28:	83 e0 03             	and    $0x3,%eax
    3c2b:	0f be 90 c9 01 00 00 	movsbl 0x1c9(%eax),%edx
    3c32:	89 f8                	mov    %edi,%eax
    3c34:	e8 13 f8 ff ff       	call   344c <permission>
    3c39:	85 c0                	test   %eax,%eax
    3c3b:	75 0f                	jne    3c4c <open_namei+0x20c>
    3c3d:	89 3c 24             	mov    %edi,(%esp)
    3c40:	e8 fc ff ff ff       	call   3c41 <open_namei+0x201>
    3c45:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3c4a:	eb 48                	jmp    3c94 <open_namei+0x254>
    3c4c:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    3c52:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3c57:	f7 e9                	imul   %ecx
    3c59:	89 d0                	mov    %edx,%eax
    3c5b:	c1 f8 05             	sar    $0x5,%eax
    3c5e:	c1 f9 1f             	sar    $0x1f,%ecx
    3c61:	29 c8                	sub    %ecx,%eax
    3c63:	03 05 00 00 00 00    	add    0x0,%eax
    3c69:	89 47 24             	mov    %eax,0x24(%edi)
    3c6c:	f6 c7 02             	test   $0x2,%bh
    3c6f:	74 08                	je     3c79 <open_namei+0x239>
    3c71:	89 3c 24             	mov    %edi,(%esp)
    3c74:	e8 fc ff ff ff       	call   3c75 <open_namei+0x235>
    3c79:	8b 44 24 4c          	mov    0x4c(%esp),%eax
    3c7d:	89 38                	mov    %edi,(%eax)
    3c7f:	eb 13                	jmp    3c94 <open_namei+0x254>
    3c81:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    3c86:	eb 0c                	jmp    3c94 <open_namei+0x254>
    3c88:	be ef ff ff ff       	mov    $0xffffffef,%esi
    3c8d:	eb 05                	jmp    3c94 <open_namei+0x254>
    3c8f:	be f3 ff ff ff       	mov    $0xfffffff3,%esi
    3c94:	89 f0                	mov    %esi,%eax
    3c96:	83 c4 2c             	add    $0x2c,%esp
    3c99:	5b                   	pop    %ebx
    3c9a:	5e                   	pop    %esi
    3c9b:	5f                   	pop    %edi
    3c9c:	5d                   	pop    %ebp
    3c9d:	c3                   	ret    

00003c9e <sys_mknod>:
    3c9e:	57                   	push   %edi
    3c9f:	56                   	push   %esi
    3ca0:	53                   	push   %ebx
    3ca1:	83 ec 20             	sub    $0x20,%esp
    3ca4:	8b 7c 24 34          	mov    0x34(%esp),%edi
    3ca8:	a1 00 00 00 00       	mov    0x0,%eax
    3cad:	66 83 b8 42 02 00 00 	cmpw   $0x0,0x242(%eax)
    3cb4:	00 
    3cb5:	0f 85 6c 01 00 00    	jne    3e27 <sys_mknod+0x189>
    3cbb:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
    3cbf:	8d 54 24 18          	lea    0x18(%esp),%edx
    3cc3:	8b 44 24 30          	mov    0x30(%esp),%eax
    3cc7:	e8 94 f9 ff ff       	call   3660 <dir_namei>
    3ccc:	89 c3                	mov    %eax,%ebx
    3cce:	89 44 24 14          	mov    %eax,0x14(%esp)
    3cd2:	85 c0                	test   %eax,%eax
    3cd4:	0f 84 54 01 00 00    	je     3e2e <sys_mknod+0x190>
    3cda:	8b 74 24 18          	mov    0x18(%esp),%esi
    3cde:	85 f6                	test   %esi,%esi
    3ce0:	75 12                	jne    3cf4 <sys_mknod+0x56>
    3ce2:	89 04 24             	mov    %eax,(%esp)
    3ce5:	e8 fc ff ff ff       	call   3ce6 <sys_mknod+0x48>
    3cea:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    3cef:	e9 3f 01 00 00       	jmp    3e33 <sys_mknod+0x195>
    3cf4:	ba 02 00 00 00       	mov    $0x2,%edx
    3cf9:	e8 4e f7 ff ff       	call   344c <permission>
    3cfe:	85 c0                	test   %eax,%eax
    3d00:	75 12                	jne    3d14 <sys_mknod+0x76>
    3d02:	89 1c 24             	mov    %ebx,(%esp)
    3d05:	e8 fc ff ff ff       	call   3d06 <sys_mknod+0x68>
    3d0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3d0f:	e9 1f 01 00 00       	jmp    3e33 <sys_mknod+0x195>
    3d14:	8d 44 24 10          	lea    0x10(%esp),%eax
    3d18:	89 04 24             	mov    %eax,(%esp)
    3d1b:	89 f1                	mov    %esi,%ecx
    3d1d:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    3d21:	8d 44 24 14          	lea    0x14(%esp),%eax
    3d25:	e8 81 f7 ff ff       	call   34ab <find_entry>
    3d2a:	85 c0                	test   %eax,%eax
    3d2c:	74 1e                	je     3d4c <sys_mknod+0xae>
    3d2e:	89 04 24             	mov    %eax,(%esp)
    3d31:	e8 fc ff ff ff       	call   3d32 <sys_mknod+0x94>
    3d36:	8b 44 24 14          	mov    0x14(%esp),%eax
    3d3a:	89 04 24             	mov    %eax,(%esp)
    3d3d:	e8 fc ff ff ff       	call   3d3e <sys_mknod+0xa0>
    3d42:	b8 ef ff ff ff       	mov    $0xffffffef,%eax
    3d47:	e9 e7 00 00 00       	jmp    3e33 <sys_mknod+0x195>
    3d4c:	8b 44 24 14          	mov    0x14(%esp),%eax
    3d50:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    3d54:	89 04 24             	mov    %eax,(%esp)
    3d57:	e8 fc ff ff ff       	call   3d58 <sys_mknod+0xba>
    3d5c:	89 c3                	mov    %eax,%ebx
    3d5e:	85 c0                	test   %eax,%eax
    3d60:	75 16                	jne    3d78 <sys_mknod+0xda>
    3d62:	8b 44 24 14          	mov    0x14(%esp),%eax
    3d66:	89 04 24             	mov    %eax,(%esp)
    3d69:	e8 fc ff ff ff       	call   3d6a <sys_mknod+0xcc>
    3d6e:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    3d73:	e9 bb 00 00 00       	jmp    3e33 <sys_mknod+0x195>
    3d78:	66 89 38             	mov    %di,(%eax)
    3d7b:	81 e7 00 b0 00 00    	and    $0xb000,%edi
    3d81:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
    3d87:	75 08                	jne    3d91 <sys_mknod+0xf3>
    3d89:	8b 44 24 38          	mov    0x38(%esp),%eax
    3d8d:	66 89 43 0e          	mov    %ax,0xe(%ebx)
    3d91:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    3d97:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3d9c:	f7 e9                	imul   %ecx
    3d9e:	89 d0                	mov    %edx,%eax
    3da0:	c1 f8 05             	sar    $0x5,%eax
    3da3:	c1 f9 1f             	sar    $0x1f,%ecx
    3da6:	29 c8                	sub    %ecx,%eax
    3da8:	03 05 00 00 00 00    	add    0x0,%eax
    3dae:	89 43 24             	mov    %eax,0x24(%ebx)
    3db1:	89 43 08             	mov    %eax,0x8(%ebx)
    3db4:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    3db8:	8d 44 24 10          	lea    0x10(%esp),%eax
    3dbc:	89 04 24             	mov    %eax,(%esp)
    3dbf:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    3dc3:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    3dc7:	8b 44 24 14          	mov    0x14(%esp),%eax
    3dcb:	e8 41 fa ff ff       	call   3811 <add_entry>
    3dd0:	89 c6                	mov    %eax,%esi
    3dd2:	85 c0                	test   %eax,%eax
    3dd4:	75 1f                	jne    3df5 <sys_mknod+0x157>
    3dd6:	8b 44 24 14          	mov    0x14(%esp),%eax
    3dda:	89 04 24             	mov    %eax,(%esp)
    3ddd:	e8 fc ff ff ff       	call   3dde <sys_mknod+0x140>
    3de2:	c6 43 0d 00          	movb   $0x0,0xd(%ebx)
    3de6:	89 1c 24             	mov    %ebx,(%esp)
    3de9:	e8 fc ff ff ff       	call   3dea <sys_mknod+0x14c>
    3dee:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    3df3:	eb 3e                	jmp    3e33 <sys_mknod+0x195>
    3df5:	66 8b 53 2e          	mov    0x2e(%ebx),%dx
    3df9:	8b 44 24 10          	mov    0x10(%esp),%eax
    3dfd:	66 89 10             	mov    %dx,(%eax)
    3e00:	c6 46 0b 01          	movb   $0x1,0xb(%esi)
    3e04:	8b 44 24 14          	mov    0x14(%esp),%eax
    3e08:	89 04 24             	mov    %eax,(%esp)
    3e0b:	e8 fc ff ff ff       	call   3e0c <sys_mknod+0x16e>
    3e10:	89 1c 24             	mov    %ebx,(%esp)
    3e13:	e8 fc ff ff ff       	call   3e14 <sys_mknod+0x176>
    3e18:	89 34 24             	mov    %esi,(%esp)
    3e1b:	e8 fc ff ff ff       	call   3e1c <sys_mknod+0x17e>
    3e20:	b8 00 00 00 00       	mov    $0x0,%eax
    3e25:	eb 0c                	jmp    3e33 <sys_mknod+0x195>
    3e27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3e2c:	eb 05                	jmp    3e33 <sys_mknod+0x195>
    3e2e:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    3e33:	83 c4 20             	add    $0x20,%esp
    3e36:	5b                   	pop    %ebx
    3e37:	5e                   	pop    %esi
    3e38:	5f                   	pop    %edi
    3e39:	c3                   	ret    

00003e3a <sys_mkdir>:
    3e3a:	a1 00 00 00 00       	mov    0x0,%eax
    3e3f:	66 83 b8 42 02 00 00 	cmpw   $0x0,0x242(%eax)
    3e46:	00 
    3e47:	0f 85 68 02 00 00    	jne    40b5 <sys_mkdir+0x27b>
    3e4d:	56                   	push   %esi
    3e4e:	53                   	push   %ebx
    3e4f:	83 ec 24             	sub    $0x24,%esp
    3e52:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
    3e56:	8d 54 24 18          	lea    0x18(%esp),%edx
    3e5a:	8b 44 24 30          	mov    0x30(%esp),%eax
    3e5e:	e8 fd f7 ff ff       	call   3660 <dir_namei>
    3e63:	89 c3                	mov    %eax,%ebx
    3e65:	89 44 24 14          	mov    %eax,0x14(%esp)
    3e69:	85 c0                	test   %eax,%eax
    3e6b:	0f 84 4a 02 00 00    	je     40bb <sys_mkdir+0x281>
    3e71:	8b 74 24 18          	mov    0x18(%esp),%esi
    3e75:	85 f6                	test   %esi,%esi
    3e77:	75 12                	jne    3e8b <sys_mkdir+0x51>
    3e79:	89 04 24             	mov    %eax,(%esp)
    3e7c:	e8 fc ff ff ff       	call   3e7d <sys_mkdir+0x43>
    3e81:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    3e86:	e9 35 02 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3e8b:	ba 02 00 00 00       	mov    $0x2,%edx
    3e90:	e8 b7 f5 ff ff       	call   344c <permission>
    3e95:	85 c0                	test   %eax,%eax
    3e97:	75 12                	jne    3eab <sys_mkdir+0x71>
    3e99:	89 1c 24             	mov    %ebx,(%esp)
    3e9c:	e8 fc ff ff ff       	call   3e9d <sys_mkdir+0x63>
    3ea1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3ea6:	e9 15 02 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3eab:	8d 44 24 10          	lea    0x10(%esp),%eax
    3eaf:	89 04 24             	mov    %eax,(%esp)
    3eb2:	89 f1                	mov    %esi,%ecx
    3eb4:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    3eb8:	8d 44 24 14          	lea    0x14(%esp),%eax
    3ebc:	e8 ea f5 ff ff       	call   34ab <find_entry>
    3ec1:	85 c0                	test   %eax,%eax
    3ec3:	74 1e                	je     3ee3 <sys_mkdir+0xa9>
    3ec5:	89 04 24             	mov    %eax,(%esp)
    3ec8:	e8 fc ff ff ff       	call   3ec9 <sys_mkdir+0x8f>
    3ecd:	8b 44 24 14          	mov    0x14(%esp),%eax
    3ed1:	89 04 24             	mov    %eax,(%esp)
    3ed4:	e8 fc ff ff ff       	call   3ed5 <sys_mkdir+0x9b>
    3ed9:	b8 ef ff ff ff       	mov    $0xffffffef,%eax
    3ede:	e9 dd 01 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3ee3:	8b 44 24 14          	mov    0x14(%esp),%eax
    3ee7:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    3eeb:	89 04 24             	mov    %eax,(%esp)
    3eee:	e8 fc ff ff ff       	call   3eef <sys_mkdir+0xb5>
    3ef3:	89 c3                	mov    %eax,%ebx
    3ef5:	85 c0                	test   %eax,%eax
    3ef7:	75 16                	jne    3f0f <sys_mkdir+0xd5>
    3ef9:	8b 44 24 14          	mov    0x14(%esp),%eax
    3efd:	89 04 24             	mov    %eax,(%esp)
    3f00:	e8 fc ff ff ff       	call   3f01 <sys_mkdir+0xc7>
    3f05:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    3f0a:	e9 b1 01 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3f0f:	c7 40 04 20 00 00 00 	movl   $0x20,0x4(%eax)
    3f16:	c6 40 33 01          	movb   $0x1,0x33(%eax)
    3f1a:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    3f20:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3f25:	f7 e9                	imul   %ecx
    3f27:	89 d0                	mov    %edx,%eax
    3f29:	c1 f8 05             	sar    $0x5,%eax
    3f2c:	c1 f9 1f             	sar    $0x1f,%ecx
    3f2f:	29 c8                	sub    %ecx,%eax
    3f31:	03 05 00 00 00 00    	add    0x0,%eax
    3f37:	89 43 24             	mov    %eax,0x24(%ebx)
    3f3a:	89 43 08             	mov    %eax,0x8(%ebx)
    3f3d:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    3f41:	89 04 24             	mov    %eax,(%esp)
    3f44:	e8 fc ff ff ff       	call   3f45 <sys_mkdir+0x10b>
    3f49:	66 89 43 0e          	mov    %ax,0xe(%ebx)
    3f4d:	66 85 c0             	test   %ax,%ax
    3f50:	75 21                	jne    3f73 <sys_mkdir+0x139>
    3f52:	8b 44 24 14          	mov    0x14(%esp),%eax
    3f56:	89 04 24             	mov    %eax,(%esp)
    3f59:	e8 fc ff ff ff       	call   3f5a <sys_mkdir+0x120>
    3f5e:	fe 4b 0d             	decb   0xd(%ebx)
    3f61:	89 1c 24             	mov    %ebx,(%esp)
    3f64:	e8 fc ff ff ff       	call   3f65 <sys_mkdir+0x12b>
    3f69:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    3f6e:	e9 4d 01 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3f73:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    3f77:	0f b7 c0             	movzwl %ax,%eax
    3f7a:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f7e:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    3f82:	89 04 24             	mov    %eax,(%esp)
    3f85:	e8 fc ff ff ff       	call   3f86 <sys_mkdir+0x14c>
    3f8a:	85 c0                	test   %eax,%eax
    3f8c:	75 35                	jne    3fc3 <sys_mkdir+0x189>
    3f8e:	8b 44 24 14          	mov    0x14(%esp),%eax
    3f92:	89 04 24             	mov    %eax,(%esp)
    3f95:	e8 fc ff ff ff       	call   3f96 <sys_mkdir+0x15c>
    3f9a:	0f b7 43 0e          	movzwl 0xe(%ebx),%eax
    3f9e:	89 44 24 04          	mov    %eax,0x4(%esp)
    3fa2:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    3fa6:	89 04 24             	mov    %eax,(%esp)
    3fa9:	e8 fc ff ff ff       	call   3faa <sys_mkdir+0x170>
    3fae:	fe 4b 0d             	decb   0xd(%ebx)
    3fb1:	89 1c 24             	mov    %ebx,(%esp)
    3fb4:	e8 fc ff ff ff       	call   3fb5 <sys_mkdir+0x17b>
    3fb9:	b8 9d ff ff ff       	mov    $0xffffff9d,%eax
    3fbe:	e9 fd 00 00 00       	jmp    40c0 <sys_mkdir+0x286>
    3fc3:	8b 10                	mov    (%eax),%edx
    3fc5:	89 54 24 10          	mov    %edx,0x10(%esp)
    3fc9:	66 8b 4b 2e          	mov    0x2e(%ebx),%cx
    3fcd:	66 89 0a             	mov    %cx,(%edx)
    3fd0:	8b 54 24 10          	mov    0x10(%esp),%edx
    3fd4:	66 c7 42 02 2e 00    	movw   $0x2e,0x2(%edx)
    3fda:	8b 54 24 10          	mov    0x10(%esp),%edx
    3fde:	8d 4a 10             	lea    0x10(%edx),%ecx
    3fe1:	89 4c 24 10          	mov    %ecx,0x10(%esp)
    3fe5:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    3fe9:	66 8b 49 2e          	mov    0x2e(%ecx),%cx
    3fed:	66 89 4a 10          	mov    %cx,0x10(%edx)
    3ff1:	66 c7 42 12 2e 2e    	movw   $0x2e2e,0x12(%edx)
    3ff7:	c6 42 14 00          	movb   $0x0,0x14(%edx)
    3ffb:	c6 43 0d 02          	movb   $0x2,0xd(%ebx)
    3fff:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    4003:	89 04 24             	mov    %eax,(%esp)
    4006:	e8 fc ff ff ff       	call   4007 <sys_mkdir+0x1cd>
    400b:	a1 00 00 00 00       	mov    0x0,%eax
    4010:	8b 80 6c 02 00 00    	mov    0x26c(%eax),%eax
    4016:	f7 d0                	not    %eax
    4018:	25 ff 01 00 00       	and    $0x1ff,%eax
    401d:	23 44 24 34          	and    0x34(%esp),%eax
    4021:	80 cc 40             	or     $0x40,%ah
    4024:	66 89 03             	mov    %ax,(%ebx)
    4027:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    402b:	8d 44 24 10          	lea    0x10(%esp),%eax
    402f:	89 04 24             	mov    %eax,(%esp)
    4032:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    4036:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    403a:	8b 44 24 14          	mov    0x14(%esp),%eax
    403e:	e8 ce f7 ff ff       	call   3811 <add_entry>
    4043:	89 c6                	mov    %eax,%esi
    4045:	85 c0                	test   %eax,%eax
    4047:	75 33                	jne    407c <sys_mkdir+0x242>
    4049:	8b 44 24 14          	mov    0x14(%esp),%eax
    404d:	89 04 24             	mov    %eax,(%esp)
    4050:	e8 fc ff ff ff       	call   4051 <sys_mkdir+0x217>
    4055:	0f b7 43 0e          	movzwl 0xe(%ebx),%eax
    4059:	89 44 24 04          	mov    %eax,0x4(%esp)
    405d:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    4061:	89 04 24             	mov    %eax,(%esp)
    4064:	e8 fc ff ff ff       	call   4065 <sys_mkdir+0x22b>
    4069:	c6 43 0d 00          	movb   $0x0,0xd(%ebx)
    406d:	89 1c 24             	mov    %ebx,(%esp)
    4070:	e8 fc ff ff ff       	call   4071 <sys_mkdir+0x237>
    4075:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    407a:	eb 44                	jmp    40c0 <sys_mkdir+0x286>
    407c:	66 8b 53 2e          	mov    0x2e(%ebx),%dx
    4080:	8b 44 24 10          	mov    0x10(%esp),%eax
    4084:	66 89 10             	mov    %dx,(%eax)
    4087:	c6 46 0b 01          	movb   $0x1,0xb(%esi)
    408b:	8b 54 24 14          	mov    0x14(%esp),%edx
    408f:	fe 42 0d             	incb   0xd(%edx)
    4092:	c6 42 33 01          	movb   $0x1,0x33(%edx)
    4096:	89 14 24             	mov    %edx,(%esp)
    4099:	e8 fc ff ff ff       	call   409a <sys_mkdir+0x260>
    409e:	89 1c 24             	mov    %ebx,(%esp)
    40a1:	e8 fc ff ff ff       	call   40a2 <sys_mkdir+0x268>
    40a6:	89 34 24             	mov    %esi,(%esp)
    40a9:	e8 fc ff ff ff       	call   40aa <sys_mkdir+0x270>
    40ae:	b8 00 00 00 00       	mov    $0x0,%eax
    40b3:	eb 0b                	jmp    40c0 <sys_mkdir+0x286>
    40b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    40ba:	c3                   	ret    
    40bb:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    40c0:	83 c4 24             	add    $0x24,%esp
    40c3:	5b                   	pop    %ebx
    40c4:	5e                   	pop    %esi
    40c5:	c3                   	ret    

000040c6 <sys_rmdir>:
    40c6:	55                   	push   %ebp
    40c7:	57                   	push   %edi
    40c8:	56                   	push   %esi
    40c9:	53                   	push   %ebx
    40ca:	83 ec 3c             	sub    $0x3c,%esp
    40cd:	a1 00 00 00 00       	mov    0x0,%eax
    40d2:	66 83 b8 42 02 00 00 	cmpw   $0x0,0x242(%eax)
    40d9:	00 
    40da:	0f 85 6e 03 00 00    	jne    444e <sys_rmdir+0x388>
    40e0:	8d 4c 24 2c          	lea    0x2c(%esp),%ecx
    40e4:	8d 54 24 28          	lea    0x28(%esp),%edx
    40e8:	8b 44 24 50          	mov    0x50(%esp),%eax
    40ec:	e8 6f f5 ff ff       	call   3660 <dir_namei>
    40f1:	89 c3                	mov    %eax,%ebx
    40f3:	89 44 24 24          	mov    %eax,0x24(%esp)
    40f7:	85 c0                	test   %eax,%eax
    40f9:	0f 84 56 03 00 00    	je     4455 <sys_rmdir+0x38f>
    40ff:	8b 74 24 28          	mov    0x28(%esp),%esi
    4103:	85 f6                	test   %esi,%esi
    4105:	75 12                	jne    4119 <sys_rmdir+0x53>
    4107:	89 04 24             	mov    %eax,(%esp)
    410a:	e8 fc ff ff ff       	call   410b <sys_rmdir+0x45>
    410f:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    4114:	e9 68 03 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    4119:	ba 02 00 00 00       	mov    $0x2,%edx
    411e:	e8 29 f3 ff ff       	call   344c <permission>
    4123:	85 c0                	test   %eax,%eax
    4125:	75 12                	jne    4139 <sys_rmdir+0x73>
    4127:	89 1c 24             	mov    %ebx,(%esp)
    412a:	e8 fc ff ff ff       	call   412b <sys_rmdir+0x65>
    412f:	be ff ff ff ff       	mov    $0xffffffff,%esi
    4134:	e9 48 03 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    4139:	8d 44 24 20          	lea    0x20(%esp),%eax
    413d:	89 04 24             	mov    %eax,(%esp)
    4140:	89 f1                	mov    %esi,%ecx
    4142:	8b 54 24 2c          	mov    0x2c(%esp),%edx
    4146:	8d 44 24 24          	lea    0x24(%esp),%eax
    414a:	e8 5c f3 ff ff       	call   34ab <find_entry>
    414f:	89 c5                	mov    %eax,%ebp
    4151:	85 c0                	test   %eax,%eax
    4153:	75 16                	jne    416b <sys_rmdir+0xa5>
    4155:	8b 44 24 24          	mov    0x24(%esp),%eax
    4159:	89 04 24             	mov    %eax,(%esp)
    415c:	e8 fc ff ff ff       	call   415d <sys_rmdir+0x97>
    4161:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    4166:	e9 16 03 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    416b:	8b 44 24 20          	mov    0x20(%esp),%eax
    416f:	0f b7 00             	movzwl (%eax),%eax
    4172:	89 44 24 04          	mov    %eax,0x4(%esp)
    4176:	8b 44 24 24          	mov    0x24(%esp),%eax
    417a:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    417e:	89 04 24             	mov    %eax,(%esp)
    4181:	e8 fc ff ff ff       	call   4182 <sys_rmdir+0xbc>
    4186:	89 c3                	mov    %eax,%ebx
    4188:	85 c0                	test   %eax,%eax
    418a:	75 1e                	jne    41aa <sys_rmdir+0xe4>
    418c:	8b 44 24 24          	mov    0x24(%esp),%eax
    4190:	89 04 24             	mov    %eax,(%esp)
    4193:	e8 fc ff ff ff       	call   4194 <sys_rmdir+0xce>
    4198:	89 2c 24             	mov    %ebp,(%esp)
    419b:	e8 fc ff ff ff       	call   419c <sys_rmdir+0xd6>
    41a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    41a5:	e9 d7 02 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    41aa:	8b 44 24 24          	mov    0x24(%esp),%eax
    41ae:	f7 00 00 02 00 00    	testl  $0x200,(%eax)
    41b4:	74 3a                	je     41f0 <sys_rmdir+0x12a>
    41b6:	8b 15 00 00 00 00    	mov    0x0,%edx
    41bc:	66 8b 92 42 02 00 00 	mov    0x242(%edx),%dx
    41c3:	66 85 d2             	test   %dx,%dx
    41c6:	74 28                	je     41f0 <sys_rmdir+0x12a>
    41c8:	66 3b 53 02          	cmp    0x2(%ebx),%dx
    41cc:	74 22                	je     41f0 <sys_rmdir+0x12a>
    41ce:	89 04 24             	mov    %eax,(%esp)
    41d1:	e8 fc ff ff ff       	call   41d2 <sys_rmdir+0x10c>
    41d6:	89 1c 24             	mov    %ebx,(%esp)
    41d9:	e8 fc ff ff ff       	call   41da <sys_rmdir+0x114>
    41de:	89 2c 24             	mov    %ebp,(%esp)
    41e1:	e8 fc ff ff ff       	call   41e2 <sys_rmdir+0x11c>
    41e6:	be ff ff ff ff       	mov    $0xffffffff,%esi
    41eb:	e9 91 02 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    41f0:	8b 53 2c             	mov    0x2c(%ebx),%edx
    41f3:	66 3b 50 2c          	cmp    0x2c(%eax),%dx
    41f7:	75 07                	jne    4200 <sys_rmdir+0x13a>
    41f9:	66 83 7b 30 01       	cmpw   $0x1,0x30(%ebx)
    41fe:	76 22                	jbe    4222 <sys_rmdir+0x15c>
    4200:	89 04 24             	mov    %eax,(%esp)
    4203:	e8 fc ff ff ff       	call   4204 <sys_rmdir+0x13e>
    4208:	89 1c 24             	mov    %ebx,(%esp)
    420b:	e8 fc ff ff ff       	call   420c <sys_rmdir+0x146>
    4210:	89 2c 24             	mov    %ebp,(%esp)
    4213:	e8 fc ff ff ff       	call   4214 <sys_rmdir+0x14e>
    4218:	be ff ff ff ff       	mov    $0xffffffff,%esi
    421d:	e9 5f 02 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    4222:	39 c3                	cmp    %eax,%ebx
    4224:	75 26                	jne    424c <sys_rmdir+0x186>
    4226:	89 1c 24             	mov    %ebx,(%esp)
    4229:	e8 fc ff ff ff       	call   422a <sys_rmdir+0x164>
    422e:	8b 44 24 24          	mov    0x24(%esp),%eax
    4232:	89 04 24             	mov    %eax,(%esp)
    4235:	e8 fc ff ff ff       	call   4236 <sys_rmdir+0x170>
    423a:	89 2c 24             	mov    %ebp,(%esp)
    423d:	e8 fc ff ff ff       	call   423e <sys_rmdir+0x178>
    4242:	be ff ff ff ff       	mov    $0xffffffff,%esi
    4247:	e9 35 02 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    424c:	8b 03                	mov    (%ebx),%eax
    424e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    4253:	66 3d 00 40          	cmp    $0x4000,%ax
    4257:	74 26                	je     427f <sys_rmdir+0x1b9>
    4259:	89 1c 24             	mov    %ebx,(%esp)
    425c:	e8 fc ff ff ff       	call   425d <sys_rmdir+0x197>
    4261:	8b 44 24 24          	mov    0x24(%esp),%eax
    4265:	89 04 24             	mov    %eax,(%esp)
    4268:	e8 fc ff ff ff       	call   4269 <sys_rmdir+0x1a3>
    426d:	89 2c 24             	mov    %ebp,(%esp)
    4270:	e8 fc ff ff ff       	call   4271 <sys_rmdir+0x1ab>
    4275:	be ec ff ff ff       	mov    $0xffffffec,%esi
    427a:	e9 02 02 00 00       	jmp    4481 <sys_rmdir+0x3bb>
    427f:	8b 43 04             	mov    0x4(%ebx),%eax
    4282:	c1 e8 04             	shr    $0x4,%eax
    4285:	89 44 24 14          	mov    %eax,0x14(%esp)
    4289:	83 f8 01             	cmp    $0x1,%eax
    428c:	7e 21                	jle    42af <sys_rmdir+0x1e9>
    428e:	66 8b 43 0e          	mov    0xe(%ebx),%ax
    4292:	66 85 c0             	test   %ax,%ax
    4295:	74 18                	je     42af <sys_rmdir+0x1e9>
    4297:	0f b7 c0             	movzwl %ax,%eax
    429a:	89 44 24 04          	mov    %eax,0x4(%esp)
    429e:	0f b7 d2             	movzwl %dx,%edx
    42a1:	89 14 24             	mov    %edx,(%esp)
    42a4:	e8 fc ff ff ff       	call   42a5 <sys_rmdir+0x1df>
    42a9:	89 c1                	mov    %eax,%ecx
    42ab:	85 c0                	test   %eax,%eax
    42ad:	75 19                	jne    42c8 <sys_rmdir+0x202>
    42af:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    42b3:	89 44 24 04          	mov    %eax,0x4(%esp)
    42b7:	c7 04 24 28 01 00 00 	movl   $0x128,(%esp)
    42be:	e8 fc ff ff ff       	call   42bf <sys_rmdir+0x1f9>
    42c3:	e9 98 01 00 00       	jmp    4460 <sys_rmdir+0x39a>
    42c8:	8b 10                	mov    (%eax),%edx
    42ca:	66 8b 43 2e          	mov    0x2e(%ebx),%ax
    42ce:	66 39 02             	cmp    %ax,(%edx)
    42d1:	75 4d                	jne    4320 <sys_rmdir+0x25a>
    42d3:	66 83 7a 10 00       	cmpw   $0x0,0x10(%edx)
    42d8:	74 46                	je     4320 <sys_rmdir+0x25a>
    42da:	8d 72 02             	lea    0x2(%edx),%esi
    42dd:	bf ce 01 00 00       	mov    $0x1ce,%edi
    42e2:	fc                   	cld    
    42e3:	ac                   	lods   %ds:(%esi),%al
    42e4:	ae                   	scas   %es:(%edi),%al
    42e5:	75 08                	jne    42ef <sys_rmdir+0x229>
    42e7:	84 c0                	test   %al,%al
    42e9:	75 f8                	jne    42e3 <sys_rmdir+0x21d>
    42eb:	31 c0                	xor    %eax,%eax
    42ed:	eb 09                	jmp    42f8 <sys_rmdir+0x232>
    42ef:	b8 01 00 00 00       	mov    $0x1,%eax
    42f4:	7c 02                	jl     42f8 <sys_rmdir+0x232>
    42f6:	f7 d8                	neg    %eax
    42f8:	85 c0                	test   %eax,%eax
    42fa:	75 24                	jne    4320 <sys_rmdir+0x25a>
    42fc:	8d 72 12             	lea    0x12(%edx),%esi
    42ff:	bf d0 01 00 00       	mov    $0x1d0,%edi
    4304:	fc                   	cld    
    4305:	ac                   	lods   %ds:(%esi),%al
    4306:	ae                   	scas   %es:(%edi),%al
    4307:	75 08                	jne    4311 <sys_rmdir+0x24b>
    4309:	84 c0                	test   %al,%al
    430b:	75 f8                	jne    4305 <sys_rmdir+0x23f>
    430d:	31 c0                	xor    %eax,%eax
    430f:	eb 09                	jmp    431a <sys_rmdir+0x254>
    4311:	b8 01 00 00 00       	mov    $0x1,%eax
    4316:	7c 02                	jl     431a <sys_rmdir+0x254>
    4318:	f7 d8                	neg    %eax
    431a:	89 c6                	mov    %eax,%esi
    431c:	85 c0                	test   %eax,%eax
    431e:	74 19                	je     4339 <sys_rmdir+0x273>
    4320:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    4324:	89 44 24 04          	mov    %eax,0x4(%esp)
    4328:	c7 04 24 28 01 00 00 	movl   $0x128,(%esp)
    432f:	e8 fc ff ff ff       	call   4330 <sys_rmdir+0x26a>
    4334:	e9 27 01 00 00       	jmp    4460 <sys_rmdir+0x39a>
    4339:	8d 7a 20             	lea    0x20(%edx),%edi
    433c:	83 7c 24 14 02       	cmpl   $0x2,0x14(%esp)
    4341:	0f 8e 88 00 00 00    	jle    43cf <sys_rmdir+0x309>
    4347:	b8 02 00 00 00       	mov    $0x2,%eax
    434c:	89 74 24 1c          	mov    %esi,0x1c(%esp)
    4350:	89 6c 24 18          	mov    %ebp,0x18(%esp)
    4354:	89 cd                	mov    %ecx,%ebp
    4356:	89 c6                	mov    %eax,%esi
    4358:	8b 45 00             	mov    0x0(%ebp),%eax
    435b:	05 00 04 00 00       	add    $0x400,%eax
    4360:	39 c7                	cmp    %eax,%edi
    4362:	72 3e                	jb     43a2 <sys_rmdir+0x2dc>
    4364:	89 2c 24             	mov    %ebp,(%esp)
    4367:	e8 fc ff ff ff       	call   4368 <sys_rmdir+0x2a2>
    436c:	89 f0                	mov    %esi,%eax
    436e:	c1 e8 06             	shr    $0x6,%eax
    4371:	89 44 24 04          	mov    %eax,0x4(%esp)
    4375:	89 1c 24             	mov    %ebx,(%esp)
    4378:	e8 fc ff ff ff       	call   4379 <sys_rmdir+0x2b3>
    437d:	85 c0                	test   %eax,%eax
    437f:	75 05                	jne    4386 <sys_rmdir+0x2c0>
    4381:	83 c6 40             	add    $0x40,%esi
    4384:	eb 39                	jmp    43bf <sys_rmdir+0x2f9>
    4386:	89 44 24 04          	mov    %eax,0x4(%esp)
    438a:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    438e:	89 04 24             	mov    %eax,(%esp)
    4391:	e8 fc ff ff ff       	call   4392 <sys_rmdir+0x2cc>
    4396:	89 c5                	mov    %eax,%ebp
    4398:	85 c0                	test   %eax,%eax
    439a:	0f 84 bc 00 00 00    	je     445c <sys_rmdir+0x396>
    43a0:	8b 38                	mov    (%eax),%edi
    43a2:	66 83 3f 00          	cmpw   $0x0,(%edi)
    43a6:	74 13                	je     43bb <sys_rmdir+0x2f5>
    43a8:	89 e8                	mov    %ebp,%eax
    43aa:	8b 6c 24 18          	mov    0x18(%esp),%ebp
    43ae:	89 04 24             	mov    %eax,(%esp)
    43b1:	e8 fc ff ff ff       	call   43b2 <sys_rmdir+0x2ec>
    43b6:	e9 a5 00 00 00       	jmp    4460 <sys_rmdir+0x39a>
    43bb:	83 c7 10             	add    $0x10,%edi
    43be:	46                   	inc    %esi
    43bf:	39 74 24 14          	cmp    %esi,0x14(%esp)
    43c3:	7f 93                	jg     4358 <sys_rmdir+0x292>
    43c5:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    43c9:	89 e9                	mov    %ebp,%ecx
    43cb:	8b 6c 24 18          	mov    0x18(%esp),%ebp
    43cf:	89 0c 24             	mov    %ecx,(%esp)
    43d2:	e8 fc ff ff ff       	call   43d3 <sys_rmdir+0x30d>
    43d7:	8a 43 0d             	mov    0xd(%ebx),%al
    43da:	3c 02                	cmp    $0x2,%al
    43dc:	74 13                	je     43f1 <sys_rmdir+0x32b>
    43de:	0f b6 c0             	movzbl %al,%eax
    43e1:	89 44 24 04          	mov    %eax,0x4(%esp)
    43e5:	c7 04 24 50 01 00 00 	movl   $0x150,(%esp)
    43ec:	e8 fc ff ff ff       	call   43ed <sys_rmdir+0x327>
    43f1:	8b 44 24 20          	mov    0x20(%esp),%eax
    43f5:	66 c7 00 00 00       	movw   $0x0,(%eax)
    43fa:	c6 45 0b 01          	movb   $0x1,0xb(%ebp)
    43fe:	89 2c 24             	mov    %ebp,(%esp)
    4401:	e8 fc ff ff ff       	call   4402 <sys_rmdir+0x33c>
    4406:	c6 43 0d 00          	movb   $0x0,0xd(%ebx)
    440a:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    440e:	8b 4c 24 24          	mov    0x24(%esp),%ecx
    4412:	fe 49 0d             	decb   0xd(%ecx)
    4415:	8b 3d 00 00 00 00    	mov    0x0,%edi
    441b:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4420:	f7 ef                	imul   %edi
    4422:	89 d0                	mov    %edx,%eax
    4424:	c1 f8 05             	sar    $0x5,%eax
    4427:	c1 ff 1f             	sar    $0x1f,%edi
    442a:	29 f8                	sub    %edi,%eax
    442c:	03 05 00 00 00 00    	add    0x0,%eax
    4432:	89 41 08             	mov    %eax,0x8(%ecx)
    4435:	89 41 28             	mov    %eax,0x28(%ecx)
    4438:	c6 41 33 01          	movb   $0x1,0x33(%ecx)
    443c:	89 0c 24             	mov    %ecx,(%esp)
    443f:	e8 fc ff ff ff       	call   4440 <sys_rmdir+0x37a>
    4444:	89 1c 24             	mov    %ebx,(%esp)
    4447:	e8 fc ff ff ff       	call   4448 <sys_rmdir+0x382>
    444c:	eb 33                	jmp    4481 <sys_rmdir+0x3bb>
    444e:	be ff ff ff ff       	mov    $0xffffffff,%esi
    4453:	eb 2c                	jmp    4481 <sys_rmdir+0x3bb>
    4455:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    445a:	eb 25                	jmp    4481 <sys_rmdir+0x3bb>
    445c:	8b 6c 24 18          	mov    0x18(%esp),%ebp
    4460:	89 1c 24             	mov    %ebx,(%esp)
    4463:	e8 fc ff ff ff       	call   4464 <sys_rmdir+0x39e>
    4468:	8b 44 24 24          	mov    0x24(%esp),%eax
    446c:	89 04 24             	mov    %eax,(%esp)
    446f:	e8 fc ff ff ff       	call   4470 <sys_rmdir+0x3aa>
    4474:	89 2c 24             	mov    %ebp,(%esp)
    4477:	e8 fc ff ff ff       	call   4478 <sys_rmdir+0x3b2>
    447c:	be d9 ff ff ff       	mov    $0xffffffd9,%esi
    4481:	89 f0                	mov    %esi,%eax
    4483:	83 c4 3c             	add    $0x3c,%esp
    4486:	5b                   	pop    %ebx
    4487:	5e                   	pop    %esi
    4488:	5f                   	pop    %edi
    4489:	5d                   	pop    %ebp
    448a:	c3                   	ret    

0000448b <sys_unlink>:
    448b:	56                   	push   %esi
    448c:	53                   	push   %ebx
    448d:	83 ec 24             	sub    $0x24,%esp
    4490:	8d 4c 24 1c          	lea    0x1c(%esp),%ecx
    4494:	8d 54 24 18          	lea    0x18(%esp),%edx
    4498:	8b 44 24 30          	mov    0x30(%esp),%eax
    449c:	e8 bf f1 ff ff       	call   3660 <dir_namei>
    44a1:	89 c3                	mov    %eax,%ebx
    44a3:	89 44 24 14          	mov    %eax,0x14(%esp)
    44a7:	85 c0                	test   %eax,%eax
    44a9:	0f 84 b1 01 00 00    	je     4660 <sys_unlink+0x1d5>
    44af:	8b 74 24 18          	mov    0x18(%esp),%esi
    44b3:	85 f6                	test   %esi,%esi
    44b5:	75 12                	jne    44c9 <sys_unlink+0x3e>
    44b7:	89 04 24             	mov    %eax,(%esp)
    44ba:	e8 fc ff ff ff       	call   44bb <sys_unlink+0x30>
    44bf:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    44c4:	e9 9c 01 00 00       	jmp    4665 <sys_unlink+0x1da>
    44c9:	ba 02 00 00 00       	mov    $0x2,%edx
    44ce:	e8 79 ef ff ff       	call   344c <permission>
    44d3:	85 c0                	test   %eax,%eax
    44d5:	75 12                	jne    44e9 <sys_unlink+0x5e>
    44d7:	89 1c 24             	mov    %ebx,(%esp)
    44da:	e8 fc ff ff ff       	call   44db <sys_unlink+0x50>
    44df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    44e4:	e9 7c 01 00 00       	jmp    4665 <sys_unlink+0x1da>
    44e9:	8d 44 24 10          	lea    0x10(%esp),%eax
    44ed:	89 04 24             	mov    %eax,(%esp)
    44f0:	89 f1                	mov    %esi,%ecx
    44f2:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    44f6:	8d 44 24 14          	lea    0x14(%esp),%eax
    44fa:	e8 ac ef ff ff       	call   34ab <find_entry>
    44ff:	89 c6                	mov    %eax,%esi
    4501:	85 c0                	test   %eax,%eax
    4503:	75 16                	jne    451b <sys_unlink+0x90>
    4505:	8b 44 24 14          	mov    0x14(%esp),%eax
    4509:	89 04 24             	mov    %eax,(%esp)
    450c:	e8 fc ff ff ff       	call   450d <sys_unlink+0x82>
    4511:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4516:	e9 4a 01 00 00       	jmp    4665 <sys_unlink+0x1da>
    451b:	8b 44 24 10          	mov    0x10(%esp),%eax
    451f:	0f b7 00             	movzwl (%eax),%eax
    4522:	89 44 24 04          	mov    %eax,0x4(%esp)
    4526:	8b 44 24 14          	mov    0x14(%esp),%eax
    452a:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    452e:	89 04 24             	mov    %eax,(%esp)
    4531:	e8 fc ff ff ff       	call   4532 <sys_unlink+0xa7>
    4536:	89 c3                	mov    %eax,%ebx
    4538:	85 c0                	test   %eax,%eax
    453a:	75 1e                	jne    455a <sys_unlink+0xcf>
    453c:	8b 44 24 14          	mov    0x14(%esp),%eax
    4540:	89 04 24             	mov    %eax,(%esp)
    4543:	e8 fc ff ff ff       	call   4544 <sys_unlink+0xb9>
    4548:	89 34 24             	mov    %esi,(%esp)
    454b:	e8 fc ff ff ff       	call   454c <sys_unlink+0xc1>
    4550:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4555:	e9 0b 01 00 00       	jmp    4665 <sys_unlink+0x1da>
    455a:	8b 44 24 14          	mov    0x14(%esp),%eax
    455e:	f7 00 00 02 00 00    	testl  $0x200,(%eax)
    4564:	74 40                	je     45a6 <sys_unlink+0x11b>
    4566:	8b 15 00 00 00 00    	mov    0x0,%edx
    456c:	66 8b 92 42 02 00 00 	mov    0x242(%edx),%dx
    4573:	66 85 d2             	test   %dx,%dx
    4576:	74 2e                	je     45a6 <sys_unlink+0x11b>
    4578:	66 3b 53 02          	cmp    0x2(%ebx),%dx
    457c:	74 28                	je     45a6 <sys_unlink+0x11b>
    457e:	66 3b 50 02          	cmp    0x2(%eax),%dx
    4582:	74 22                	je     45a6 <sys_unlink+0x11b>
    4584:	89 04 24             	mov    %eax,(%esp)
    4587:	e8 fc ff ff ff       	call   4588 <sys_unlink+0xfd>
    458c:	89 1c 24             	mov    %ebx,(%esp)
    458f:	e8 fc ff ff ff       	call   4590 <sys_unlink+0x105>
    4594:	89 34 24             	mov    %esi,(%esp)
    4597:	e8 fc ff ff ff       	call   4598 <sys_unlink+0x10d>
    459c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    45a1:	e9 bf 00 00 00       	jmp    4665 <sys_unlink+0x1da>
    45a6:	8b 03                	mov    (%ebx),%eax
    45a8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    45ad:	66 3d 00 40          	cmp    $0x4000,%ax
    45b1:	75 26                	jne    45d9 <sys_unlink+0x14e>
    45b3:	89 1c 24             	mov    %ebx,(%esp)
    45b6:	e8 fc ff ff ff       	call   45b7 <sys_unlink+0x12c>
    45bb:	8b 44 24 14          	mov    0x14(%esp),%eax
    45bf:	89 04 24             	mov    %eax,(%esp)
    45c2:	e8 fc ff ff ff       	call   45c3 <sys_unlink+0x138>
    45c7:	89 34 24             	mov    %esi,(%esp)
    45ca:	e8 fc ff ff ff       	call   45cb <sys_unlink+0x140>
    45cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    45d4:	e9 8c 00 00 00       	jmp    4665 <sys_unlink+0x1da>
    45d9:	80 7b 0d 00          	cmpb   $0x0,0xd(%ebx)
    45dd:	75 28                	jne    4607 <sys_unlink+0x17c>
    45df:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    45e6:	00 
    45e7:	0f b7 43 2e          	movzwl 0x2e(%ebx),%eax
    45eb:	89 44 24 08          	mov    %eax,0x8(%esp)
    45ef:	0f b7 43 2c          	movzwl 0x2c(%ebx),%eax
    45f3:	89 44 24 04          	mov    %eax,0x4(%esp)
    45f7:	c7 04 24 74 01 00 00 	movl   $0x174,(%esp)
    45fe:	e8 fc ff ff ff       	call   45ff <sys_unlink+0x174>
    4603:	c6 43 0d 01          	movb   $0x1,0xd(%ebx)
    4607:	8b 44 24 10          	mov    0x10(%esp),%eax
    460b:	66 c7 00 00 00       	movw   $0x0,(%eax)
    4610:	c6 46 0b 01          	movb   $0x1,0xb(%esi)
    4614:	89 34 24             	mov    %esi,(%esp)
    4617:	e8 fc ff ff ff       	call   4618 <sys_unlink+0x18d>
    461c:	fe 4b 0d             	decb   0xd(%ebx)
    461f:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    4623:	8b 35 00 00 00 00    	mov    0x0,%esi
    4629:	b9 1f 85 eb 51       	mov    $0x51eb851f,%ecx
    462e:	89 c8                	mov    %ecx,%eax
    4630:	f7 ee                	imul   %esi
    4632:	89 d0                	mov    %edx,%eax
    4634:	c1 f8 05             	sar    $0x5,%eax
    4637:	c1 fe 1f             	sar    $0x1f,%esi
    463a:	29 f0                	sub    %esi,%eax
    463c:	03 05 00 00 00 00    	add    0x0,%eax
    4642:	89 43 28             	mov    %eax,0x28(%ebx)
    4645:	89 1c 24             	mov    %ebx,(%esp)
    4648:	e8 fc ff ff ff       	call   4649 <sys_unlink+0x1be>
    464d:	8b 44 24 14          	mov    0x14(%esp),%eax
    4651:	89 04 24             	mov    %eax,(%esp)
    4654:	e8 fc ff ff ff       	call   4655 <sys_unlink+0x1ca>
    4659:	b8 00 00 00 00       	mov    $0x0,%eax
    465e:	eb 05                	jmp    4665 <sys_unlink+0x1da>
    4660:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4665:	83 c4 24             	add    $0x24,%esp
    4668:	5b                   	pop    %ebx
    4669:	5e                   	pop    %esi
    466a:	c3                   	ret    

0000466b <sys_link>:
    466b:	57                   	push   %edi
    466c:	56                   	push   %esi
    466d:	53                   	push   %ebx
    466e:	83 ec 20             	sub    $0x20,%esp
    4671:	8b 44 24 30          	mov    0x30(%esp),%eax
    4675:	89 04 24             	mov    %eax,(%esp)
    4678:	e8 fc ff ff ff       	call   4679 <sys_link+0xe>
    467d:	89 c3                	mov    %eax,%ebx
    467f:	85 c0                	test   %eax,%eax
    4681:	0f 84 91 01 00 00    	je     4818 <sys_link+0x1ad>
    4687:	8b 00                	mov    (%eax),%eax
    4689:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    468e:	66 3d 00 40          	cmp    $0x4000,%ax
    4692:	75 12                	jne    46a6 <sys_link+0x3b>
    4694:	89 1c 24             	mov    %ebx,(%esp)
    4697:	e8 fc ff ff ff       	call   4698 <sys_link+0x2d>
    469c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    46a1:	e9 77 01 00 00       	jmp    481d <sys_link+0x1b2>
    46a6:	8d 4c 24 14          	lea    0x14(%esp),%ecx
    46aa:	8d 54 24 10          	lea    0x10(%esp),%edx
    46ae:	8b 44 24 34          	mov    0x34(%esp),%eax
    46b2:	e8 a9 ef ff ff       	call   3660 <dir_namei>
    46b7:	89 c6                	mov    %eax,%esi
    46b9:	89 44 24 18          	mov    %eax,0x18(%esp)
    46bd:	85 c0                	test   %eax,%eax
    46bf:	75 12                	jne    46d3 <sys_link+0x68>
    46c1:	89 1c 24             	mov    %ebx,(%esp)
    46c4:	e8 fc ff ff ff       	call   46c5 <sys_link+0x5a>
    46c9:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
    46ce:	e9 4a 01 00 00       	jmp    481d <sys_link+0x1b2>
    46d3:	8b 7c 24 10          	mov    0x10(%esp),%edi
    46d7:	85 ff                	test   %edi,%edi
    46d9:	75 1e                	jne    46f9 <sys_link+0x8e>
    46db:	89 1c 24             	mov    %ebx,(%esp)
    46de:	e8 fc ff ff ff       	call   46df <sys_link+0x74>
    46e3:	8b 44 24 18          	mov    0x18(%esp),%eax
    46e7:	89 04 24             	mov    %eax,(%esp)
    46ea:	e8 fc ff ff ff       	call   46eb <sys_link+0x80>
    46ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    46f4:	e9 24 01 00 00       	jmp    481d <sys_link+0x1b2>
    46f9:	8b 43 2c             	mov    0x2c(%ebx),%eax
    46fc:	66 39 46 2c          	cmp    %ax,0x2c(%esi)
    4700:	74 1a                	je     471c <sys_link+0xb1>
    4702:	89 34 24             	mov    %esi,(%esp)
    4705:	e8 fc ff ff ff       	call   4706 <sys_link+0x9b>
    470a:	89 1c 24             	mov    %ebx,(%esp)
    470d:	e8 fc ff ff ff       	call   470e <sys_link+0xa3>
    4712:	b8 ee ff ff ff       	mov    $0xffffffee,%eax
    4717:	e9 01 01 00 00       	jmp    481d <sys_link+0x1b2>
    471c:	ba 02 00 00 00       	mov    $0x2,%edx
    4721:	89 f0                	mov    %esi,%eax
    4723:	e8 24 ed ff ff       	call   344c <permission>
    4728:	85 c0                	test   %eax,%eax
    472a:	75 1a                	jne    4746 <sys_link+0xdb>
    472c:	89 34 24             	mov    %esi,(%esp)
    472f:	e8 fc ff ff ff       	call   4730 <sys_link+0xc5>
    4734:	89 1c 24             	mov    %ebx,(%esp)
    4737:	e8 fc ff ff ff       	call   4738 <sys_link+0xcd>
    473c:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
    4741:	e9 d7 00 00 00       	jmp    481d <sys_link+0x1b2>
    4746:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    474a:	89 04 24             	mov    %eax,(%esp)
    474d:	89 f9                	mov    %edi,%ecx
    474f:	8b 54 24 14          	mov    0x14(%esp),%edx
    4753:	8d 44 24 18          	lea    0x18(%esp),%eax
    4757:	e8 4f ed ff ff       	call   34ab <find_entry>
    475c:	85 c0                	test   %eax,%eax
    475e:	74 26                	je     4786 <sys_link+0x11b>
    4760:	89 04 24             	mov    %eax,(%esp)
    4763:	e8 fc ff ff ff       	call   4764 <sys_link+0xf9>
    4768:	8b 44 24 18          	mov    0x18(%esp),%eax
    476c:	89 04 24             	mov    %eax,(%esp)
    476f:	e8 fc ff ff ff       	call   4770 <sys_link+0x105>
    4774:	89 1c 24             	mov    %ebx,(%esp)
    4777:	e8 fc ff ff ff       	call   4778 <sys_link+0x10d>
    477c:	b8 ef ff ff ff       	mov    $0xffffffef,%eax
    4781:	e9 97 00 00 00       	jmp    481d <sys_link+0x1b2>
    4786:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    478a:	89 04 24             	mov    %eax,(%esp)
    478d:	8b 4c 24 10          	mov    0x10(%esp),%ecx
    4791:	8b 54 24 14          	mov    0x14(%esp),%edx
    4795:	8b 44 24 18          	mov    0x18(%esp),%eax
    4799:	e8 73 f0 ff ff       	call   3811 <add_entry>
    479e:	85 c0                	test   %eax,%eax
    47a0:	75 1b                	jne    47bd <sys_link+0x152>
    47a2:	8b 44 24 18          	mov    0x18(%esp),%eax
    47a6:	89 04 24             	mov    %eax,(%esp)
    47a9:	e8 fc ff ff ff       	call   47aa <sys_link+0x13f>
    47ae:	89 1c 24             	mov    %ebx,(%esp)
    47b1:	e8 fc ff ff ff       	call   47b2 <sys_link+0x147>
    47b6:	b8 e4 ff ff ff       	mov    $0xffffffe4,%eax
    47bb:	eb 60                	jmp    481d <sys_link+0x1b2>
    47bd:	66 8b 4b 2e          	mov    0x2e(%ebx),%cx
    47c1:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    47c5:	66 89 0a             	mov    %cx,(%edx)
    47c8:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    47cc:	89 04 24             	mov    %eax,(%esp)
    47cf:	e8 fc ff ff ff       	call   47d0 <sys_link+0x165>
    47d4:	8b 44 24 18          	mov    0x18(%esp),%eax
    47d8:	89 04 24             	mov    %eax,(%esp)
    47db:	e8 fc ff ff ff       	call   47dc <sys_link+0x171>
    47e0:	fe 43 0d             	incb   0xd(%ebx)
    47e3:	8b 35 00 00 00 00    	mov    0x0,%esi
    47e9:	bf 1f 85 eb 51       	mov    $0x51eb851f,%edi
    47ee:	89 f8                	mov    %edi,%eax
    47f0:	f7 ee                	imul   %esi
    47f2:	89 d0                	mov    %edx,%eax
    47f4:	c1 f8 05             	sar    $0x5,%eax
    47f7:	c1 fe 1f             	sar    $0x1f,%esi
    47fa:	29 f0                	sub    %esi,%eax
    47fc:	03 05 00 00 00 00    	add    0x0,%eax
    4802:	89 43 28             	mov    %eax,0x28(%ebx)
    4805:	c6 43 33 01          	movb   $0x1,0x33(%ebx)
    4809:	89 1c 24             	mov    %ebx,(%esp)
    480c:	e8 fc ff ff ff       	call   480d <sys_link+0x1a2>
    4811:	b8 00 00 00 00       	mov    $0x0,%eax
    4816:	eb 05                	jmp    481d <sys_link+0x1b2>
    4818:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    481d:	83 c4 20             	add    $0x20,%esp
    4820:	5b                   	pop    %ebx
    4821:	5e                   	pop    %esi
    4822:	5f                   	pop    %edi
    4823:	c3                   	ret    

00004824 <free_block>:
    4824:	55                   	push   %ebp
    4825:	57                   	push   %edi
    4826:	56                   	push   %esi
    4827:	53                   	push   %ebx
    4828:	83 ec 1c             	sub    $0x1c,%esp
    482b:	8b 7c 24 30          	mov    0x30(%esp),%edi
    482f:	8b 5c 24 34          	mov    0x34(%esp),%ebx
    4833:	89 3c 24             	mov    %edi,(%esp)
    4836:	e8 fc ff ff ff       	call   4837 <free_block+0x13>
    483b:	89 c6                	mov    %eax,%esi
    483d:	85 c0                	test   %eax,%eax
    483f:	75 0c                	jne    484d <free_block+0x29>
    4841:	c7 04 24 a0 01 00 00 	movl   $0x1a0,(%esp)
    4848:	e8 fc ff ff ff       	call   4849 <free_block+0x25>
    484d:	0f b7 46 08          	movzwl 0x8(%esi),%eax
    4851:	39 d8                	cmp    %ebx,%eax
    4853:	7f 08                	jg     485d <free_block+0x39>
    4855:	0f b7 46 02          	movzwl 0x2(%esi),%eax
    4859:	39 c3                	cmp    %eax,%ebx
    485b:	7c 0c                	jl     4869 <free_block+0x45>
    485d:	c7 04 24 cc 01 00 00 	movl   $0x1cc,(%esp)
    4864:	e8 fc ff ff ff       	call   4865 <free_block+0x41>
    4869:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    486d:	89 3c 24             	mov    %edi,(%esp)
    4870:	e8 fc ff ff ff       	call   4871 <free_block+0x4d>
    4875:	85 c0                	test   %eax,%eax
    4877:	74 35                	je     48ae <free_block+0x8a>
    4879:	8a 50 0c             	mov    0xc(%eax),%dl
    487c:	80 fa 01             	cmp    $0x1,%dl
    487f:	74 1d                	je     489e <free_block+0x7a>
    4881:	0f b6 d2             	movzbl %dl,%edx
    4884:	89 54 24 0c          	mov    %edx,0xc(%esp)
    4888:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    488c:	89 7c 24 04          	mov    %edi,0x4(%esp)
    4890:	c7 04 24 f4 01 00 00 	movl   $0x1f4,(%esp)
    4897:	e8 fc ff ff ff       	call   4898 <free_block+0x74>
    489c:	eb 73                	jmp    4911 <free_block+0xed>
    489e:	c6 40 0b 00          	movb   $0x0,0xb(%eax)
    48a2:	c6 40 0a 00          	movb   $0x0,0xa(%eax)
    48a6:	89 04 24             	mov    %eax,(%esp)
    48a9:	e8 fc ff ff ff       	call   48aa <free_block+0x86>
    48ae:	0f b7 4e 08          	movzwl 0x8(%esi),%ecx
    48b2:	29 cb                	sub    %ecx,%ebx
    48b4:	8d 53 01             	lea    0x1(%ebx),%edx
    48b7:	89 d0                	mov    %edx,%eax
    48b9:	85 d2                	test   %edx,%edx
    48bb:	79 06                	jns    48c3 <free_block+0x9f>
    48bd:	8d 82 ff 1f 00 00    	lea    0x1fff(%edx),%eax
    48c3:	c1 f8 0d             	sar    $0xd,%eax
    48c6:	8d 1c 86             	lea    (%esi,%eax,4),%ebx
    48c9:	89 d6                	mov    %edx,%esi
    48cb:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    48d1:	8b 43 34             	mov    0x34(%ebx),%eax
    48d4:	8b 28                	mov    (%eax),%ebp
    48d6:	b8 00 00 00 00       	mov    $0x0,%eax
    48db:	0f b3 75 00          	btr    %esi,0x0(%ebp)
    48df:	0f 93 c0             	setae  %al
    48e2:	85 c0                	test   %eax,%eax
    48e4:	74 24                	je     490a <free_block+0xe6>
    48e6:	8d 44 11 ff          	lea    -0x1(%ecx,%edx,1),%eax
    48ea:	89 44 24 08          	mov    %eax,0x8(%esp)
    48ee:	89 7c 24 04          	mov    %edi,0x4(%esp)
    48f2:	c7 04 24 d3 01 00 00 	movl   $0x1d3,(%esp)
    48f9:	e8 fc ff ff ff       	call   48fa <free_block+0xd6>
    48fe:	c7 04 24 20 02 00 00 	movl   $0x220,(%esp)
    4905:	e8 fc ff ff ff       	call   4906 <free_block+0xe2>
    490a:	8b 43 34             	mov    0x34(%ebx),%eax
    490d:	c6 40 0b 01          	movb   $0x1,0xb(%eax)
    4911:	83 c4 1c             	add    $0x1c,%esp
    4914:	5b                   	pop    %ebx
    4915:	5e                   	pop    %esi
    4916:	5f                   	pop    %edi
    4917:	5d                   	pop    %ebp
    4918:	c3                   	ret    

00004919 <new_block>:
    4919:	55                   	push   %ebp
    491a:	57                   	push   %edi
    491b:	56                   	push   %esi
    491c:	53                   	push   %ebx
    491d:	83 ec 1c             	sub    $0x1c,%esp
    4920:	8b 44 24 30          	mov    0x30(%esp),%eax
    4924:	89 04 24             	mov    %eax,(%esp)
    4927:	e8 fc ff ff ff       	call   4928 <new_block+0xf>
    492c:	89 c5                	mov    %eax,%ebp
    492e:	85 c0                	test   %eax,%eax
    4930:	75 0c                	jne    493e <new_block+0x25>
    4932:	c7 04 24 40 02 00 00 	movl   $0x240,(%esp)
    4939:	e8 fc ff ff ff       	call   493a <new_block+0x21>
    493e:	bb 00 00 00 00       	mov    $0x0,%ebx
    4943:	8b 7c 9d 34          	mov    0x34(%ebp,%ebx,4),%edi
    4947:	85 ff                	test   %edi,%edi
    4949:	74 2d                	je     4978 <new_block+0x5f>
    494b:	8b 37                	mov    (%edi),%esi
    494d:	b9 00 00 00 00       	mov    $0x0,%ecx
    4952:	fc                   	cld    
    4953:	ad                   	lods   %ds:(%esi),%eax
    4954:	f7 d0                	not    %eax
    4956:	0f bc d0             	bsf    %eax,%edx
    4959:	74 04                	je     495f <new_block+0x46>
    495b:	01 d1                	add    %edx,%ecx
    495d:	eb 0b                	jmp    496a <new_block+0x51>
    495f:	83 c1 20             	add    $0x20,%ecx
    4962:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
    4968:	7c e9                	jl     4953 <new_block+0x3a>
    496a:	89 ce                	mov    %ecx,%esi
    496c:	81 f9 ff 1f 00 00    	cmp    $0x1fff,%ecx
    4972:	0f 8e a6 00 00 00    	jle    4a1e <new_block+0x105>
    4978:	43                   	inc    %ebx
    4979:	83 fb 08             	cmp    $0x8,%ebx
    497c:	75 c5                	jne    4943 <new_block+0x2a>
    497e:	e9 8d 00 00 00       	jmp    4a10 <new_block+0xf7>
    4983:	8b 17                	mov    (%edi),%edx
    4985:	b8 00 00 00 00       	mov    $0x0,%eax
    498a:	0f ab 32             	bts    %esi,(%edx)
    498d:	0f 92 c0             	setb   %al
    4990:	85 c0                	test   %eax,%eax
    4992:	74 0c                	je     49a0 <new_block+0x87>
    4994:	c7 04 24 e4 01 00 00 	movl   $0x1e4,(%esp)
    499b:	e8 fc ff ff ff       	call   499c <new_block+0x83>
    49a0:	c6 47 0b 01          	movb   $0x1,0xb(%edi)
    49a4:	c1 e3 0d             	shl    $0xd,%ebx
    49a7:	0f b7 45 08          	movzwl 0x8(%ebp),%eax
    49ab:	8d 44 03 ff          	lea    -0x1(%ebx,%eax,1),%eax
    49af:	01 c6                	add    %eax,%esi
    49b1:	0f b7 45 02          	movzwl 0x2(%ebp),%eax
    49b5:	39 c6                	cmp    %eax,%esi
    49b7:	7d 5e                	jge    4a17 <new_block+0xfe>
    49b9:	89 74 24 04          	mov    %esi,0x4(%esp)
    49bd:	8b 44 24 30          	mov    0x30(%esp),%eax
    49c1:	89 04 24             	mov    %eax,(%esp)
    49c4:	e8 fc ff ff ff       	call   49c5 <new_block+0xac>
    49c9:	89 c3                	mov    %eax,%ebx
    49cb:	85 c0                	test   %eax,%eax
    49cd:	75 0c                	jne    49db <new_block+0xc2>
    49cf:	c7 04 24 ff 01 00 00 	movl   $0x1ff,(%esp)
    49d6:	e8 fc ff ff ff       	call   49d7 <new_block+0xbe>
    49db:	80 7b 0c 01          	cmpb   $0x1,0xc(%ebx)
    49df:	74 0c                	je     49ed <new_block+0xd4>
    49e1:	c7 04 24 1b 02 00 00 	movl   $0x21b,(%esp)
    49e8:	e8 fc ff ff ff       	call   49e9 <new_block+0xd0>
    49ed:	8b 3b                	mov    (%ebx),%edi
    49ef:	b9 00 01 00 00       	mov    $0x100,%ecx
    49f4:	b8 00 00 00 00       	mov    $0x0,%eax
    49f9:	fc                   	cld    
    49fa:	f3 ab                	rep stos %eax,%es:(%edi)
    49fc:	c6 43 0a 01          	movb   $0x1,0xa(%ebx)
    4a00:	c6 43 0b 01          	movb   $0x1,0xb(%ebx)
    4a04:	89 1c 24             	mov    %ebx,(%esp)
    4a07:	e8 fc ff ff ff       	call   4a08 <new_block+0xef>
    4a0c:	89 f0                	mov    %esi,%eax
    4a0e:	eb 1c                	jmp    4a2c <new_block+0x113>
    4a10:	b8 00 00 00 00       	mov    $0x0,%eax
    4a15:	eb 15                	jmp    4a2c <new_block+0x113>
    4a17:	b8 00 00 00 00       	mov    $0x0,%eax
    4a1c:	eb 0e                	jmp    4a2c <new_block+0x113>
    4a1e:	b8 00 00 00 00       	mov    $0x0,%eax
    4a23:	83 fb 07             	cmp    $0x7,%ebx
    4a26:	0f 8e 57 ff ff ff    	jle    4983 <new_block+0x6a>
    4a2c:	83 c4 1c             	add    $0x1c,%esp
    4a2f:	5b                   	pop    %ebx
    4a30:	5e                   	pop    %esi
    4a31:	5f                   	pop    %edi
    4a32:	5d                   	pop    %ebp
    4a33:	c3                   	ret    

00004a34 <free_inode>:
    4a34:	57                   	push   %edi
    4a35:	53                   	push   %ebx
    4a36:	83 ec 14             	sub    $0x14,%esp
    4a39:	8b 7c 24 20          	mov    0x20(%esp),%edi
    4a3d:	85 ff                	test   %edi,%edi
    4a3f:	0f 84 dc 00 00 00    	je     4b21 <free_inode+0xed>
    4a45:	66 83 7f 2c 00       	cmpw   $0x0,0x2c(%edi)
    4a4a:	75 0f                	jne    4a5b <free_inode+0x27>
    4a4c:	b9 38 00 00 00       	mov    $0x38,%ecx
    4a51:	b0 00                	mov    $0x0,%al
    4a53:	fc                   	cld    
    4a54:	f3 aa                	rep stos %al,%es:(%edi)
    4a56:	e9 c6 00 00 00       	jmp    4b21 <free_inode+0xed>
    4a5b:	8b 47 30             	mov    0x30(%edi),%eax
    4a5e:	66 83 f8 01          	cmp    $0x1,%ax
    4a62:	76 1f                	jbe    4a83 <free_inode+0x4f>
    4a64:	0f b7 c0             	movzwl %ax,%eax
    4a67:	89 44 24 04          	mov    %eax,0x4(%esp)
    4a6b:	c7 04 24 70 02 00 00 	movl   $0x270,(%esp)
    4a72:	e8 fc ff ff ff       	call   4a73 <free_inode+0x3f>
    4a77:	c7 04 24 34 02 00 00 	movl   $0x234,(%esp)
    4a7e:	e8 fc ff ff ff       	call   4a7f <free_inode+0x4b>
    4a83:	80 7f 0d 00          	cmpb   $0x0,0xd(%edi)
    4a87:	74 0c                	je     4a95 <free_inode+0x61>
    4a89:	c7 04 24 94 02 00 00 	movl   $0x294,(%esp)
    4a90:	e8 fc ff ff ff       	call   4a91 <free_inode+0x5d>
    4a95:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
    4a99:	89 04 24             	mov    %eax,(%esp)
    4a9c:	e8 fc ff ff ff       	call   4a9d <free_inode+0x69>
    4aa1:	89 c3                	mov    %eax,%ebx
    4aa3:	85 c0                	test   %eax,%eax
    4aa5:	75 0c                	jne    4ab3 <free_inode+0x7f>
    4aa7:	c7 04 24 b4 02 00 00 	movl   $0x2b4,(%esp)
    4aae:	e8 fc ff ff ff       	call   4aaf <free_inode+0x7b>
    4ab3:	66 8b 47 2e          	mov    0x2e(%edi),%ax
    4ab7:	66 85 c0             	test   %ax,%ax
    4aba:	74 05                	je     4ac1 <free_inode+0x8d>
    4abc:	66 3b 03             	cmp    (%ebx),%ax
    4abf:	76 0c                	jbe    4acd <free_inode+0x99>
    4ac1:	c7 04 24 e0 02 00 00 	movl   $0x2e0,(%esp)
    4ac8:	e8 fc ff ff ff       	call   4ac9 <free_inode+0x95>
    4acd:	66 8b 47 2e          	mov    0x2e(%edi),%ax
    4ad1:	66 c1 e8 0d          	shr    $0xd,%ax
    4ad5:	0f b7 c0             	movzwl %ax,%eax
    4ad8:	8b 5c 83 14          	mov    0x14(%ebx,%eax,4),%ebx
    4adc:	85 db                	test   %ebx,%ebx
    4ade:	75 0c                	jne    4aec <free_inode+0xb8>
    4ae0:	c7 04 24 0c 03 00 00 	movl   $0x30c,(%esp)
    4ae7:	e8 fc ff ff ff       	call   4ae8 <free_inode+0xb4>
    4aec:	66 8b 57 2e          	mov    0x2e(%edi),%dx
    4af0:	81 e2 ff 1f 00 00    	and    $0x1fff,%edx
    4af6:	8b 0b                	mov    (%ebx),%ecx
    4af8:	b8 00 00 00 00       	mov    $0x0,%eax
    4afd:	0f b3 11             	btr    %edx,(%ecx)
    4b00:	0f 93 c0             	setae  %al
    4b03:	85 c0                	test   %eax,%eax
    4b05:	74 0c                	je     4b13 <free_inode+0xdf>
    4b07:	c7 04 24 2c 03 00 00 	movl   $0x32c,(%esp)
    4b0e:	e8 fc ff ff ff       	call   4b0f <free_inode+0xdb>
    4b13:	c6 43 0b 01          	movb   $0x1,0xb(%ebx)
    4b17:	b9 38 00 00 00       	mov    $0x38,%ecx
    4b1c:	b0 00                	mov    $0x0,%al
    4b1e:	fc                   	cld    
    4b1f:	f3 aa                	rep stos %al,%es:(%edi)
    4b21:	83 c4 14             	add    $0x14,%esp
    4b24:	5b                   	pop    %ebx
    4b25:	5f                   	pop    %edi
    4b26:	c3                   	ret    

00004b27 <new_inode>:
    4b27:	55                   	push   %ebp
    4b28:	57                   	push   %edi
    4b29:	56                   	push   %esi
    4b2a:	53                   	push   %ebx
    4b2b:	83 ec 1c             	sub    $0x1c,%esp
    4b2e:	e8 fc ff ff ff       	call   4b2f <new_inode+0x8>
    4b33:	89 c5                	mov    %eax,%ebp
    4b35:	85 c0                	test   %eax,%eax
    4b37:	0f 84 2b 01 00 00    	je     4c68 <new_inode+0x141>
    4b3d:	8b 44 24 30          	mov    0x30(%esp),%eax
    4b41:	89 04 24             	mov    %eax,(%esp)
    4b44:	e8 fc ff ff ff       	call   4b45 <new_inode+0x1e>
    4b49:	89 44 24 08          	mov    %eax,0x8(%esp)
    4b4d:	85 c0                	test   %eax,%eax
    4b4f:	75 0c                	jne    4b5d <new_inode+0x36>
    4b51:	c7 04 24 3f 02 00 00 	movl   $0x23f,(%esp)
    4b58:	e8 fc ff ff ff       	call   4b59 <new_inode+0x32>
    4b5d:	be 00 20 00 00       	mov    $0x2000,%esi
    4b62:	bb 00 00 00 00       	mov    $0x0,%ebx
    4b67:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
    4b6b:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    4b6f:	8b 7c 9d 14          	mov    0x14(%ebp,%ebx,4),%edi
    4b73:	85 ff                	test   %edi,%edi
    4b75:	74 29                	je     4ba0 <new_inode+0x79>
    4b77:	8b 37                	mov    (%edi),%esi
    4b79:	b9 00 00 00 00       	mov    $0x0,%ecx
    4b7e:	fc                   	cld    
    4b7f:	ad                   	lods   %ds:(%esi),%eax
    4b80:	f7 d0                	not    %eax
    4b82:	0f bc d0             	bsf    %eax,%edx
    4b85:	74 04                	je     4b8b <new_inode+0x64>
    4b87:	01 d1                	add    %edx,%ecx
    4b89:	eb 0b                	jmp    4b96 <new_inode+0x6f>
    4b8b:	83 c1 20             	add    $0x20,%ecx
    4b8e:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
    4b94:	7c e9                	jl     4b7f <new_inode+0x58>
    4b96:	89 ce                	mov    %ecx,%esi
    4b98:	81 f9 ff 1f 00 00    	cmp    $0x1fff,%ecx
    4b9e:	7e 18                	jle    4bb8 <new_inode+0x91>
    4ba0:	43                   	inc    %ebx
    4ba1:	83 fb 08             	cmp    $0x8,%ebx
    4ba4:	75 c9                	jne    4b6f <new_inode+0x48>
    4ba6:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    4baa:	85 ff                	test   %edi,%edi
    4bac:	74 20                	je     4bce <new_inode+0xa7>
    4bae:	81 fe ff 1f 00 00    	cmp    $0x1fff,%esi
    4bb4:	7f 18                	jg     4bce <new_inode+0xa7>
    4bb6:	eb 04                	jmp    4bbc <new_inode+0x95>
    4bb8:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    4bbc:	89 da                	mov    %ebx,%edx
    4bbe:	c1 e2 0d             	shl    $0xd,%edx
    4bc1:	01 f2                	add    %esi,%edx
    4bc3:	8b 44 24 08          	mov    0x8(%esp),%eax
    4bc7:	0f b7 00             	movzwl (%eax),%eax
    4bca:	39 c2                	cmp    %eax,%edx
    4bcc:	7e 12                	jle    4be0 <new_inode+0xb9>
    4bce:	89 2c 24             	mov    %ebp,(%esp)
    4bd1:	e8 fc ff ff ff       	call   4bd2 <new_inode+0xab>
    4bd6:	b8 00 00 00 00       	mov    $0x0,%eax
    4bdb:	e9 8d 00 00 00       	jmp    4c6d <new_inode+0x146>
    4be0:	8b 17                	mov    (%edi),%edx
    4be2:	b8 00 00 00 00       	mov    $0x0,%eax
    4be7:	0f ab 32             	bts    %esi,(%edx)
    4bea:	0f 92 c0             	setb   %al
    4bed:	85 c0                	test   %eax,%eax
    4bef:	74 0c                	je     4bfd <new_inode+0xd6>
    4bf1:	c7 04 24 5d 02 00 00 	movl   $0x25d,(%esp)
    4bf8:	e8 fc ff ff ff       	call   4bf9 <new_inode+0xd2>
    4bfd:	c6 47 0b 01          	movb   $0x1,0xb(%edi)
    4c01:	66 c7 45 30 01 00    	movw   $0x1,0x30(%ebp)
    4c07:	c6 45 0d 01          	movb   $0x1,0xd(%ebp)
    4c0b:	8b 44 24 30          	mov    0x30(%esp),%eax
    4c0f:	66 89 45 2c          	mov    %ax,0x2c(%ebp)
    4c13:	a1 00 00 00 00       	mov    0x0,%eax
    4c18:	66 8b 80 42 02 00 00 	mov    0x242(%eax),%ax
    4c1f:	66 89 45 02          	mov    %ax,0x2(%ebp)
    4c23:	a1 00 00 00 00       	mov    0x0,%eax
    4c28:	8b 80 48 02 00 00    	mov    0x248(%eax),%eax
    4c2e:	88 45 0c             	mov    %al,0xc(%ebp)
    4c31:	c6 45 33 01          	movb   $0x1,0x33(%ebp)
    4c35:	c1 e3 0d             	shl    $0xd,%ebx
    4c38:	01 de                	add    %ebx,%esi
    4c3a:	66 89 75 2e          	mov    %si,0x2e(%ebp)
    4c3e:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    4c44:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4c49:	f7 e9                	imul   %ecx
    4c4b:	89 d0                	mov    %edx,%eax
    4c4d:	c1 f8 05             	sar    $0x5,%eax
    4c50:	c1 f9 1f             	sar    $0x1f,%ecx
    4c53:	29 c8                	sub    %ecx,%eax
    4c55:	03 05 00 00 00 00    	add    0x0,%eax
    4c5b:	89 45 28             	mov    %eax,0x28(%ebp)
    4c5e:	89 45 24             	mov    %eax,0x24(%ebp)
    4c61:	89 45 08             	mov    %eax,0x8(%ebp)
    4c64:	89 e8                	mov    %ebp,%eax
    4c66:	eb 05                	jmp    4c6d <new_inode+0x146>
    4c68:	b8 00 00 00 00       	mov    $0x0,%eax
    4c6d:	83 c4 1c             	add    $0x1c,%esp
    4c70:	5b                   	pop    %ebx
    4c71:	5e                   	pop    %esi
    4c72:	5f                   	pop    %edi
    4c73:	5d                   	pop    %ebp
    4c74:	c3                   	ret    

00004c75 <dupfd>:
    4c75:	83 f8 13             	cmp    $0x13,%eax
    4c78:	77 3b                	ja     4cb5 <dupfd+0x40>
    4c7a:	56                   	push   %esi
    4c7b:	53                   	push   %ebx
    4c7c:	8b 1d 00 00 00 00    	mov    0x0,%ebx
    4c82:	8b 84 83 80 02 00 00 	mov    0x280(%ebx,%eax,4),%eax
    4c89:	85 c0                	test   %eax,%eax
    4c8b:	74 2e                	je     4cbb <dupfd+0x46>
    4c8d:	83 fa 13             	cmp    $0x13,%edx
    4c90:	77 30                	ja     4cc2 <dupfd+0x4d>
    4c92:	83 bc 93 80 02 00 00 	cmpl   $0x0,0x280(%ebx,%edx,4)
    4c99:	00 
    4c9a:	75 0c                	jne    4ca8 <dupfd+0x33>
    4c9c:	eb 2b                	jmp    4cc9 <dupfd+0x54>
    4c9e:	83 bc 93 80 02 00 00 	cmpl   $0x0,0x280(%ebx,%edx,4)
    4ca5:	00 
    4ca6:	74 21                	je     4cc9 <dupfd+0x54>
    4ca8:	42                   	inc    %edx
    4ca9:	83 fa 14             	cmp    $0x14,%edx
    4cac:	75 f0                	jne    4c9e <dupfd+0x29>
    4cae:	b8 e8 ff ff ff       	mov    $0xffffffe8,%eax
    4cb3:	eb 30                	jmp    4ce5 <dupfd+0x70>
    4cb5:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4cba:	c3                   	ret    
    4cbb:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4cc0:	eb 23                	jmp    4ce5 <dupfd+0x70>
    4cc2:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
    4cc7:	eb 1c                	jmp    4ce5 <dupfd+0x70>
    4cc9:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    4cce:	88 d1                	mov    %dl,%cl
    4cd0:	d3 c6                	rol    %cl,%esi
    4cd2:	21 b3 7c 02 00 00    	and    %esi,0x27c(%ebx)
    4cd8:	89 84 93 80 02 00 00 	mov    %eax,0x280(%ebx,%edx,4)
    4cdf:	66 ff 40 04          	incw   0x4(%eax)
    4ce3:	89 d0                	mov    %edx,%eax
    4ce5:	5b                   	pop    %ebx
    4ce6:	5e                   	pop    %esi
    4ce7:	c3                   	ret    

00004ce8 <sys_dup2>:
    4ce8:	53                   	push   %ebx
    4ce9:	83 ec 18             	sub    $0x18,%esp
    4cec:	8b 5c 24 24          	mov    0x24(%esp),%ebx
    4cf0:	89 1c 24             	mov    %ebx,(%esp)
    4cf3:	e8 fc ff ff ff       	call   4cf4 <sys_dup2+0xc>
    4cf8:	89 da                	mov    %ebx,%edx
    4cfa:	8b 44 24 20          	mov    0x20(%esp),%eax
    4cfe:	e8 72 ff ff ff       	call   4c75 <dupfd>
    4d03:	83 c4 18             	add    $0x18,%esp
    4d06:	5b                   	pop    %ebx
    4d07:	c3                   	ret    

00004d08 <sys_dup>:
    4d08:	ba 00 00 00 00       	mov    $0x0,%edx
    4d0d:	8b 44 24 04          	mov    0x4(%esp),%eax
    4d11:	e8 5f ff ff ff       	call   4c75 <dupfd>
    4d16:	c3                   	ret    

00004d17 <sys_fcntl>:
    4d17:	53                   	push   %ebx
    4d18:	8b 4c 24 08          	mov    0x8(%esp),%ecx
    4d1c:	8b 44 24 0c          	mov    0xc(%esp),%eax
    4d20:	83 f9 13             	cmp    $0x13,%ecx
    4d23:	0f 87 92 00 00 00    	ja     4dbb <sys_fcntl+0xa4>
    4d29:	8b 15 00 00 00 00    	mov    0x0,%edx
    4d2f:	8b 9c 8a 80 02 00 00 	mov    0x280(%edx,%ecx,4),%ebx
    4d36:	85 db                	test   %ebx,%ebx
    4d38:	0f 84 84 00 00 00    	je     4dc2 <sys_fcntl+0xab>
    4d3e:	83 f8 04             	cmp    $0x4,%eax
    4d41:	0f 87 82 00 00 00    	ja     4dc9 <sys_fcntl+0xb2>
    4d47:	ff 24 85 20 00 00 00 	jmp    *0x20(,%eax,4)
    4d4e:	8b 54 24 10          	mov    0x10(%esp),%edx
    4d52:	89 c8                	mov    %ecx,%eax
    4d54:	e8 1c ff ff ff       	call   4c75 <dupfd>
    4d59:	eb 73                	jmp    4dce <sys_fcntl+0xb7>
    4d5b:	8b 82 7c 02 00 00    	mov    0x27c(%edx),%eax
    4d61:	d3 e8                	shr    %cl,%eax
    4d63:	83 e0 01             	and    $0x1,%eax
    4d66:	eb 66                	jmp    4dce <sys_fcntl+0xb7>
    4d68:	f6 44 24 10 01       	testb  $0x1,0x10(%esp)
    4d6d:	74 14                	je     4d83 <sys_fcntl+0x6c>
    4d6f:	b8 01 00 00 00       	mov    $0x1,%eax
    4d74:	d3 e0                	shl    %cl,%eax
    4d76:	09 82 7c 02 00 00    	or     %eax,0x27c(%edx)
    4d7c:	b8 00 00 00 00       	mov    $0x0,%eax
    4d81:	eb 4b                	jmp    4dce <sys_fcntl+0xb7>
    4d83:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4d88:	d3 c0                	rol    %cl,%eax
    4d8a:	21 82 7c 02 00 00    	and    %eax,0x27c(%edx)
    4d90:	b8 00 00 00 00       	mov    $0x0,%eax
    4d95:	eb 37                	jmp    4dce <sys_fcntl+0xb7>
    4d97:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    4d9b:	eb 31                	jmp    4dce <sys_fcntl+0xb7>
    4d9d:	8b 54 24 10          	mov    0x10(%esp),%edx
    4da1:	81 e2 00 0c 00 00    	and    $0xc00,%edx
    4da7:	66 8b 43 02          	mov    0x2(%ebx),%ax
    4dab:	80 e4 f3             	and    $0xf3,%ah
    4dae:	09 d0                	or     %edx,%eax
    4db0:	66 89 43 02          	mov    %ax,0x2(%ebx)
    4db4:	b8 00 00 00 00       	mov    $0x0,%eax
    4db9:	eb 13                	jmp    4dce <sys_fcntl+0xb7>
    4dbb:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4dc0:	eb 0c                	jmp    4dce <sys_fcntl+0xb7>
    4dc2:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4dc7:	eb 05                	jmp    4dce <sys_fcntl+0xb7>
    4dc9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4dce:	5b                   	pop    %ebx
    4dcf:	c3                   	ret    

00004dd0 <sys_ioctl>:
    4dd0:	83 ec 1c             	sub    $0x1c,%esp
    4dd3:	8b 44 24 20          	mov    0x20(%esp),%eax
    4dd7:	83 f8 13             	cmp    $0x13,%eax
    4dda:	77 53                	ja     4e2f <sys_ioctl+0x5f>
    4ddc:	8b 15 00 00 00 00    	mov    0x0,%edx
    4de2:	8b 84 82 80 02 00 00 	mov    0x280(%edx,%eax,4),%eax
    4de9:	85 c0                	test   %eax,%eax
    4deb:	74 49                	je     4e36 <sys_ioctl+0x66>
    4ded:	8b 40 08             	mov    0x8(%eax),%eax
    4df0:	8b 10                	mov    (%eax),%edx
    4df2:	81 e2 00 b0 ff ff    	and    $0xffffb000,%edx
    4df8:	66 81 fa 00 20       	cmp    $0x2000,%dx
    4dfd:	75 3e                	jne    4e3d <sys_ioctl+0x6d>
    4dff:	0f b7 50 0e          	movzwl 0xe(%eax),%edx
    4e03:	89 d0                	mov    %edx,%eax
    4e05:	c1 e8 08             	shr    $0x8,%eax
    4e08:	83 f8 07             	cmp    $0x7,%eax
    4e0b:	77 37                	ja     4e44 <sys_ioctl+0x74>
    4e0d:	8b 04 85 40 00 00 00 	mov    0x40(,%eax,4),%eax
    4e14:	85 c0                	test   %eax,%eax
    4e16:	74 33                	je     4e4b <sys_ioctl+0x7b>
    4e18:	8b 4c 24 28          	mov    0x28(%esp),%ecx
    4e1c:	89 4c 24 08          	mov    %ecx,0x8(%esp)
    4e20:	8b 4c 24 24          	mov    0x24(%esp),%ecx
    4e24:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    4e28:	89 14 24             	mov    %edx,(%esp)
    4e2b:	ff d0                	call   *%eax
    4e2d:	eb 21                	jmp    4e50 <sys_ioctl+0x80>
    4e2f:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4e34:	eb 1a                	jmp    4e50 <sys_ioctl+0x80>
    4e36:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
    4e3b:	eb 13                	jmp    4e50 <sys_ioctl+0x80>
    4e3d:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
    4e42:	eb 0c                	jmp    4e50 <sys_ioctl+0x80>
    4e44:	b8 ed ff ff ff       	mov    $0xffffffed,%eax
    4e49:	eb 05                	jmp    4e50 <sys_ioctl+0x80>
    4e4b:	b8 e7 ff ff ff       	mov    $0xffffffe7,%eax
    4e50:	83 c4 1c             	add    $0x1c,%esp
    4e53:	c3                   	ret    

00004e54 <free_ind>:
    4e54:	55                   	push   %ebp
    4e55:	57                   	push   %edi
    4e56:	56                   	push   %esi
    4e57:	53                   	push   %ebx
    4e58:	83 ec 1c             	sub    $0x1c,%esp
    4e5b:	89 d5                	mov    %edx,%ebp
    4e5d:	85 d2                	test   %edx,%edx
    4e5f:	74 54                	je     4eb5 <free_ind+0x61>
    4e61:	89 c7                	mov    %eax,%edi
    4e63:	89 54 24 04          	mov    %edx,0x4(%esp)
    4e67:	89 04 24             	mov    %eax,(%esp)
    4e6a:	e8 fc ff ff ff       	call   4e6b <free_ind+0x17>
    4e6f:	89 44 24 0c          	mov    %eax,0xc(%esp)
    4e73:	85 c0                	test   %eax,%eax
    4e75:	74 32                	je     4ea9 <free_ind+0x55>
    4e77:	8b 18                	mov    (%eax),%ebx
    4e79:	8d b3 00 04 00 00    	lea    0x400(%ebx),%esi
    4e7f:	66 8b 03             	mov    (%ebx),%ax
    4e82:	66 85 c0             	test   %ax,%ax
    4e85:	74 0f                	je     4e96 <free_ind+0x42>
    4e87:	0f b7 c0             	movzwl %ax,%eax
    4e8a:	89 44 24 04          	mov    %eax,0x4(%esp)
    4e8e:	89 3c 24             	mov    %edi,(%esp)
    4e91:	e8 fc ff ff ff       	call   4e92 <free_ind+0x3e>
    4e96:	83 c3 02             	add    $0x2,%ebx
    4e99:	39 f3                	cmp    %esi,%ebx
    4e9b:	75 e2                	jne    4e7f <free_ind+0x2b>
    4e9d:	8b 44 24 0c          	mov    0xc(%esp),%eax
    4ea1:	89 04 24             	mov    %eax,(%esp)
    4ea4:	e8 fc ff ff ff       	call   4ea5 <free_ind+0x51>
    4ea9:	89 6c 24 04          	mov    %ebp,0x4(%esp)
    4ead:	89 3c 24             	mov    %edi,(%esp)
    4eb0:	e8 fc ff ff ff       	call   4eb1 <free_ind+0x5d>
    4eb5:	83 c4 1c             	add    $0x1c,%esp
    4eb8:	5b                   	pop    %ebx
    4eb9:	5e                   	pop    %esi
    4eba:	5f                   	pop    %edi
    4ebb:	5d                   	pop    %ebp
    4ebc:	c3                   	ret    

00004ebd <truncate>:
    4ebd:	55                   	push   %ebp
    4ebe:	57                   	push   %edi
    4ebf:	56                   	push   %esi
    4ec0:	53                   	push   %ebx
    4ec1:	83 ec 1c             	sub    $0x1c,%esp
    4ec4:	8b 7c 24 30          	mov    0x30(%esp),%edi
    4ec8:	8b 07                	mov    (%edi),%eax
    4eca:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    4ecf:	66 3d 00 80          	cmp    $0x8000,%ax
    4ed3:	74 0a                	je     4edf <truncate+0x22>
    4ed5:	66 3d 00 40          	cmp    $0x4000,%ax
    4ed9:	0f 85 d8 00 00 00    	jne    4fb7 <truncate+0xfa>
    4edf:	89 fb                	mov    %edi,%ebx
    4ee1:	8d 77 0e             	lea    0xe(%edi),%esi
    4ee4:	66 8b 43 0e          	mov    0xe(%ebx),%ax
    4ee8:	66 85 c0             	test   %ax,%ax
    4eeb:	74 19                	je     4f06 <truncate+0x49>
    4eed:	0f b7 c0             	movzwl %ax,%eax
    4ef0:	89 44 24 04          	mov    %eax,0x4(%esp)
    4ef4:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
    4ef8:	89 04 24             	mov    %eax,(%esp)
    4efb:	e8 fc ff ff ff       	call   4efc <truncate+0x3f>
    4f00:	66 c7 43 0e 00 00    	movw   $0x0,0xe(%ebx)
    4f06:	83 c3 02             	add    $0x2,%ebx
    4f09:	39 f3                	cmp    %esi,%ebx
    4f0b:	75 d7                	jne    4ee4 <truncate+0x27>
    4f0d:	0f b7 57 1c          	movzwl 0x1c(%edi),%edx
    4f11:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
    4f15:	e8 3a ff ff ff       	call   4e54 <free_ind>
    4f1a:	0f b7 47 1e          	movzwl 0x1e(%edi),%eax
    4f1e:	89 44 24 08          	mov    %eax,0x8(%esp)
    4f22:	8b 6f 2c             	mov    0x2c(%edi),%ebp
    4f25:	85 c0                	test   %eax,%eax
    4f27:	74 54                	je     4f7d <truncate+0xc0>
    4f29:	0f b7 ed             	movzwl %bp,%ebp
    4f2c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4f30:	89 2c 24             	mov    %ebp,(%esp)
    4f33:	e8 fc ff ff ff       	call   4f34 <truncate+0x77>
    4f38:	89 44 24 0c          	mov    %eax,0xc(%esp)
    4f3c:	85 c0                	test   %eax,%eax
    4f3e:	74 2d                	je     4f6d <truncate+0xb0>
    4f40:	8b 18                	mov    (%eax),%ebx
    4f42:	8d b3 00 04 00 00    	lea    0x400(%ebx),%esi
    4f48:	66 8b 13             	mov    (%ebx),%dx
    4f4b:	66 85 d2             	test   %dx,%dx
    4f4e:	74 0a                	je     4f5a <truncate+0x9d>
    4f50:	0f b7 d2             	movzwl %dx,%edx
    4f53:	89 e8                	mov    %ebp,%eax
    4f55:	e8 fa fe ff ff       	call   4e54 <free_ind>
    4f5a:	83 c3 02             	add    $0x2,%ebx
    4f5d:	39 f3                	cmp    %esi,%ebx
    4f5f:	75 e7                	jne    4f48 <truncate+0x8b>
    4f61:	8b 44 24 0c          	mov    0xc(%esp),%eax
    4f65:	89 04 24             	mov    %eax,(%esp)
    4f68:	e8 fc ff ff ff       	call   4f69 <truncate+0xac>
    4f6d:	8b 44 24 08          	mov    0x8(%esp),%eax
    4f71:	89 44 24 04          	mov    %eax,0x4(%esp)
    4f75:	89 2c 24             	mov    %ebp,(%esp)
    4f78:	e8 fc ff ff ff       	call   4f79 <truncate+0xbc>
    4f7d:	66 c7 47 1e 00 00    	movw   $0x0,0x1e(%edi)
    4f83:	66 c7 47 1c 00 00    	movw   $0x0,0x1c(%edi)
    4f89:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    4f90:	c6 47 33 01          	movb   $0x1,0x33(%edi)
    4f94:	8b 0d 00 00 00 00    	mov    0x0,%ecx
    4f9a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4f9f:	f7 e9                	imul   %ecx
    4fa1:	89 d0                	mov    %edx,%eax
    4fa3:	c1 f8 05             	sar    $0x5,%eax
    4fa6:	c1 f9 1f             	sar    $0x1f,%ecx
    4fa9:	29 c8                	sub    %ecx,%eax
    4fab:	03 05 00 00 00 00    	add    0x0,%eax
    4fb1:	89 47 28             	mov    %eax,0x28(%edi)
    4fb4:	89 47 08             	mov    %eax,0x8(%edi)
    4fb7:	83 c4 1c             	add    $0x1c,%esp
    4fba:	5b                   	pop    %ebx
    4fbb:	5e                   	pop    %esi
    4fbc:	5f                   	pop    %edi
    4fbd:	5d                   	pop    %ebp
    4fbe:	c3                   	ret    
