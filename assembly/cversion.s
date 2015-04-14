
cversion:     file format elf32-i386


Disassembly of section .init:

080482d4 <_init>:
 80482d4:	53                   	push   %ebx
 80482d5:	83 ec 08             	sub    $0x8,%esp
 80482d8:	e8 00 00 00 00       	call   80482dd <_init+0x9>
 80482dd:	5b                   	pop    %ebx
 80482de:	81 c3 17 1d 00 00    	add    $0x1d17,%ebx
 80482e4:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482ea:	85 c0                	test   %eax,%eax
 80482ec:	74 05                	je     80482f3 <_init+0x1f>
 80482ee:	e8 2d 00 00 00       	call   8048320 <__gmon_start__@plt>
 80482f3:	e8 e8 00 00 00       	call   80483e0 <frame_dummy>
 80482f8:	e8 43 02 00 00       	call   8048540 <__do_global_ctors_aux>
 80482fd:	83 c4 08             	add    $0x8,%esp
 8048300:	5b                   	pop    %ebx
 8048301:	c3                   	ret    

Disassembly of section .plt:

08048310 <__gmon_start__@plt-0x10>:
 8048310:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 8048316:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 804831c:	00 00                	add    %al,(%eax)
	...

08048320 <__gmon_start__@plt>:
 8048320:	ff 25 00 a0 04 08    	jmp    *0x804a000
 8048326:	68 00 00 00 00       	push   $0x0
 804832b:	e9 e0 ff ff ff       	jmp    8048310 <_init+0x3c>

08048330 <__libc_start_main@plt>:
 8048330:	ff 25 04 a0 04 08    	jmp    *0x804a004
 8048336:	68 08 00 00 00       	push   $0x8
 804833b:	e9 d0 ff ff ff       	jmp    8048310 <_init+0x3c>

08048340 <__printf_chk@plt>:
 8048340:	ff 25 08 a0 04 08    	jmp    *0x804a008
 8048346:	68 10 00 00 00       	push   $0x10
 804834b:	e9 c0 ff ff ff       	jmp    8048310 <_init+0x3c>

Disassembly of section .text:

08048350 <_start>:
 8048350:	31 ed                	xor    %ebp,%ebp
 8048352:	5e                   	pop    %esi
 8048353:	89 e1                	mov    %esp,%ecx
 8048355:	83 e4 f0             	and    $0xfffffff0,%esp
 8048358:	50                   	push   %eax
 8048359:	54                   	push   %esp
 804835a:	52                   	push   %edx
 804835b:	68 30 85 04 08       	push   $0x8048530
 8048360:	68 c0 84 04 08       	push   $0x80484c0
 8048365:	51                   	push   %ecx
 8048366:	56                   	push   %esi
 8048367:	68 2f 84 04 08       	push   $0x804842f
 804836c:	e8 bf ff ff ff       	call   8048330 <__libc_start_main@plt>
 8048371:	f4                   	hlt    
 8048372:	90                   	nop
 8048373:	90                   	nop
 8048374:	90                   	nop
 8048375:	90                   	nop
 8048376:	90                   	nop
 8048377:	90                   	nop
 8048378:	90                   	nop
 8048379:	90                   	nop
 804837a:	90                   	nop
 804837b:	90                   	nop
 804837c:	90                   	nop
 804837d:	90                   	nop
 804837e:	90                   	nop
 804837f:	90                   	nop

08048380 <__do_global_dtors_aux>:
 8048380:	55                   	push   %ebp
 8048381:	89 e5                	mov    %esp,%ebp
 8048383:	53                   	push   %ebx
 8048384:	83 ec 04             	sub    $0x4,%esp
 8048387:	80 3d 14 a0 04 08 00 	cmpb   $0x0,0x804a014
 804838e:	75 3f                	jne    80483cf <__do_global_dtors_aux+0x4f>
 8048390:	a1 18 a0 04 08       	mov    0x804a018,%eax
 8048395:	bb 20 9f 04 08       	mov    $0x8049f20,%ebx
 804839a:	81 eb 1c 9f 04 08    	sub    $0x8049f1c,%ebx
 80483a0:	c1 fb 02             	sar    $0x2,%ebx
 80483a3:	83 eb 01             	sub    $0x1,%ebx
 80483a6:	39 d8                	cmp    %ebx,%eax
 80483a8:	73 1e                	jae    80483c8 <__do_global_dtors_aux+0x48>
 80483aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483b0:	83 c0 01             	add    $0x1,%eax
 80483b3:	a3 18 a0 04 08       	mov    %eax,0x804a018
 80483b8:	ff 14 85 1c 9f 04 08 	call   *0x8049f1c(,%eax,4)
 80483bf:	a1 18 a0 04 08       	mov    0x804a018,%eax
 80483c4:	39 d8                	cmp    %ebx,%eax
 80483c6:	72 e8                	jb     80483b0 <__do_global_dtors_aux+0x30>
 80483c8:	c6 05 14 a0 04 08 01 	movb   $0x1,0x804a014
 80483cf:	83 c4 04             	add    $0x4,%esp
 80483d2:	5b                   	pop    %ebx
 80483d3:	5d                   	pop    %ebp
 80483d4:	c3                   	ret    
 80483d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483e0 <frame_dummy>:
 80483e0:	55                   	push   %ebp
 80483e1:	89 e5                	mov    %esp,%ebp
 80483e3:	83 ec 18             	sub    $0x18,%esp
 80483e6:	a1 24 9f 04 08       	mov    0x8049f24,%eax
 80483eb:	85 c0                	test   %eax,%eax
 80483ed:	74 12                	je     8048401 <frame_dummy+0x21>
 80483ef:	b8 00 00 00 00       	mov    $0x0,%eax
 80483f4:	85 c0                	test   %eax,%eax
 80483f6:	74 09                	je     8048401 <frame_dummy+0x21>
 80483f8:	c7 04 24 24 9f 04 08 	movl   $0x8049f24,(%esp)
 80483ff:	ff d0                	call   *%eax
 8048401:	c9                   	leave  
 8048402:	c3                   	ret    
 8048403:	90                   	nop

08048404 <examProc>:
 8048404:	56                   	push   %esi
 8048405:	53                   	push   %ebx
 8048406:	8b 54 24 0c          	mov    0xc(%esp),%edx
 804840a:	8b 74 24 10          	mov    0x10(%esp),%esi
 804840e:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048412:	85 db                	test   %ebx,%ebx
 8048414:	7e 16                	jle    804842c <examProc+0x28>
 8048416:	b8 00 00 00 00       	mov    $0x0,%eax
 804841b:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
 804841e:	0f af 0c 86          	imul   (%esi,%eax,4),%ecx
 8048422:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 8048425:	83 c0 01             	add    $0x1,%eax
 8048428:	39 d8                	cmp    %ebx,%eax
 804842a:	75 ef                	jne    804841b <examProc+0x17>
 804842c:	5b                   	pop    %ebx
 804842d:	5e                   	pop    %esi
 804842e:	c3                   	ret    

0804842f <main>:
 804842f:	55                   	push   %ebp
 8048430:	89 e5                	mov    %esp,%ebp
 8048432:	53                   	push   %ebx
 8048433:	83 e4 f0             	and    $0xfffffff0,%esp
 8048436:	83 ec 30             	sub    $0x30,%esp
 8048439:	c7 44 24 18 08 00 00 	movl   $0x8,0x18(%esp)
 8048440:	00 
 8048441:	c7 44 24 1c e7 ff ff 	movl   $0xffffffe7,0x1c(%esp)
 8048448:	ff 
 8048449:	c7 44 24 20 0d 00 00 	movl   $0xd,0x20(%esp)
 8048450:	00 
 8048451:	c7 44 24 24 09 00 00 	movl   $0x9,0x24(%esp)
 8048458:	00 
 8048459:	c7 44 24 28 0e 00 00 	movl   $0xe,0x28(%esp)
 8048460:	00 
 8048461:	c7 44 24 2c 06 00 00 	movl   $0x6,0x2c(%esp)
 8048468:	00 
 8048469:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 8048470:	00 
 8048471:	8d 44 24 24          	lea    0x24(%esp),%eax
 8048475:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048479:	8d 44 24 18          	lea    0x18(%esp),%eax
 804847d:	89 04 24             	mov    %eax,(%esp)
 8048480:	e8 7f ff ff ff       	call   8048404 <examProc>
 8048485:	bb 00 00 00 00       	mov    $0x0,%ebx
 804848a:	8b 44 9c 18          	mov    0x18(%esp,%ebx,4),%eax
 804848e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048492:	c7 44 24 04 90 85 04 	movl   $0x8048590,0x4(%esp)
 8048499:	08 
 804849a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80484a1:	e8 9a fe ff ff       	call   8048340 <__printf_chk@plt>
 80484a6:	83 c3 01             	add    $0x1,%ebx
 80484a9:	83 fb 03             	cmp    $0x3,%ebx
 80484ac:	75 dc                	jne    804848a <main+0x5b>
 80484ae:	b8 00 00 00 00       	mov    $0x0,%eax
 80484b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80484b6:	c9                   	leave  
 80484b7:	c3                   	ret    
 80484b8:	90                   	nop
 80484b9:	90                   	nop
 80484ba:	90                   	nop
 80484bb:	90                   	nop
 80484bc:	90                   	nop
 80484bd:	90                   	nop
 80484be:	90                   	nop
 80484bf:	90                   	nop

080484c0 <__libc_csu_init>:
 80484c0:	55                   	push   %ebp
 80484c1:	57                   	push   %edi
 80484c2:	56                   	push   %esi
 80484c3:	53                   	push   %ebx
 80484c4:	e8 69 00 00 00       	call   8048532 <__i686.get_pc_thunk.bx>
 80484c9:	81 c3 2b 1b 00 00    	add    $0x1b2b,%ebx
 80484cf:	83 ec 1c             	sub    $0x1c,%esp
 80484d2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80484d6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 80484dc:	e8 f3 fd ff ff       	call   80482d4 <_init>
 80484e1:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 80484e7:	29 c7                	sub    %eax,%edi
 80484e9:	c1 ff 02             	sar    $0x2,%edi
 80484ec:	85 ff                	test   %edi,%edi
 80484ee:	74 29                	je     8048519 <__libc_csu_init+0x59>
 80484f0:	31 f6                	xor    %esi,%esi
 80484f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484f8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80484fc:	89 2c 24             	mov    %ebp,(%esp)
 80484ff:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048503:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048507:	89 44 24 04          	mov    %eax,0x4(%esp)
 804850b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 8048512:	83 c6 01             	add    $0x1,%esi
 8048515:	39 fe                	cmp    %edi,%esi
 8048517:	75 df                	jne    80484f8 <__libc_csu_init+0x38>
 8048519:	83 c4 1c             	add    $0x1c,%esp
 804851c:	5b                   	pop    %ebx
 804851d:	5e                   	pop    %esi
 804851e:	5f                   	pop    %edi
 804851f:	5d                   	pop    %ebp
 8048520:	c3                   	ret    
 8048521:	eb 0d                	jmp    8048530 <__libc_csu_fini>
 8048523:	90                   	nop
 8048524:	90                   	nop
 8048525:	90                   	nop
 8048526:	90                   	nop
 8048527:	90                   	nop
 8048528:	90                   	nop
 8048529:	90                   	nop
 804852a:	90                   	nop
 804852b:	90                   	nop
 804852c:	90                   	nop
 804852d:	90                   	nop
 804852e:	90                   	nop
 804852f:	90                   	nop

08048530 <__libc_csu_fini>:
 8048530:	f3 c3                	repz ret 

08048532 <__i686.get_pc_thunk.bx>:
 8048532:	8b 1c 24             	mov    (%esp),%ebx
 8048535:	c3                   	ret    
 8048536:	90                   	nop
 8048537:	90                   	nop
 8048538:	90                   	nop
 8048539:	90                   	nop
 804853a:	90                   	nop
 804853b:	90                   	nop
 804853c:	90                   	nop
 804853d:	90                   	nop
 804853e:	90                   	nop
 804853f:	90                   	nop

08048540 <__do_global_ctors_aux>:
 8048540:	55                   	push   %ebp
 8048541:	89 e5                	mov    %esp,%ebp
 8048543:	53                   	push   %ebx
 8048544:	83 ec 04             	sub    $0x4,%esp
 8048547:	a1 14 9f 04 08       	mov    0x8049f14,%eax
 804854c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804854f:	74 13                	je     8048564 <__do_global_ctors_aux+0x24>
 8048551:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 8048556:	66 90                	xchg   %ax,%ax
 8048558:	83 eb 04             	sub    $0x4,%ebx
 804855b:	ff d0                	call   *%eax
 804855d:	8b 03                	mov    (%ebx),%eax
 804855f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048562:	75 f4                	jne    8048558 <__do_global_ctors_aux+0x18>
 8048564:	83 c4 04             	add    $0x4,%esp
 8048567:	5b                   	pop    %ebx
 8048568:	5d                   	pop    %ebp
 8048569:	c3                   	ret    
 804856a:	90                   	nop
 804856b:	90                   	nop

Disassembly of section .fini:

0804856c <_fini>:
 804856c:	53                   	push   %ebx
 804856d:	83 ec 08             	sub    $0x8,%esp
 8048570:	e8 00 00 00 00       	call   8048575 <_fini+0x9>
 8048575:	5b                   	pop    %ebx
 8048576:	81 c3 7f 1a 00 00    	add    $0x1a7f,%ebx
 804857c:	e8 ff fd ff ff       	call   8048380 <__do_global_dtors_aux>
 8048581:	83 c4 08             	add    $0x8,%esp
 8048584:	5b                   	pop    %ebx
 8048585:	c3                   	ret    
