Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E289FD89
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Apr 2024 18:59:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rubHy-0006gY-96;
	Wed, 10 Apr 2024 16:59:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rubHx-0006gO-2Y
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 16:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ivdBKRhvna1Rt27vfDaJ4OB6HUv+B5S8FSD5xPwN+L0=; b=B6pFXj9ncN4ddjkzzfzi9C0txl
 X3YV4wKLF9qvhPrQq/bzvVxwYSUiSkExvbmXep4jjrrlJ/NrImK8IYZO7rK4oUxRgUn7q43vFrS1V
 pMpK2vkBoC0IsPwGcSp8SjH/zgNk24PnlK7oDx3j+uE5V0FC4F89b6XvkvDYL4FJRJdg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ivdBKRhvna1Rt27vfDaJ4OB6HUv+B5S8FSD5xPwN+L0=; b=mhR6AimF8tR9PSlj2iPysxT/n8
 xQXVFt8HQrE7wZSab88q8GqHzcMkklKODJC5guAJLXg0hI4BT/hpp7hz8ufSritF67pigelYyr2CK
 VHlG5x4VHDBH4b0hLBleJyfJp4uVxz3XnDT+KUtHVT8SF0ZIa+KnaLEChCCIrxXKYbNw=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rubHw-00005v-LT for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 16:59:09 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43AGDjLq020552; Wed, 10 Apr 2024 16:59:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=ivdBKRhvna1Rt27vfDaJ4OB6HUv+B5S8FSD5xPwN+L0=;
 b=S6kmenwXWVutMc7ticyNn+07zZ4NHWLlgs2gad45sWorwKsweiJt2gycQfEEkImEQsMP
 RQRILBHmkAYH7bgcLZ6g6MG4MxJbXIjPXqbDXl39pdy0IrZSllciogsI5d4tnX32mPfA
 cNS9RxmX9CyLrP77dGlwt5aNEP0K3wTqnMpHx/0rGvYTrfYt2M/rxNDTxbJnu4qKk3cC
 lznDi6cBUH/8YJlrK6Z3gUEHUuJeRxWmMK6BdtquG9DxIbcEl///5zDlKDbSF2lpuEkJ
 eptqGzeAuPJDfHbisPAbol//gvefPzetUyZ1Y7ogmk8QWdQPtiqBeddlU9fiTsvOe24Z Qg== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xaw027xwk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Apr 2024 16:59:02 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 43AGUiU2032537; Wed, 10 Apr 2024 16:59:01 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3xavu901xn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Apr 2024 16:59:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQHtmD7L2RSuc6Qdp16bQUsJB48LcrDEUzjKx1MryKD9nIciha6YPEOW3dLE9UiaV0jCxemN4zX5uSNW/cLXsH0/EoQi9ZHs3VlX1Gsbs2WYGb38MJzOU9DBXHTbrMMsOvQLPV39MlAfIV9MN5xkpna83uf5yVC7jMa2l+tslJa/5W6ALdrrlZ8hNzVmxgFAVQYsCUxU/50ohQikDpJeNW+kNf/yuRB6jCX2KuHqtv40LwTUn5UpW7/yNmolK4rHX7K1Vn4Nj6jPZoFb2vaL7/QzrkIPm3pLaN7WER+KF5PcDPc13LHtQOw3FovX//e1Rdmlo7k/JgF0dNi8WsMLpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ivdBKRhvna1Rt27vfDaJ4OB6HUv+B5S8FSD5xPwN+L0=;
 b=XOl9K2IrfJT31/UOcGyiYn2B0XsYvvjdeht455s1QHf5fvmi2cmfavfs4vW4evPAvY+CVsiKrfy+Q89wHKdtY4MNG85AWHwJGOZDSn2fFO3zufcaBQlPG2QNkJmzrES0zd0Kf0lj6H0gg4pSYN14+cZz0ylcJ6PUltA6DOw24gA4DA7yOCnuqGu8/dJtnql1HMPPnlHUSO+Stn+YnH9jTVWpqNAOMCbs9Klg0+KwgDs+oFiYj6NlE/RwVjVMoxW4jWKuy/V1Xm0nCiIfwGNdY3tkdeG2xxneYqsoIZygqbAEfCY2ulLc39qnVWIgKF0za9CoX4uFMihQ+YSAyE30pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivdBKRhvna1Rt27vfDaJ4OB6HUv+B5S8FSD5xPwN+L0=;
 b=OnS8cqlVlrrxaHrJVDBGi/9ui9SnpzvNU5IxwLDYndrU5ysOXAPo31JCN8xY2Iwl4G34kHG69kzUtelmDjFrRp3MLYzbR1UWIqGuMLLmCGBga0GmnBFMDLqYdev7q3q15uhofhtIq2yCW/JWesCtLo0Y4zzMr0n/oj9yxMI7HSo=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH0PR10MB4503.namprd10.prod.outlook.com (2603:10b6:510:3a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Wed, 10 Apr
 2024 16:58:59 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1bae:2a6c:1de2:3856]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1bae:2a6c:1de2:3856%6]) with mapi id 15.20.7409.042; Wed, 10 Apr 2024
 16:58:59 +0000
Message-ID: <f4f7c644-b229-486b-973b-97c55dac334f@oracle.com>
Date: Wed, 10 Apr 2024 11:58:57 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>,
 syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
References: <000000000000ea6cba0615a3f177@google.com>
 <tencent_59925DB41938CFAC0DDEA5A40DB592425D07@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_59925DB41938CFAC0DDEA5A40DB592425D07@qq.com>
X-ClientProxiedBy: CH5P223CA0019.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::6) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH0PR10MB4503:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P2/aODOVMScnkuogJnWKl4D8VOGhp1SMWmYhkcUzBqhWOK0KFokG3DTm0T/RbILCGaCXAVdWIijVg5tRHm4jANfAlOV0EqqIyCj6PuVnH/FKD2vlS10OFQLrwn1qcPThME/kbTI4ccc4XAY1QmM8vofLnEIGyGBZCl5EleULF0Qyj5xFKT267Mf3hTHVM9Os6OivkhlpfRqxgU/s51D8fSL/yxmRezqH4EsRlEuQX+f0TumO4/mNNQ7BvKxKXUvp8Pdm0rby/p9uY8gP5eKocmKhlqgEXX+oEv1fhV4YvEpRXwwZa0kYxGEUoRnNR31uZ0svuG+lLP9y5edZAPPElgYxP5Idpklc/gWYkkjuityrbbdCLKUw5DLDQ8DSoVbPHr8lotOnHQCsXstdZRJzRvb7YI2l3wTlgRt0k7j6ddPGlGkmehnOQWOen1qjTgehRcXHDw4DUXg9P4kGSluDQ2aN0Hf15or9evAjvOci1oHgXJQB1iALHEPeohrHClPf0iUUfQHg/IYPeRx8YrriQCQ5BcMBLygf9HWTi5400JFtUz9PoKL//7x2n/GY3nvrJz4D1t8Q707ItmjBlVqlKo1mLbny+6eor7BepVV5y7PcsyZ4cFeWXFNMVGMjLy2HYkdJHQ7EYKjuBjYx7a3LJVOa8tRXFp0N+Kv8fnBdjRE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODZZM1hJSkw5ZEJzd1BwQ0lLMzBEVjh2ZHZWU2c4cy9WUysrR1lBNWpCbmZS?=
 =?utf-8?B?Y1dCMzd6cEllc0U0M0JwTy9VMlJycEMyT3BFMy9BaVFLMndBK0Y4T2tZa1Ri?=
 =?utf-8?B?QVNmZE9GOHVRNytwditHcmk5dEdJVmNSTytzclA1dzFtd3ZVa05neGVYL1lq?=
 =?utf-8?B?d0FzRFQ4ZzNHVGYrTVd6ckNCS3N0REJ6dzQvamxUTnE5ZHdYTTJTa21vKzl1?=
 =?utf-8?B?TkIxY0l2bHFua2RMSnErQXFER3FaTnd3L2ZYWkRYRHBvQXhCRlRmZk1URHRl?=
 =?utf-8?B?ODYyOU9iNmp1d25IaEtNY0FQMloyOXdET0RYa0NIWlAyYTNGZ0lzSzQ3MHJV?=
 =?utf-8?B?TmQrTlBMUWt2SkFXU205RFR5U2pPUU9peGJhbkhObi9ab1FWRXNLVUJiS2Fj?=
 =?utf-8?B?N2pDNEIrQ1ZneWRiTlVTRzUrQlo4OHBtOHRZWHUzcGFoOHNOVlV1R1pzYkxh?=
 =?utf-8?B?RnFseFVrRWZYOUtDbk1yZTZwcjlUV2RkVjhRdlNZYXU5d3VER0NPdEN2anc1?=
 =?utf-8?B?ZjFOV1N4bU84SWxtWkpsWmJnOTlHZi85RGlyTS83L3VNa2NlTUFmTFRSU1Qy?=
 =?utf-8?B?K20vWTdNYURxTU5HUk9pUFh3aXNuTTNhK1Z5RVhJOENzOTNiL0YwRWJ3S3A4?=
 =?utf-8?B?QjZlbU53bG44cGVRUXd1cjRHWjNkSlhtNHplbWpQM2sydVVFOHA5VXBzeXhj?=
 =?utf-8?B?akNtaFJmbm0xL251eFdVOFhMZlo0RWllbUJSdkhwcEx6VlZRN3QxdDFSRVBV?=
 =?utf-8?B?RjNmMjc5R2o4MkExdUlDOTZwNEdwNXBNNFVCYWhzY3ovRG5nbk5jMVFHbnBu?=
 =?utf-8?B?OHNUOVZxTHduTmd0cUN6R0hUTkxoU09wa256ZXJIRFJITEVSaG1ma1c3S3FB?=
 =?utf-8?B?enFwUjJWWlQyQjBhUER0YWNTcEEvUUFtbmhTNHBJV0kraXNIZDJYalVjUnB4?=
 =?utf-8?B?UGZzbmFsZ0sybllIQmFxa21jSTUrQXl0NnJzVkoxdEs1QlBQUDY1VDNQVnIy?=
 =?utf-8?B?ZEplUzROYlNDTVIwVVoxSUx6WE1FMU51TnR2NndpdGFaaDZ6d2VNd05acjdD?=
 =?utf-8?B?ODQ2THkwZWFWZTlxVHJsRXVnbzJyS3QrWTQ5bk5NaVRpY0JJYWlORDhEUlZ1?=
 =?utf-8?B?aGowdjBDdk1sQy9ON0ZVbXhnMUltb29oY1g3bTdxWlVPOHh3dHdwZ2tlcnFG?=
 =?utf-8?B?SmxoTFljSVhnZmREU3dRMHFhbE5PMk05Wm9WS05BbkJBNDYxL2Ztdkt6UGcw?=
 =?utf-8?B?K0tlZDdnQzk2U1h4R3I2SDUyd3l0dlhMenVQRmNHckJSemI4NVZLdW1EMnFX?=
 =?utf-8?B?YnljTnpOSVErL1JmczVoNlNhcXJtNHFrdUYrMU1uZXpOb2o0bmNoL3NDeE5H?=
 =?utf-8?B?dGtpRFZSeEFqV082eVJiKzN6SVlMUUlBRDhCYkJkd1lIZTRxSjMySndIMWU5?=
 =?utf-8?B?cUxxbENuM2RLMkMxaS9BUjJ5eDJUNEgrYXVqM1BFZlNkWlB3QnpTdVFERHhR?=
 =?utf-8?B?dkR2bS9VVXJlQXhIOFAvbnpxejZ6aFBzdnJQUkZQRjh4U1pPc0luTFlybnlr?=
 =?utf-8?B?MzIzbVQ1b0RVd0ZCQVM1dGhCcDV6T2xQdjJhVlJPV1R3OWt0UDd1MTRJVGpW?=
 =?utf-8?B?YnI1SlpGVEw3U3R0OHN5MUY5WG16Y1R6OTBVeFJibENuL3ovWUhEWW5ubStF?=
 =?utf-8?B?eWhTRzJ6WEs2N2dFSXk3OFJOTVNXVFVNWUMwdWlPNU54Z21UbWxnTHZpVTdT?=
 =?utf-8?B?WVNRaHJaQTh1cHl0dkx6RklRbTBoVUhhaklacm43NysxeCtvaW55ZjJHNjEy?=
 =?utf-8?B?a3JaMnkrSkU1Uk83Y1hvZTB2NElZNG1JRlF3aFpuQXlYaWxaYmJVUU9BNWhn?=
 =?utf-8?B?UkNXM1d4dUNGQjNrUGtpNGdJQ1U3RzVYUEtXWTkveC9jc1I0NThScllBcnN0?=
 =?utf-8?B?RUhESDB6NGJuVVlvbWJJUTQvdng5bE9HcnpyNzdCNjZGZVNDaG1VQks1amNo?=
 =?utf-8?B?ZlVCcEpTcGkxanFlNTJPck12K0M3Y0lrMm1Zc3J5bk9XdTYxeHI3elJ0UlBR?=
 =?utf-8?B?M1dwRUdSbFdVOEVBQUJHakJkbWVjcllydGRxUnJFVnM3RTNYY2dRdURmRzJQ?=
 =?utf-8?B?T05rSHpvangvUlJoV0VKNXZUWG41QjRSK0NyRjlLajJueGVNSWhKcEdSdTJ6?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: YrE2l+4NBKC0kz1WV753sA3RjNdH/dGwbQ1ZlB8jqYsz8Vr/0NVyc8kn+FLH0Dr38R7UUmfWrM54PG5f8wiAO/icxkzJu1vGDCLknbsi09WQ07LKNo4Zx24EwCe3RRUNyWzpdYv8BdCy7pfUFy71kwWL/Gn17cPNR1L7dgFjc908jgNTAWMiUsGu7DzA4DJ+3voyTCd+QpU/LVzXsfH6dQYqR7K6W/hILnVlRH9+ZtkS10jcebX3vH2g7t4+XliwZGT8XHrxhgoDZDKQJoB8cyFlUULiwhwOjEBI6C30S/nG2CAM6DHgY+lDJRVo/3PDHaAdPOGYJAs6nc/Kjrzkgo40tHFIH/5rGyEvmN3zDjR7FMc4QvTaqvjjXgwVFoIbvIpJ0QLXymnlp6ixEY85tB3k9nJq+/BoHxTMl8dxp843rbUJlV7kg7Gx8DNeINJYzZfp1dpPr0Cfn8dLIDoGpMdw9dYvLuFr0l+BrK2k+6B6gAlnIrX0N6AgXYSqbpeYNrWimqkd2/n9gydotHW4chu1DGPJl5kppKx75/oGtD+zekumqqWKE6SiWvlyhYCxwdSi1p17iFddxWKgwugY1zjEJgz1rNxZdRL5DjP6WLo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19a29c12-dcd7-49ba-d678-08dc597f83f7
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 16:58:59.1391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k68IvA9lii2k41St6FUpQNXHetarBDR1W3nH/NyFQeGsoyLvNg9qcdxLKcI04RhmNc7Y1fVVunJkyNHS0YydwyJ32x/SO2zgbeJdE1Cq+tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4503
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404100125
X-Proofpoint-ORIG-GUID: 7SclnFjqarE2m66dyDr_Ijf91JKzlkhl
X-Proofpoint-GUID: 7SclnFjqarE2m66dyDr_Ijf91JKzlkhl
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/10/24 2:05AM,
 Edward Adam Davis via Jfs-discussion wrote:
 > [syzbot reported] > general protection fault, probably for non-canonical
 address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rubHw-00005v-LT
Subject: Re: [Jfs-discussion] [PATCH] jfs: reserve the header and use
 freelist from second
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 4/10/24 2:05AM, Edward Adam Davis via Jfs-discussion wrote:
> [syzbot reported]
> general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
> KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
> CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
> RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
> ...
> [Analyze]
> When the pointer h has the same value as p, after writing name in UniStrncpy_to_le(),
> p->header.flag will be cleared.
> This will cause the previously true judgment "p->header.flag & BT-LEAF" to change
> to no after writing the name operation, this leads to entering an incorrect branch
> and accessing the uninitialized object ih when judging this condition for the
> second time.
> [Fix]
> When allocating slots from the freelist, we start from the second one to preserve
> the header of p from being incorrectly modified.

The freelist is simply corrupted. It should never be set to 0. We cannot 
assume that slot[1] is on the free list. Probably the best we can do is 
to add more sanity checking to the freelist value, and/or any slot's 
next & prev value. That could potentially involve a lot more checks. 
I've been accepting patches here and there for specific syzbot failures, 
but any comprehensive sanity checking of every data structure would be a 
huge effort.

What makes a fix a little more difficult is that dtInsertEntry returns 
void and it would be difficult to gracefully recover. One could change 
it to return an error and have all the callers check that. But I'm 
afraid, just using a valid slot number would only lead to further data 
corruption.

Thanks,
Shaggy

> 
> Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_dtree.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 031d8f570f58..deb2a5cc78d8 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -3618,7 +3618,8 @@ static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
>   	kname = key->name;
>   
>   	/* allocate a free slot */
> -	hsi = fsi = p->header.freelist;
> +	hsi = fsi = p->header.freelist = p->header.freelist == 0 ?
> +		1 : p->header.freelist;
>   	h = &p->slot[fsi];
>   	p->header.freelist = h->next;
>   	--p->header.freecnt;


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
