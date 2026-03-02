Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGvRAjTOpWm1GwAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 18:51:48 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3DF1DE13A
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 18:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wLPmfike2+RsORk0DdHYQUTrQNk4sUdVCf3Z6d1Sxds=; b=ECyeOyyoEHrc9Yi1o0evaRhn+O
	dRodUjhpplmZ1fbgfYWFmmIqqJdUvKvy+8C87CydhchgfZXAh0JTKjTnRA4qCzAbJOqO6q+uvh6X+
	XCCkOyY1a/RmZ/rQdJUpmdVAoJmvQWKMrs2NCCfJBd1b107P9xy2v9od64/mLjWJeYTg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vx7QC-0003LK-Kh;
	Mon, 02 Mar 2026 17:51:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vx7QA-0003J3-Oi
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Mar 2026 17:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EQjBSduz3jHE0D/jpnmtIyVj1XIhsMm0eGDjcJ/phBE=; b=H++uPWx4Ggv7BJgAdh/H150jnZ
 sw2n4rfOvh5dj8/cM+B9yLctOqITgdjKlCUycJ0Sx4mvdydzNkXmUc4Xm8lDkVNDtp00SEeyVaQ2w
 pRBh6P3VBFTRVg3n1dpkqeHxngbHOuYMNyBZiK25ccppB8Hv0fKGMgGy4eXSnCILjJ3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EQjBSduz3jHE0D/jpnmtIyVj1XIhsMm0eGDjcJ/phBE=; b=NDYHVK4LWzsl9pwgzwMXQYiu0a
 fQTgpute9+kcWY3igQWNv9A0XxwaSipum4SEI0YaNR4w7hG1+JQO10cZXW9S96ASbvH9D67aqoHiI
 8JV5dXOHpDzKw3qpX9e0mBVTFeFNdzEbrtgwPn9Gz1ASumJh8keMzXb6AdmnewUjHsMw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vx7Q9-0003ic-5M for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Mar 2026 17:51:06 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 622HWBJp2606701; Mon, 2 Mar 2026 17:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=EQjBSduz3jHE0D/jpnmtIyVj1XIhsMm0eGDjcJ/phBE=; b=
 KAH4LQVSINbL067ieVd74xZTjb9/j5gafg4ROjPwUCcMFWulkz3jPtLTUPbJUMod
 zYOyKimpku3ml1xPbS5wdOOpA5BJ5gMfAp5LeZaIik1xbUXDQwnZJ9NOuvD7Mng5
 +EeEp7s+15AnzrDktLCpI1V6Pndt3J8lTqYnh3HAfzyiQhZAoBNclaDB6nsSemkw
 gWuQNLRUSlKCJrQVVjDrGEEEMRzgPR6XKy5qhTpU1P6L/vkgom4RvnJeb4cZewyV
 jDh73VgizEji0wB7O9zW4sU67UJsVi1wEr+RaJ49qdEu7mW2FgMwhX7UmQmtHsfc
 tMbTHLLJemx0he6oJIYEQA==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4cnf1m81du-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2026 17:50:50 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 622Gxbaw037847; Mon, 2 Mar 2026 17:50:49 GMT
Received: from ph7pr06cu001.outbound.protection.outlook.com
 (mail-westus3azon11010062.outbound.protection.outlook.com [52.101.201.62])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4ckptdhjj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2026 17:50:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SRGPoanXVkGxnGkNf1G3YIQx9qARt7XLY9VzzjcYdodh8IMytNByXPF2iMMEgjk3YsygqnqdjWIRfPSS5zFm6GSd59MRgLg1540WWHHdoxQerXlnjVjSwT1veAWGhQU6NupZ4s+VifN+8yjIK9DYaEvRZ8+8BSLewZx3otR1txdhsGMW3m2bzuKwnHftfPPRRAk9snnseQAsBjXGdAcppz/xw1yHrQNqPjhCwtR2Q0L78ts3a5DX9uEeto6MAJek6OkbLyq/n6WPdMgqAFBVnFqlAI4MKPleXFFn7JeSf6q2sCSNK2Avkfet95tuBuHZsf19eMMTLU43buj7VEgs/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQjBSduz3jHE0D/jpnmtIyVj1XIhsMm0eGDjcJ/phBE=;
 b=r9r0ZIVFPcat4KFpTfLcPcmjzN2PjC0tNIfBOc9zsDoWyITuiTGLuq82ImX5cmZLrrD1g4tidfCePSjbXJMThscUEMckPc1pJ6mkallAcwYwyIf6vNLcVz10pUEZTC/DeoYp8af1f6VlZSP9lvQwxGDRtzXAAdaBQT2/HNC3ExCpnzmErlPPj8BedyTu2HAYQz/GarxEp0xnk/HJpQg+YjjDp41G7jgY2zyNUdGfCitIAHExDA959x8F6fdKwcIx9BPexSa1ouTDo/RUDRnIvi/Gf/itDN/EzPkng1k8TGJsGij8cE228FpPLVlafNCNVKoq+aw7bFNO7BLbgRKVGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQjBSduz3jHE0D/jpnmtIyVj1XIhsMm0eGDjcJ/phBE=;
 b=HvhbB2eiSEYPq4aIfaR65XcJ7N2GVeEW4W4xXG3gxYw/iTegU29YkcqK2hRnvtPR7ui54+KBIS+fh1lvYOLBkfCD0cB4P9TSjX4CsY8ZGcbdOkfLAOi/9cF7TRnDGGsUvKWPgvi/rDQ7sNUFjOaroYr2U5A5716H2sWjBWVHPhs=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by IA3PR10MB8467.namprd10.prod.outlook.com (2603:10b6:208:582::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Mon, 2 Mar
 2026 17:50:44 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%2]) with mapi id 15.20.9654.007; Mon, 2 Mar 2026
 17:50:44 +0000
Message-ID: <e51284f7-8368-4a2d-ae81-d86ae62837d2@oracle.com>
Date: Mon, 2 Mar 2026 11:50:43 -0600
User-Agent: Mozilla Thunderbird
To: Dmitry Vyukov <dvyukov@google.com>, syzbot <syzbot@kernel.org>
References: <20260204092230.2540042-1-syzbot@kernel.org>
 <CACT4Y+YVb8+XkEg2ucfYKjw-J7uy2Om19kzrGkXvkyxa9XTzvQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CACT4Y+YVb8+XkEg2ucfYKjw-J7uy2Om19kzrGkXvkyxa9XTzvQ@mail.gmail.com>
X-ClientProxiedBy: CH3P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1e7::23) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|IA3PR10MB8467:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d1357a3-4de7-4cfd-6283-08de78843a6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: wu6+Bbsd+s38q+RXnSn1J6b8c3fhict4wzit59c+vDmGYLCJdcl7czd5RpWiArz68OVnu163tx1Wdq1Gkhd5M36lyIkQaHHhhAFD1HZOQdKdPsOMg8FCpf31lg+1bUwkWi+juRdde/Ur4GPsNOTfge45ahI10xmFkk73fjEfGJkKbmGTxCCyPe0ChLOzSALp6nzZtqa//SjC+0EJGmJQHF96AAELZ4MhPJJ/AtOScNiFDqN7yXTxs7k5ReDZVDANq5NSWKxxUcBX70zKdsQYkLoaaYJ8QMisWVx1CY8L2V9XIVVY7mtntQ2Rrutd2liMRv2sFBdXBtphBY7cIFgvmxi3hdTiRlrq1RcbFylPyfD9gWKHhmYQgDtwsGavZ14JuQB75DBRGpWw1ZW911SVcxNuNORMxHJ2zL1aJxiq+S2K8EMgaQUlqmM3/UAXjcFt5Lq+pCXy2Y7qyTYeL8vCPJUt/WUFBlciWf584rrliw4ETzM3/EvaPGBXb65hRO1G4+s1sYp7lXR1oAkSriUnFJImfcJG9qm7ffgqI3dRkMhhUWxT8osQsBMm4yF1NcnD4iCfTEeT7EacLc8kjrpoBnlfn6QA45CP6zwF5bOJj9d6cnWMnb4hes00O4hwHqbc8VJHXqXdL/6tphNBrvrGgPLvHU/ZiBrJxmXHd5zOXn+D4rN11M7xXNcGeXWrvKsS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlZqemR4TWpJNGVFTmFrc0FYaTB2THovUHYzZ1RCOWNCZTgxaVNBV0tiQ2Rr?=
 =?utf-8?B?eis3VjZnN0JJNzhsemtTOUNJbFAwRlNwb3JVaDRva2pXM0p6Zm93Qnh2ckFI?=
 =?utf-8?B?WGpQZ2U2SEc2YXREZlh3M0crOTEwR1hZRDdabWJCcVA4dk9HWFQ0Z0JSeGxG?=
 =?utf-8?B?M0drSkJIZ1RkUVdQdTVzVGNtNE5zU2RiN2xSSmIxaFZRRGZmd3MvUDIvM3p2?=
 =?utf-8?B?Wm9WdkZFUklBUGxQVVpsMzV6WDFGNDg0QnIydU1USUF6ckJSME8zRUFucFU2?=
 =?utf-8?B?TkYrK1haLzJDQVJKZnhvZnRwMmg0V0lnNHRRaEJGTlBPaGxrRk5Ca0dPR0Nw?=
 =?utf-8?B?ZVZFblE0Wk9Kd0lYMFJTZjhXZlRPVnlDcDE3MTk0Z296VVNPOGs1Nk5YWTdy?=
 =?utf-8?B?eGRpcVBnZDNnQ2o0aDhyY25uaFN4VHNBa3RDUm96em5YRndmTzExR3FJTC9W?=
 =?utf-8?B?V1BZTGRKbnRQTVNmbDVlcWI5ektOLzloc1ByOHhDcVdEVlVnMVUvZnhqc3Rl?=
 =?utf-8?B?MUdjaHhyM0ZFc2xiV2VvRk9iU1BCcU5oTWYrd1lzWDgwMWdqa1JKM21KVVlW?=
 =?utf-8?B?UUk1Q2xWZ1gzYnhyZEFhdXFKNXEyczZNYUV2UGJQb0dIZHRPQnBsVHZleXJr?=
 =?utf-8?B?REtBWkhRT1NmZkZaUU40ZTh2Qis1N1FaMmNZck0vUEZhZHhMS3p5Z1dKcGZD?=
 =?utf-8?B?SDdVeFJGYWV4b0NyZi9NNk5EM2tnMEd6NmVncTZEY2h0cTFCZTEvOFdlSjVy?=
 =?utf-8?B?Wkh4N3ZRZ2EyT0pDVDkySFVwSDVLaURkWEFmZ2Izaktmb1NyZUpCaXFnUVU5?=
 =?utf-8?B?bEhsSEM3czE4bzJwZFB6Q2s0ajR0cGFDTnVDT1NmTkRzcjFwWDNGaFRUVUhG?=
 =?utf-8?B?cytSS0RYVlVlOEtkSzdDUXhZbjJGdUhnQU1icmJRSmN1NllhRXNUOWZCUjRt?=
 =?utf-8?B?YWZzY1Fnb0kxbzVuQVB1OVhHQUtCZU1IOVZHZW1HL1ZmQldYeDRJSzRhaXdU?=
 =?utf-8?B?dlNBRFJGSEV4TGRmNERxZDhDZVpDWUFLa04wT0Zyb3g4VW5MUGdMTCt2cFpN?=
 =?utf-8?B?dUpJd01WZmlDRmFYeEZiSGNFTGlxV0NNMUpJVHdNdWZWbnZCTldJclZVNFhv?=
 =?utf-8?B?cXMzMGxidW5YVnFRc0hwRmlxb1RLQURrcUlFUUpDNUZ6NmJZVmpyUW9sejI3?=
 =?utf-8?B?ZTk0RkZkQUl1ZXh1Nm5iRFI5SDlkVVJ6ZFIrd3o3djRuU0NQMldTcnhIKzAy?=
 =?utf-8?B?c2FhWXd5bXI1UWpRQzhuMlVRQndYZW84MitRZFd4enl1UlIzMVp2UmVxR2Rk?=
 =?utf-8?B?RTJob3V3bmk3L0NJeGM0RzJFditlY0llbmh5MjBtL3MzZmdocnNWMFNGYVEz?=
 =?utf-8?B?eFBnck1vSzRkbTBidU9FOHRxZTFheVpvMjZSOUNyS01NemZQTk9CeEZYZDFT?=
 =?utf-8?B?dlZHQVlKaUV2K0prWFVJTDRqM0lWL09WUnNUL3BtTXp2MHJ6bXpaZjZJY0I1?=
 =?utf-8?B?Z1VOMnRySDFQbGlrOE5JRW5NZUt3NmI2YTJUSXRvOXNpaXNyMjZxMUdIQzZT?=
 =?utf-8?B?NnIveElqUWJNbWg2dVBnL2Y4OGJvWG1FQUUxWFdUQnkralpZbW1CRUkyMHZ6?=
 =?utf-8?B?dXphdmxISEFsR3o2REtFVGV3aFVqUnBickJ5ZXNtVHN2VUxyNjl1RGpDUGtZ?=
 =?utf-8?B?YndxS0MvMmxaVlpwRlFJb0dvTDdLSHdraGxaRzBhY0JFM2l6cWRmQ1dWLzhM?=
 =?utf-8?B?WmNvY1NZUUQ2ZmJRSmx5OHVYTUh0eXpoYlVxMVY3aDNaMEF2VkVsWklybW5Z?=
 =?utf-8?B?UlZjMVdja3pNQ3cvMHFDYVhqRksyR01qY2JiQTlBOUtyenNUYzBHcDEvYk0x?=
 =?utf-8?B?VlVoWnJGK3lIMHUzOVpVWjJrZG5RSDh3YlhKOE05V0RJSERKYUt0VXpsZ0NP?=
 =?utf-8?B?bEZPbDNpL0pkU2hDRnpVU3RMNmlwbllIVGk3dzRIelRKb3lpQnRLeFhMemVw?=
 =?utf-8?B?cHpPRklZR05KZDlMN2tZM3YrSFArcm5XRmxOS3BONmJ6aUlac004VVJzOSs1?=
 =?utf-8?B?RnVQVWFubHZTTHhOU0puc1I2bUxVMjNSODhseitjWWVqRmQyWWdBNnhDZCtx?=
 =?utf-8?B?T3ptUnBUODlaOFRBUy9wK2Z6M29CQTlUbCtZYVVITmsrbE5TYjU1bTloZ1l3?=
 =?utf-8?B?cUdGWkI4bGVRcmNHRUl6OXF6VWUxeW5uWWU1UFRTSldhNnJUbzdtQUNlc0x0?=
 =?utf-8?B?Z3hDOFBBYmtMcitxZkZXVmFwS3dHOFdaWlZTeE1HRUxRR0QwVlNUbHExRzRP?=
 =?utf-8?B?R0lqRGNhTFRJR09wTjA3OUNOMDlESHpyYVpZT1haZ1Nicmh2UzhrRHFZNEF0?=
 =?utf-8?Q?ofTgp4yJyFl9xjKM=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: VsA2ztgW6HuUdBU+nihxBgmhzcvIK70eT9NOAx1POnxQypGVjjvzrptFdSGWeHgIgi9SNpMuaZ7e60B/RdkOj6a2Wy8Z/U/H9GI16yv8t9Cm6EPeRIBPGQKJaW6cj8ITBZUuqZWm3Z/P0fO6mvbxoiaIJy4G9yYtAJZB4zcB4Kf0tLRSKh9wEMiX3WRO9co3rrb6gpfDGydVcHyOIlZEf9SUe+94vkOlqKjkn1RpxBT30VQUR5l/FsTrhRqQCTR3XceJYvizh/hF3iVi5N0QIS48PY9HJmFGLtxBMakA44eSg2eNVCTMogMkfxeiYozVyALIUPmaFouztmF2RJ0np1oh/+OiuCuvdhskFIMMcgZkw5Ahi6ywKqZ+WXzAT/qLB0wFdUwGLLes/ptfxxEkz3Q/Xs/3w26z/c45i8F2uzNV8ZOPkABt7cC5ddGSQAONtjawodXu33xJFC4STXn7z2zUL4/jComji4e5qcg1kW2ZOXshcH4ojEaPOKQs6M4W2nWXrqgorAXwRYPUQnmDFfYhfVEgZV304ynqUGLX0ExcLDVQdlDGdIfEmsDmiDaeyfAy+o0jdtu9epfAX1YyADjWNJTvzOUT4obGFmekecE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1357a3-4de7-4cfd-6283-08de78843a6c
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 17:50:44.7301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snPd3qAkc4YURS0vw80YW9xp6LqNSOGVnfkGVRaOVd5lmtVw6VAfZvbU5I/6B/ZmZm2gVZSEiOZin8PBv3bcFP6fsDuUCqPwIsYM2jZ2r3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8467
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_04,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 phishscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2603020143
X-Proofpoint-GUID: aNUDikvOU9qikEC75vPCKs9iruODlV1x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDE0MyBTYWx0ZWRfX8EYq08BhQXK6
 FkCFgL3qVv5rgw2egXG/6X1OVODCjjclDGxCEZt45iy7mtHgisErd724sFVRUnAe+FxteVv2v45
 CujKYo+lZKoRB/2omuPgSdaZyulAZM1N9WUvpGBvJ+SI3KA8parxcCGf1apGIeP4g4iIkT3duEN
 Ba+C/35twsFzHmgIorY5RpoJAa83uipZSz9KGLw44vAuw8zAUzeuVTcieGVEpZNfmKNb5pIVuaC
 rij6QbL3NMh6wWO6vh0rZaqIGsbqeMylbpmnRnJq++1Z4QVaYzHgYwLGeg2/q3p8PtpIYARGwdZ
 yKopyCOwOis00oRxHp9HMu1WpkwsiQd4ziWTFF3M7c9TwHXcN5l+5Xh4UlJrQ4TUV8yVamV99cf
 6ukEXSr3p5+CYUJcUpMysXGIw5+WlNScypICJHGcuH8YWow1pnl7zbh/5bjN7P8lXu7CgOxiRgk
 qoxeGn5gOfD63BIJM1jKzEN9ccbE99vY7Mv0fivA=
X-Authority-Analysis: v=2.4 cv=KvxAGGWN c=1 sm=1 tr=0 ts=69a5cdfa b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=1XWaLZrsAAAA:8
 a=VwQbUJbxAAAA:8 a=hSkVLCK3AAAA:8 a=FP58Ms26AAAA:8 a=pGLkceISAAAA:8
 a=bzXT2nkUuvVJspcVRCcA:9 a=QEXdDO2ut3YA:10 a=cQPPKAXgyycSBL8etih5:22 cc=ntf
 awl=host:13810
X-Proofpoint-ORIG-GUID: aNUDikvOU9qikEC75vPCKs9iruODlV1x
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/23/26 8:36AM, Dmitry Vyukov wrote: > On Wed, 4 Feb 2026
 at 10:23,
 syzbot <syzbot@kernel.org> wrote: >> >> UBSAN reported an
 array-index-out-of-bounds
 issue in dbFindLeaf: >> >> index 1365 is out [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vx7Q9-0003ic-5M
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, ghandatmanas@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 0E3DF1DE13A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dvyukov@google.com,m:syzbot@kernel.org,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:ghandatmanas@gmail.com,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,syzkaller.appspotmail.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:replyto,oracle.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,appspotmail.com:email];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,oracle.com:s=corp-2025-04-25,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion,1afe7ef2d0062e19eeb3];
	HAS_REPLYTO(0.00)[dave.kleikamp@oracle.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,oracle.com:-,oracle.onmicrosoft.com:-];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On 2/23/26 8:36AM, Dmitry Vyukov wrote:
> On Wed, 4 Feb 2026 at 10:23, syzbot <syzbot@kernel.org> wrote:
>>
>> UBSAN reported an array-index-out-of-bounds issue in dbFindLeaf:
>>
>>    index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
>>    CPU: 0 UID: 0 PID: 6287 Comm: syz-executor268 Not tainted ...
>>    Call Trace:
>>     ...
>>     __ubsan_handle_out_of_bounds+0x115/0x140 lib/ubsan.c:455
>>     dbFindLeaf+0x308/0x520 fs/jfs/jfs_dmap.c:2976
>>     dbFindCtl+0x267/0x520 fs/jfs/jfs_dmap.c:1717
>>     ...
>>
>> The issue is caused by an off-by-one error in the bounds check within
>> dbFindLeaf. The function traverses the dmap tree to find free blocks.
>> It uses a loop to iterate through the levels of the tree, calculating
>> the index `x + n` to access the `tp->dmt_stree` array. The variable
>> `max_size` represents the size of this array (CTLTREESIZE (1365) for
>> dmapctl or TREESIZE (341) for dmaptree).
>>
>> The bounds check `if (x + n > max_size)` allows `x + n` to be equal to
>> `max_size`. However, since the array size is `max_size`, the valid
>> indices are `0` to `max_size - 1`. Accessing `tp->dmt_stree[max_size]`
>> results in an array-index-out-of-bounds access.
>>
>> This can occur when the `dmt_height` field in the on-disk structure is
>> corrupted or fuzzed to be larger than the fixed height supported by the
>> `dmt_stree` array.
>>
>> Fix this by changing the condition to `>=` to correctly reject indices
>> equal to or greater than the array size.
>>
>> Signed-off-by: syzbot@kernel.org
>> Signed-off-by: Dmitry Vyukov <dvyukov@google.com>
>> Fixes: 22cad8bc1d36 ("jfs: fix array-index-out-of-bounds in dbFindLeaf")
>> Reported-by: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com
>> To: <jfs-discussion@lists.sourceforge.net>
>> To: "Dave Kleikamp" <shaggy@kernel.org>
>> To: "Manas Ghandat" <ghandatmanas@gmail.com>
>> Cc: <linux-kernel@vger.kernel.org>
>> Cc: <stable@vger.kernel.org>
>> ---
>> This patch was generated by Google Gemini LLM model.
>> It was pre-reviewed and Signed-off-by a human, but please review carefully.
>>
>> Gerrit code review with full side-by-side diffs:
>> https://linux-review.git.corp.google.com/c/linux/kernel/git/torvalds/linux/+/26122
>>
>> Change-Id: I92f694e86518349eafa132b2ba314d8dfff6c86e
>> ---
>>
>> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
>> index cdfa699..18a7dc5 100644
>> --- a/fs/jfs/jfs_dmap.c
>> +++ b/fs/jfs/jfs_dmap.c
>> @@ -2971,7 +2971,7 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
>>                          /* sufficient free space found.  move to the next
>>                           * level (or quit if this is the last level).
>>                           */
>> -                       if (x + n > max_size)
>> +                       if (x + n >= max_size)
>>                                  return -ENOSPC;
>>                          if (l2nb <= tp->dmt_stree[x + n])
>>                                  break;
>>
>> base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
> 
> Hello jfs maintainers,
> 
> Is this patch on anybody radaras? Please merge the fix.
> Or should JFS patches now be sent to a generic FS tree for merging?

I'm way behind on JFS maintenance, but working to catch up. My problem 
with this patch is that the author is a bot. I want it to be from a real 
person, as well as any s-o-b's. Otherwise the patch looks good.

Shaggy



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
