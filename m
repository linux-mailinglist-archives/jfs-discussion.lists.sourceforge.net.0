Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7503A5CB77
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Mar 2025 17:59:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ts2wJ-0001N5-OF;
	Tue, 11 Mar 2025 16:58:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ts2wI-0001Mx-L7
 for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ggL9zdT32hZPM33GhBntu0muthxXF90xSQja0voprU=; b=ZMILxf6l79vDjRIzjz3VUVcF6f
 OvpRX6MeZNiUMyAhVOiMTAcmT1y3lUJFEhPI1jJsLNm3ioSfS3H0Ln5v0pK7DGA//CubGym51e2z2
 KdUhjvIup/kfwIqKi0HCUEuWMK8ar2c6JQJ15jylcd1nljXfklVfgpr7s4n5Q0avopVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4ggL9zdT32hZPM33GhBntu0muthxXF90xSQja0voprU=; b=epbpEpTiod5722buC4VY9JC02x
 phiZMbv51w3rNQb6GyjNctZhI2N9dL/4ySQ8IFPZD2NJ+ouhqjc1gFhxFoksT0ShZzUdfl/BXxYxJ
 hmfU3/HyaguCYmg9m87Kx7H9Lb2Y77IpGkGmxX+FvCBOYG/XpZm3YiTvi2f7q486xBus=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ts2wH-0006Wt-TI for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:58:46 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BGQlcb012974;
 Tue, 11 Mar 2025 16:58:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=4ggL9zdT32hZPM33GhBntu0muthxXF90xSQja0voprU=; b=
 nXfytj9doze2xB3FsjkwQ/3sASABo/N25E27n03cGP06hOLSjRWUeZkqSCzaNw+l
 ZpFs3jHI8D3s5XAIHlQU2uaRIdglkDPacD7g5WBNlwi3JK8/NmMCncE9fU/9T1BP
 MLGzsK47Wh5rqpQqrDL/+FcbqkvZlMNmzQT3mxSdME164pG+2xyyZKCFMc1rOFjh
 dan7RnqPVMmqdP0I5fKYaDbMinU0knN2QexaxKMvebcWA6t3rDmX9sASPwRSHkrf
 ddrbUXGkxRZVGNb5hx5CpQ4h17FYnfeCc9rSYupUg5tYerLZwaOXM0UEQlCjJiLQ
 PFg2yb+AxJQ178KeRXmWIQ==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 458cp35cea-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:58:37 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52BGCcG4017585; Tue, 11 Mar 2025 16:58:36 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 458cb9aaya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:58:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCCcb8YAGNOff+IxtcseAYV8ax0s6eG6EmQR9ZJxiHNuKsjVyNJ+XYq7z9XpwL+j/ugtkAufqnoBAxcNEWTuK6evaqyrHR3eyfe0OqU/SMaEQHV+w3ONa8/ePCSmhtJk7dJhiCO9V4+d6lulQcikiD/3bpgLFnqAaKBcrzO4c62p9lhdYtqKaFiLZ+EyHWH14B/oCXsKJ0EUU0L0HnUsgh2aaWJZvHI+IG5pn5QXCvHEQoueIhPIJ9WwpawrsQuHaG3q6VOiLArtW8nPwFC1TQlNT04VjlPwqRpQe+Ak6Bsq0adv1jS5o+GNO3XY75cEtA4XbiFS83VKSNONEnTikQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ggL9zdT32hZPM33GhBntu0muthxXF90xSQja0voprU=;
 b=sz8LbOv6/DXi6b/bdoUyDbO3jhkmESMykeRnfgPCne3biaSt3WcnpwUfY/ZZwEu7G2dHN/GjDiJom3l9P8RzU8U2RUXWz4mhffQFz0ZPyftahL3WPAS7bnB8UcDKhwyPdA6GjV5UvVKp6E4xfHy53sgNbfVxDJq1lWXx7YR8RYKYhg2gaGXkEmA+eZ4W4vlZy1JFM8b5wGX4AGxbCEP15moeWgu+6QyFasCt4tgaO8avrW4k8wdltwPPDTsFic8thMnwL+CwK9cWBgb2/eO7XiJUTYxJX7QvgCrWzAJhXOhFTOU4r+BpoWTP+gIETwHsDzJ4Uv1FHVeXOic3Y7yP8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ggL9zdT32hZPM33GhBntu0muthxXF90xSQja0voprU=;
 b=CSWCKROapK7S9zJRO9FS2tNe+3/lNNcvidsLiFCILfd2gsQ8GcSd/QWqirhNUQHCTqCT6bVb72N/5jArr6UbfPDCHacXbbkr3uXfBSozHNzDGKn7NTkYTO9prjQGMtJEvGP/CkkEFE1hWoLnZX4RhGIUxAm7QovW1KG5EXDkoOQ=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH0PR10MB5596.namprd10.prod.outlook.com (2603:10b6:510:f8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 16:58:32 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 16:58:32 +0000
Message-ID: <d121240d-f755-4b1c-b1cb-b62db21ce7d7@oracle.com>
Date: Tue, 11 Mar 2025 11:58:30 -0500
User-Agent: Mozilla Thunderbird
To: Roman Smirnov <r.smirnov@omp.ru>
References: <20250226082523.112081-1-r.smirnov@omp.ru>
Content-Language: en-US
In-Reply-To: <20250226082523.112081-1-r.smirnov@omp.ru>
X-ClientProxiedBy: CH5PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:610:1f4::10) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH0PR10MB5596:EE_
X-MS-Office365-Filtering-Correlation-Id: 645c4ecb-1eea-4b96-4da9-08dd60bdf490
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0xDMDR5QzJjd01pLzMySnpKcklkQUovdDhuS0xBRWFxRWx6dHp3WnVNeTQ4?=
 =?utf-8?B?RnNtZFFEcklyVFU4RmRmekJjYVpEQXRhdnEzWG51cUx5OEk3bVJYbE1acENt?=
 =?utf-8?B?T0JkRk1XL3IyVy9KejlRT292Tm04dnZqWXdIUHF1RXJuOFhxbVUvc0w1czNO?=
 =?utf-8?B?NUZnRWFTSElrS0tFNzBmN1l1NHdlcS9tcmJDdGhaeks0T0J2UWErT3Q4Z0wr?=
 =?utf-8?B?VDMxa24xU1FlWXpNVGlwbmM3cHhJTG12QmxuNVlNRlM5eng2NkVFUlZtV0VH?=
 =?utf-8?B?TTRwTFNUWnV1N2dGWHVZSkwxdVRrYmZsRGlHR0tkUjF6NmU5eEpJZFlON21v?=
 =?utf-8?B?Z3h2ZytZQVRSVWFyRzZ4OTA5QlhDQWFhMUt0QkF3OFplMExOSWsrWGF3aGh0?=
 =?utf-8?B?ekV3Sk9XaVlNZmxYU2NqeG9Pb25CWkpYNFdlWFhNQTcwMG90UjdyMzUyWDRN?=
 =?utf-8?B?UmFIbjZvOWEyZDVkdktoWEt4SVBUK21zSGcxT1JJdzJ2YWpORjBxc1hFV2xP?=
 =?utf-8?B?a3ZPd0NCUUdZYVYrOURRUmkzQXptd1hMUzdrNUQwTmc1WHBhc1R4THdMTEJT?=
 =?utf-8?B?YzZpanFFRjJqTGxkdUVja0M3U01wTTJvRmF3Wm10Z1dtaVM1a2JHbDZJTEpz?=
 =?utf-8?B?VlJITDN6elIwR1hRVVhDU3BYYUhBUklkMmZpM3RrUGFDNFo4dFlDNVh1cTlW?=
 =?utf-8?B?ZHhxTjJvKzRzUFMwMzI1NzJvZ0dxYld0YnNQRHgranNmWHpnMjkxRXBUcHVC?=
 =?utf-8?B?Tkl5anQ4ZzBmTVZtczR5Yk1rWVdCSld6MnhCTjYvMjBraVJyVzloU3gzS2Fq?=
 =?utf-8?B?WldrZ0MyTUhaNzJ4UE5YYVg5aEd4OXJua01DUTk2NDdZQlNrS25uUjNDK044?=
 =?utf-8?B?UU5iTmZKb0s4WENHd240VHhFZU5XeDdNdHBPeXFDcm80eWxzeit6YjdTUjVi?=
 =?utf-8?B?c0x0bXh6aTBuYW9ld0dPWENSa1l1cU55WUw2QVhGSmV5MUllclZRbmViZFVz?=
 =?utf-8?B?WkFLc0Z1bVBzekNXUXEvSmU2WWtHc1J4ZnQwYzVqTmZNa1JRT0l3NTcrNHhU?=
 =?utf-8?B?RytJZzhWT0xnM0xhVlNnVFZmbFNKTzhFRGVYRmxwUDduYkhBblhYeXNXT1c5?=
 =?utf-8?B?SER3WVp4NFhGdThybUQrN2J0Y20zcnJYSUEzVUNZUWxLOEJQaDhYamhBZjJC?=
 =?utf-8?B?S29LRC9UWWpXUFNpeHJjaW1JYXlKTFVGKzBxcVVZR3BzQ1dhTlUwY0wyQ3Fm?=
 =?utf-8?B?enJ1ZXNUditFbjVuL0lvQUpWWDRMbUt0bUJNbWdVZ3JPWjREa0drc0dyZEYw?=
 =?utf-8?B?UEVWZXdvMEc1OEUrMjBUZ1NtWklTQzh6N2lTR3NqWjBVRkE5bjdHcGhUcG40?=
 =?utf-8?B?VW9qVk0vdUJZODFIVjZQSjRXb2xVRk0yZUhNa05KV2VlbHhrR1JhVG13L3Fp?=
 =?utf-8?B?RGQ2dnJxQ3F1a0ZIb1U1ZHFmUUcxTVc2YXd0cU5LQkJWZDdHRHBpYXBQZzdr?=
 =?utf-8?B?elBMK2FPZ1hYMWZrRWFVME1OdVVRSVVqWmZaeldFVERtWGtYT01pcHdiTWxF?=
 =?utf-8?B?VXFJRzBVZnUva1N6VW8rdGZwdUlxR3dtVFVkNURwL0piR0tIekQyWHRXeW8z?=
 =?utf-8?B?TVdiUWNyVmlDMkZGMFBEdWlkcDUrenJmcmNEbWhrYzNSMHFxWkJ3QkQwZHBu?=
 =?utf-8?B?a2EwR01pUVhpUFJ5WExxbjRrY1MwSFViaXNjNzlvL0hZamVXTEJ4VE04RlJD?=
 =?utf-8?B?ZDZkblFJUS9aR2tiNm14KzJLZWJLZ1dadTdUQm9lMEp4NGxIWjVQQ1lHaHdu?=
 =?utf-8?B?Nncyd3RSQXRJMTV0Wm1JZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkVsVkE3b1MyTyt3c3JXd29SUlZ0U1AwWGxxYVdnakh4ZlpvTG1mWVZPTWRo?=
 =?utf-8?B?MWxOUW4rUGpIb3RSeWVnaXU1RGo3VTR1UkROQlpXQjlhN0pNUUt2WjExS0xF?=
 =?utf-8?B?Q1JOZTB1aE82OGc2OTlCU043a0xFaGZRTGVhbWl0R2NBQVNRbkk1WExtRDJq?=
 =?utf-8?B?SkdPN1VRd1RnVnk4S1E0UlphZGdTUDQrWGt2MkpreDBsVlJrWmhGVHdod3lV?=
 =?utf-8?B?ZjdhMDRIRXIxWmo5WFFTRGMyVmxrZ25MTkxYeVZZampnOUZIUGE1M2F5a0c4?=
 =?utf-8?B?NFl2cnpDQlFLcFZyS1VzbU53OTdLaE1ReUd2cWhzRzZRSW9QR2J5cWhWejJi?=
 =?utf-8?B?S1dKVTBSczBjUVFtcWpvV25CcnpBc2tab0F5dXJ5M0JSOVN1RjhqVVQ3Y0tU?=
 =?utf-8?B?eVhuaGQ5NHhnUWZWaGRhK1k3blFTMFZ4cmI2aFkxMDlQUFBQakxpV2RiU0Ja?=
 =?utf-8?B?ckJhUzVybDNFV3l3YXlCRi9CRVYyRGJ3cVdQSlBzNSs0dGJiMGpnMko2citX?=
 =?utf-8?B?WnlCSlo2TEpEcHB0VDJuN01KN1Zsc28yUDV2UzMwb2FnVXl3ODlhYmZqUGNH?=
 =?utf-8?B?bDIrNEZJRVBtN29iZG9ZM1ZwN0VNQ3hqUWlVN0dDbllHdDFITHJDTDRwWWI3?=
 =?utf-8?B?WkR4UW9uVGtlSEk1WWZiOTVyT3lzdGZSNlF2eGlJUnE4MGlTUEwxS1N6aitC?=
 =?utf-8?B?R0ZzYVE3QzkvUTI5N3ZNVlc4aUNIek4xWGMyYURlOXFXRVVac0xvb0pFcWgx?=
 =?utf-8?B?UXMyc0JGSE9lSHRoMmFEaENBeVE4NGdPT3A0bGtVV3crMWFlTFFsbWNyMTZy?=
 =?utf-8?B?QkU3eHdlTUl2SjIrNElyc1NDbGhwWWp1a0JMUzhNWVlUMk1YbjU5dDFmakRO?=
 =?utf-8?B?Y2F5bkdCV1c0d1NVc1BDUFoyNzJ2WjJNbkYxajRvdjljSnQvK3BuSS81MVp5?=
 =?utf-8?B?UmVJUi9hZGIwY1FpbDBmRUlLam9jd1hDbDEvclhrQURDYXFMSFI1K203NDU3?=
 =?utf-8?B?b3MwMXB2ajVuSm82NENlYm9Rbm1TNHc5dGltWHFERVU3bSs4WE5qQXpuR0Ez?=
 =?utf-8?B?UDdPYjlVbnZMQ2JNdHBMc1FZUXZ2R1NwZWpYWDdpUk5LWGN4Skg0VHRUcDR2?=
 =?utf-8?B?TVBSbEx3SU1pVXBoMEZJL0QwNHB1RkhZUmJhem1JQk5qSjNmYmpTZ2pHeTZM?=
 =?utf-8?B?aGNnaFNXTWRqcnY5cms5NGpzTnJDM0dzYkRvTFQ3R2ZkQWxNM2FEd1BHc0dY?=
 =?utf-8?B?cnNZb1p6bThpYWM5QzNQTHkzQm5MSCs4bDRTRGZoSmJjelJVdHJTWno2NlVk?=
 =?utf-8?B?MVRKYjhBMFZlUEhDSTdGSDNkSVdyQytZRzBGTHR2OW1rUklDK01PUlo0VTFa?=
 =?utf-8?B?eXBSUk51OW9ISlpWbEZENGxTUDhDQW50RnExOW5OT3hBSWkrQ0l2VTFkWVJk?=
 =?utf-8?B?cVNLb2tLNjNlSFNXUlFkVG5GaFoxOE9tdGphZG9scTRkOHIwbFM1NHZySGZF?=
 =?utf-8?B?enVYbWYxc2YrRGlNVXUwZGlpRDVyd05MaVlvbFBUWlhBR280VjVObzF2UDVG?=
 =?utf-8?B?OEx4N3pjc0JLQWN4NGMwVGFEOTE4bUxJLzRHanV4b3BQRlpSamJJWEVad1c1?=
 =?utf-8?B?N3F3VUl3M3hhbW1EU0VUSTNzZ2c5citOeEhmcU91c2xtZHIzVjBWTVY5UHZN?=
 =?utf-8?B?eTBuaWlJQTVVck5ScHZMa1QvY2tER1FIQ3djU0hERmE4aVZqM0dZSis1ZjFD?=
 =?utf-8?B?cmtSM29uMWx1TEVaNnRucFpuWmlmYU01Y09kV1VYcURPdE03cnBFSFNHSGxj?=
 =?utf-8?B?bGVCd2lHVzBob0FITFEyaDRxN1NVbks4eDNwZkEvejBBdUNmNlRXM0RlRFVN?=
 =?utf-8?B?Mmg4YW8vY240MkhzVzlKVnFRVUZrRUdIenYrcXdYOU5NYXNQM3ovRG9FMStW?=
 =?utf-8?B?MjRUbjU4bDNqOVNMZ2pKdXhtTVY5eTNZRnlVWXl1UG9KRFVoZ3hxS0d2OHBI?=
 =?utf-8?B?VWNDRVI0QSswREtzTlBsL0p3VUVCTG1jQ2tqak9LUXR6bkhBQjkzQ2dydng4?=
 =?utf-8?B?UU1zdU0wZzFZQW51TVptY29vL2lrMFkzcFc2LzVOeTN1Z3VoM1hYU2RmazRZ?=
 =?utf-8?B?dmt2dWZLeks5UlJkRFg3Rjl1aHJMS0ducTk1MjhlcUh0cW5TQjdPSE1wMDVH?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: vmhHKhvOgHWG4Q+8Mo7AdxjqV/QRf0g7ktMtKZz0AR6NuWJYd3WF75tugSH7+RPmymqYuOXCUkDJqhYejVhELLFsYTFq6QGwOKZf6++tkO7nFyR026KhXAz1Y54knLtYOV2UocRBCrXhQSG4+bwl2+9ioeTWP6+xwh9WhUZnXmQB7zeLT49hfIjW5IUGpKJiP0IQ/GufzCHH17+fGY44eiitZRhX2tk9heT+rfr3lcPQdWjj4ZbAQlCksBl7qFIbYZL6xRU6Ro9rUReE3wiAw+8BGAHYVXIRct5JAemxnoH2DgUaDgqMdvEt4KqUfTDOuVBcqHJ+qtm3GuY5c6x2y+jMCrEmeT272lkS1QKegx/7QQGXWKb5sNzwt+O8RZYoAXAqGXL5rYn5J+sKgVsIHMz3szpcFLrxFnVHIl7UIzR/e8YDrv6B9GjstaVK3YJbO0R993e1qOYmI0yfrWQW0BrDrXRlU8ODSlsL8AgUhd/ZdQ3EiYKd8zFZdJVoqgUu6qLwhT+w15Emcpnnv8goRUaGtbvwsdyFaELE82PAEqnkD0vsjOLBBEiI+3wW+85lyluKklUQwDyvZZpyO+o9yYK2gDMIKXwRWkhOb5Kra7I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 645c4ecb-1eea-4b96-4da9-08dd60bdf490
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 16:58:32.6394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1+Y6uB/xfEGEjK0i3pg4FPJMpaQ0v0TgDQHGmuZ5nK6P1U+TPoTFSkGzYV0JQ849vlhHkY4fCriAd50/c4zMM3IfCPYbXd/LoTiVJlvdafs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5596
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=729
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2503110108
X-Proofpoint-GUID: AIHMTWwf8gB0A1GKueJPWOZVHRy--1oq
X-Proofpoint-ORIG-GUID: AIHMTWwf8gB0A1GKueJPWOZVHRy--1oq
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/26/25 2:25AM, Roman Smirnov wrote: > If the file system
 is corrupted, the header.stblindex variable > may become greater than 127.
 Because of this, an array access out > of bounds may occur: > > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ts2wH-0006Wt-TI
Subject: Re: [Jfs-discussion] [PATCH] jfs: add index corruption check to
 DT_GETPAGE()
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
Cc: jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 syzbot <syzbot+9120834fc227768625ba@syzkaller.appspotmail.com>,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Edward Adam Davis <eadavis@qq.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/26/25 2:25AM, Roman Smirnov wrote:
> If the file system is corrupted, the header.stblindex variable
> may become greater than 127. Because of this, an array access out
> of bounds may occur:
> 
> ------------[ cut here ]------------
> UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3096:10
> index 237 is out of range for type 'struct dtslot[128]'
> CPU: 0 UID: 0 PID: 5822 Comm: syz-executor740 Not tainted 6.13.0-rc4-syzkaller-00110-g4099a71718b0 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:94 [inline]
>   dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>   ubsan_epilogue lib/ubsan.c:231 [inline]
>   __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
>   dtReadFirst+0x622/0xc50 fs/jfs/jfs_dtree.c:3096
>   dtReadNext fs/jfs/jfs_dtree.c:3147 [inline]
>   jfs_readdir+0x9aa/0x3c50 fs/jfs/jfs_dtree.c:2862
>   wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
>   iterate_dir+0x571/0x800 fs/readdir.c:108
>   __do_sys_getdents64 fs/readdir.c:403 [inline]
>   __se_sys_getdents64+0x1e2/0x4b0 fs/readdir.c:389
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
>   </TASK>
> ---[ end trace ]---
> 
> Add a stblindex check for corruption.

Looks reasonable. I'll pick this up.

Shaggy

> 
> Reported-by: syzbot <syzbot+9120834fc227768625ba@syzkaller.appspotmail.com>
> Closes: https://syzkaller.appspot.com/bug?extid=9120834fc227768625ba
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Cc: stable@vger.kernel.org
> Signed-off-by: Roman Smirnov <r.smirnov@omp.ru>
> ---
>   fs/jfs/jfs_dtree.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 8f85177f284b..93db6eec4465 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -117,7 +117,8 @@ do {									\
>   	if (!(RC)) {							\
>   		if (((P)->header.nextindex >				\
>   		     (((BN) == 0) ? DTROOTMAXSLOT : (P)->header.maxslot)) || \
> -		    ((BN) && ((P)->header.maxslot > DTPAGEMAXSLOT))) {	\
> +		    ((BN) && (((P)->header.maxslot > DTPAGEMAXSLOT) ||	\
> +		    ((P)->header.stblindex >= DTPAGEMAXSLOT)))) {	\
>   			BT_PUTPAGE(MP);					\
>   			jfs_error((IP)->i_sb,				\
>   				  "DT_GETPAGE: dtree page corrupt\n");	\



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
