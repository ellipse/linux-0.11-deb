
truncate.o:     file format elf32-i386


Disassembly of section .text:

00000000 <free_ind>:
   0:	55                   	push   %ebp
   1:	57                   	push   %edi
   2:	56                   	push   %esi
   3:	53                   	push   %ebx
   4:	83 ec 1c             	sub    $0x1c,%esp
   7:	89 d5                	mov    %edx,%ebp
   9:	85 d2                	test   %edx,%edx
   b:	74 54                	je     61 <free_ind+0x61>
   d:	89 c7                	mov    %eax,%edi
   f:	89 54 24 04          	mov    %edx,0x4(%esp)
  13:	89 04 24             	mov    %eax,(%esp)
  16:	e8 fc ff ff ff       	call   17 <free_ind+0x17>
  1b:	89 44 24 0c          	mov    %eax,0xc(%esp)
  1f:	85 c0                	test   %eax,%eax
  21:	74 32                	je     55 <free_ind+0x55>
  23:	8b 18                	mov    (%eax),%ebx
  25:	8d b3 00 04 00 00    	lea    0x400(%ebx),%esi
  2b:	66 8b 03             	mov    (%ebx),%ax
  2e:	66 85 c0             	test   %ax,%ax
  31:	74 0f                	je     42 <free_ind+0x42>
  33:	0f b7 c0             	movzwl %ax,%eax
  36:	89 44 24 04          	mov    %eax,0x4(%esp)
  3a:	89 3c 24             	mov    %edi,(%esp)
  3d:	e8 fc ff ff ff       	call   3e <free_ind+0x3e>
  42:	83 c3 02             	add    $0x2,%ebx
  45:	39 f3                	cmp    %esi,%ebx
  47:	75 e2                	jne    2b <free_ind+0x2b>
  49:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4d:	89 04 24             	mov    %eax,(%esp)
  50:	e8 fc ff ff ff       	call   51 <free_ind+0x51>
  55:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  59:	89 3c 24             	mov    %edi,(%esp)
  5c:	e8 fc ff ff ff       	call   5d <free_ind+0x5d>
  61:	83 c4 1c             	add    $0x1c,%esp
  64:	5b                   	pop    %ebx
  65:	5e                   	pop    %esi
  66:	5f                   	pop    %edi
  67:	5d                   	pop    %ebp
  68:	c3                   	ret    

00000069 <truncate>:
  69:	55                   	push   %ebp
  6a:	57                   	push   %edi
  6b:	56                   	push   %esi
  6c:	53                   	push   %ebx
  6d:	83 ec 1c             	sub    $0x1c,%esp
  70:	8b 7c 24 30          	mov    0x30(%esp),%edi
  74:	8b 07                	mov    (%edi),%eax
  76:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  7b:	66 3d 00 80          	cmp    $0x8000,%ax
  7f:	74 0a                	je     8b <truncate+0x22>
  81:	66 3d 00 40          	cmp    $0x4000,%ax
  85:	0f 85 d8 00 00 00    	jne    163 <truncate+0xfa>
  8b:	89 fb                	mov    %edi,%ebx
  8d:	8d 77 0e             	lea    0xe(%edi),%esi
  90:	66 8b 43 0e          	mov    0xe(%ebx),%ax
  94:	66 85 c0             	test   %ax,%ax
  97:	74 19                	je     b2 <truncate+0x49>
  99:	0f b7 c0             	movzwl %ax,%eax
  9c:	89 44 24 04          	mov    %eax,0x4(%esp)
  a0:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
  a4:	89 04 24             	mov    %eax,(%esp)
  a7:	e8 fc ff ff ff       	call   a8 <truncate+0x3f>
  ac:	66 c7 43 0e 00 00    	movw   $0x0,0xe(%ebx)
  b2:	83 c3 02             	add    $0x2,%ebx
  b5:	39 f3                	cmp    %esi,%ebx
  b7:	75 d7                	jne    90 <truncate+0x27>
  b9:	0f b7 57 1c          	movzwl 0x1c(%edi),%edx
  bd:	0f b7 47 2c          	movzwl 0x2c(%edi),%eax
  c1:	e8 3a ff ff ff       	call   0 <free_ind>
  c6:	0f b7 47 1e          	movzwl 0x1e(%edi),%eax
  ca:	89 44 24 08          	mov    %eax,0x8(%esp)
  ce:	8b 6f 2c             	mov    0x2c(%edi),%ebp
  d1:	85 c0                	test   %eax,%eax
  d3:	74 54                	je     129 <truncate+0xc0>
  d5:	0f b7 ed             	movzwl %bp,%ebp
  d8:	89 44 24 04          	mov    %eax,0x4(%esp)
  dc:	89 2c 24             	mov    %ebp,(%esp)
  df:	e8 fc ff ff ff       	call   e0 <truncate+0x77>
  e4:	89 44 24 0c          	mov    %eax,0xc(%esp)
  e8:	85 c0                	test   %eax,%eax
  ea:	74 2d                	je     119 <truncate+0xb0>
  ec:	8b 18                	mov    (%eax),%ebx
  ee:	8d b3 00 04 00 00    	lea    0x400(%ebx),%esi
  f4:	66 8b 13             	mov    (%ebx),%dx
  f7:	66 85 d2             	test   %dx,%dx
  fa:	74 0a                	je     106 <truncate+0x9d>
  fc:	0f b7 d2             	movzwl %dx,%edx
  ff:	89 e8                	mov    %ebp,%eax
 101:	e8 fa fe ff ff       	call   0 <free_ind>
 106:	83 c3 02             	add    $0x2,%ebx
 109:	39 f3                	cmp    %esi,%ebx
 10b:	75 e7                	jne    f4 <truncate+0x8b>
 10d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 111:	89 04 24             	mov    %eax,(%esp)
 114:	e8 fc ff ff ff       	call   115 <truncate+0xac>
 119:	8b 44 24 08          	mov    0x8(%esp),%eax
 11d:	89 44 24 04          	mov    %eax,0x4(%esp)
 121:	89 2c 24             	mov    %ebp,(%esp)
 124:	e8 fc ff ff ff       	call   125 <truncate+0xbc>
 129:	66 c7 47 1e 00 00    	movw   $0x0,0x1e(%edi)
 12f:	66 c7 47 1c 00 00    	movw   $0x0,0x1c(%edi)
 135:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 13c:	c6 47 33 01          	movb   $0x1,0x33(%edi)
 140:	8b 0d 00 00 00 00    	mov    0x0,%ecx
 146:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
 14b:	f7 e9                	imul   %ecx
 14d:	89 d0                	mov    %edx,%eax
 14f:	c1 f8 05             	sar    $0x5,%eax
 152:	c1 f9 1f             	sar    $0x1f,%ecx
 155:	29 c8                	sub    %ecx,%eax
 157:	03 05 00 00 00 00    	add    0x0,%eax
 15d:	89 47 28             	mov    %eax,0x28(%edi)
 160:	89 47 08             	mov    %eax,0x8(%edi)
 163:	83 c4 1c             	add    $0x1c,%esp
 166:	5b                   	pop    %ebx
 167:	5e                   	pop    %esi
 168:	5f                   	pop    %edi
 169:	5d                   	pop    %ebp
 16a:	c3                   	ret    
