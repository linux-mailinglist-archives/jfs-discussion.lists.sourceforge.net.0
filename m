Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 504CB8D21D0
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 May 2024 18:42:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sBztl-0008KF-4V;
	Tue, 28 May 2024 16:42:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sBztk-0008K9-89
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 16:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w4rGdIV98HokeenfAPZsvuPNtKoK0e42TpqttExFbVg=; b=kPIrDBAO/+vLQ+v4mu6saYs6a/
 XDws13YW9gSZa+ej31El9WBGs5Vij006CnBSkIGlTxXAUdC2eIf/XzvA2Y+5FmAoGb2YxGzOhpwRD
 m42zeU1ERfD6XRTb0m1E2WXyFbD4QaxcKC70dSkt43fNV0WkIXtcZ/aYLxuAsgzUWXLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w4rGdIV98HokeenfAPZsvuPNtKoK0e42TpqttExFbVg=; b=NaCYKyPijXUEfpAB4wRMSbtNqt
 uPMfgsCi0lRTqetPZrII0yBQnQKPO5yx3UVYGdJeYcCeoIzGe8xFzO3FF4Kj5Ysv9xUuCXEx5TuiN
 udu4uci7rmfZhO3E1XFqF/N4eodOnKO2mba0JoiUgj/Geo0NrQ8uMLhjNHAAi4mw1BqI=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sBztj-0007A0-G1 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 16:42:03 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44SBojGd020089; Tue, 28 May 2024 16:41:51 GMT
DKIM-Signature: =?UTF-8?Q?v=3D1; _a=3Drsa-sha256; _c=3Drelaxed/relaxed;
 _d=3Doracle.com; _h?=
 =?UTF-8?Q?=3Dcontent-transfer-encoding:content-type:date:from:in-reply-to?=
 =?UTF-8?Q?:message-id:mime-version:references:subject:to;_s=3Dcorp-2023-1?=
 =?UTF-8?Q?1-20;_bh=3Dw4rGdIV98HokeenfAPZsvuPNtKoK0e42TpqttExFbVg=3D;_b=3D?=
 =?UTF-8?Q?FAbiwrPrc4XZeb4XzEg7IQxvkg43ysx+t9F/2GMEOxt3ko/a+Dqrh83gpOuk07n?=
 =?UTF-8?Q?AK3ZJ_F/KKjrd3p1Jkt60tpnYAQ6lwEHtjRYBwmTJ2BJCr+caVHprZN39pcIkIW?=
 =?UTF-8?Q?OwcTqQ1QLnZ_L7NREs5XuwzMnwf6Qdcjn8G/2J/iqZ478+XQRlARZrNMy0pmxin?=
 =?UTF-8?Q?J3RfdK7kMT2kwJQjH_OnM3+9XaNkzmA9Gq/FDYF6Ei/gcgOhxOur7aLIZp0zmFM?=
 =?UTF-8?Q?T02mMBIP5SwZt3Nc8mOMXXb_m9gba+nm91Al2E2I2dWMwe2GTsnSEznty7sQdf1?=
 =?UTF-8?Q?M+jQ1y4uS2hVqAw0EPWd4YxPlwRmP_JA=3D=3D_?=
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3yb8p7mrqg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2024 16:41:51 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 44SGXURO037287; Tue, 28 May 2024 16:41:49 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3yc535n8nx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2024 16:41:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hCG5rIXU4g1qZZ745QBOoFenVJW/AK+cAlFdCuejRL3RRW0Q3SlW+D6oIV/9mjftMIdLr80SMxlA3xXLvq5Nyv21qdQscYPowNymHJ8ylCDb/6A2wP36/wMyFA73AtTbvuKCDxdLtxZtt6q3Ffza9Yr78PbTJpAUC0ma2zuQO/uzKtNK7YsK7h16D26yn7h8gzAj5MTDGU/19xqJHTQSTmKgXGKcTokKEYBB6OlrSMWqNTon5kgZpvRaZFA+2farewnPFKGex8iTzXjvQQdSlGrgw+529aQUE77mI0be8+FX38Y8JIaBaV0w3tEaq+PFeruuUGdqo3fsN3/uRyZxvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w4rGdIV98HokeenfAPZsvuPNtKoK0e42TpqttExFbVg=;
 b=R+48lqUomPXNRkVP8EF1KBf4IBdiq3V3EAWaTt2cG3dIHmOPlLs+G9ydfj2fsPxz+Qb2gXmKbJWvnufrUvaBFhsJR6JLUxs+WC+x/4Ie/A/we5NCO3cHpa1PMusVRgK7SUQBKJ+Z1PfSwILC02KaO5wz09mq3Lsr8xMGQgjrrdUxKkLqZav7Vyj6w06PY2ff+8RDEcNsrkA2nHzri24c5X/Se+DN5B5hJ+fEkC0R4pySmoKWX5vu/SzPjXd+U92ETTiD7rHO042m4Py2luMTqAgPYYiOUiGn/8/3uHmMIeULg52TBwpFhoi0+PSR2MtimWaXGtwyCR0vaWT6Hmmnkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w4rGdIV98HokeenfAPZsvuPNtKoK0e42TpqttExFbVg=;
 b=z/s9AOsYjRNOvs+Ij8jKGp+zd7+nx2Kb32vFTu35TG/NE1qMH9Uiod5ovuH1/hXCmr5eJdk2NPel27TnB+k/YXWpNNChid+ZHoIVvgc01AnRIdqf+QuowJEKkXLi94tZ40MO3JRHn5pYwLCTV/Nc68h2XaAmjTrpsjGAq4WIAN4=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by MN2PR10MB4400.namprd10.prod.outlook.com (2603:10b6:208:198::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Tue, 28 May
 2024 16:41:47 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7587.035; Tue, 28 May 2024
 16:41:47 +0000
Message-ID: <464880c5-7e79-4454-813c-4ade41508ac3@oracle.com>
Date: Tue, 28 May 2024 11:41:44 -0500
User-Agent: Mozilla Thunderbird
To: lei lu <llfamsec@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20240528103748.15068-1-llfamsec@gmail.com>
Content-Language: en-US
In-Reply-To: <20240528103748.15068-1-llfamsec@gmail.com>
X-ClientProxiedBy: CH2PR07CA0046.namprd07.prod.outlook.com
 (2603:10b6:610:5b::20) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|MN2PR10MB4400:EE_
X-MS-Office365-Filtering-Correlation-Id: ee9c50a6-5538-441d-2473-08dc7f35108c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aU94a0hhbC9rN05xNWFCQWJpTEJsWjNlalZyMUwrQ09ZbXpGc3VPUmZjdkt6?=
 =?utf-8?B?aXlmc2hxTkVqSk9SUFNtaFladkxISXE0M3NHNnNKclNXQ3VSWVZYMDdEL2gr?=
 =?utf-8?B?YUVzZnNwVjVyTXA1SjFOenhkeVVUK0lYd2F5bUtmNHBtQlVIc202bE55Y1NI?=
 =?utf-8?B?MmdWTHgra3l4eEVkcktQV1l4U3o2WWVVRjRUbWlqdUVEQ0V1N081UEFrKzdC?=
 =?utf-8?B?bUFmbDBZQjZKMEFDa1dWMEpjTFRaRkxicXIrYkYxUWVKclpnNGo5dTBGbi9s?=
 =?utf-8?B?NVdXZW02MWtNSFU3L211L3Yyc2duVUlNVlJNanIxVUUzYy9TR1RyUGRCZjF4?=
 =?utf-8?B?S1dtWmNUQ0kxVUt5RDVaV1lFeWR2R1lsS0k2VTVGK0lpY1l3N3RmazJrRm1z?=
 =?utf-8?B?VnNIcFEyK0hoSG1pcXVnVjBGRjl4WmlXLytxTW04OU94Unk1MjFLS3JsM3R2?=
 =?utf-8?B?OEtkTVVqRU94V0pGQUE0U2hGUktIZ3VaNnNXZjFwL1FkL2x3K05seW1MUFhy?=
 =?utf-8?B?Z1RWcWd2bGh5MVZtZytNQlp3UDR4M093bmcrQ0IzZWJPUnJHZnl6R2FoRTJK?=
 =?utf-8?B?ZUFhZ1gxOTV6dlBJU0lJUE1vakYxUjhUMWhhdWo0QTY4cGNmaUpkYTJERTBF?=
 =?utf-8?B?dUI0T2pNTU9xUDBLbEJFWTUybUtMN2ZkOS9mRFRvaWlrV1JsbmlGaUVjdVRa?=
 =?utf-8?B?ZHdRUUhCQVdiYXUraWhocnVCdlg0MnBNTVRHeDVUSmxrajZ2WDZaamlpN3NP?=
 =?utf-8?B?d2Z5a0ZtUXFpNmVMdDZWSHJXM1ZxM3NlTXhYQjNQVkp1S2U4bGdjb0FBK1Yr?=
 =?utf-8?B?RFZRRGZKcEo0aVFHSDhDN2gwQkI3dzF5L0doajR2WXhoTUN3SG4xRUdFSkty?=
 =?utf-8?B?SlFWUzNDQ1dtMmFKL1FNK0M5VDFrZFl0SVFqOC9uVjRRQmk1WC8xVzBub2M2?=
 =?utf-8?B?dTNkQUhBeHJseCtaS3BDRExnbUpPcm9Oc0psckw4THFNZDJYUmFHcnl2a0J1?=
 =?utf-8?B?Tlh3VmtaL1ladDFicHF5UG03aWtBMmx0elhOYjRsb2FkL1lwRm1QVm85Vkoy?=
 =?utf-8?B?WGs2RHFQK0VQTUdlNW1WMDg4SEh4MU5yalNjOGVDUWd0VkF0a2FCdXZhaXJ4?=
 =?utf-8?B?WS9qeDV4b0xOYUN4YXRlS2FkRjFYVDhJdkswMEZ1SU1vOGcxbm1tK1o0T3lM?=
 =?utf-8?B?ZGg2VENRU1dtbm9Rb29UMXUvNXRQc0tvQzBvSUlPTlZGUHBoWm5GT21NTmRz?=
 =?utf-8?B?cDN3VnduNFF2MW92R1hOZ2dZNzhTY1FjSkIyWlFUV1FVT05BTnVZTXI3YVll?=
 =?utf-8?B?cmEweGpvTG1EYnBBRTJ6Q3hIa3dIVnhSQjg0VDhMWjlvV3REbzc0WTZyQ2tC?=
 =?utf-8?B?a0Fzb09GbEpvUXZHVkE0U0pZNlRORXdSczh2Wjg2WGtMRmJheEoxdXZ6YkdN?=
 =?utf-8?B?NzBQN1RKN1F3N05lVTJSKzBBYTdYUXpSREwyVFpLelI5alFnT3hWQjExcFQ5?=
 =?utf-8?B?d0xmRCt4QzZoUmJVcnpSZkNwcE1BUTB1dE9ubVkwVllOdU5sWnBJTjJCTHVP?=
 =?utf-8?B?cjh3UVFJM3N4b2dVVHNjOHRXaVFxaDhjZlhsUmwrQVV0SlVacTF1U2h3SC81?=
 =?utf-8?B?RHM1eFVOTnZ2Ky9Nc3JzenRRWjh5TXh6RlZmWXNQNThYMzdwY1BKSlV1dWcr?=
 =?utf-8?B?SGhTNkV4WkljRm9pdHJoSnZpUWFSOVBGOTJyY3ZxM1daWDVtMXMwc3BBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDAvK1NXQ3lJRnJoQjZYWjM0ajFKMTk5YWk4VjczZG5tVzd2Q1NFdDNMczEz?=
 =?utf-8?B?SzNpSHQ1RnpXNisrVDVINXJLbkxwY3BaV3hURDVrWXV5SW9SN1k5R1hsc1R5?=
 =?utf-8?B?QWVIRFlFbnJyUUNsSFlnbXI4UlFaN3lnMkFMRE5mWjZncklCdkdyVi9pOGpz?=
 =?utf-8?B?emI5RTdScVJsemI2Z2Vwc3QrakJxeFJGSkEwdGI0TCtFWnB3RjZCTXQ5RTZG?=
 =?utf-8?B?aHlVKy9kTFJUdGVQUDFzckgzVGlXNmc2SE1WRXBnck5lS0h5YzZsVHdyWmhU?=
 =?utf-8?B?QTJJWC94WlgvSTUrQVZiYlVMRHBqNjd0S3A3bWRMQi9vMmZERnd2NEFxdmw2?=
 =?utf-8?B?N0lFa0VPK0JYa0dMangwZmJuQW5MZ1N2dmE0SXI1WWtwbEh3NkpsMVlVR1lK?=
 =?utf-8?B?c1UxSnk0eE1LQXoyb2VkWmtFYUdVUjdBcmxxQVRTT2VJbW1kQUovQTR1UUtw?=
 =?utf-8?B?b3hrTXJJaEFHd2EzRTV6UCtDNXZtSXByVHlLRzVZbnR6R3pIc3VjSUhsNkQx?=
 =?utf-8?B?ZU5VTGZ6OGRnV05mZEVmWFFhVCtrOWY0VUQrODhIckE2dys3VVRGaVFBWkdY?=
 =?utf-8?B?UFNyMTlGR1VGeStvcHZtZUR5Tkg5ODM4eDh0aTBYODkwR2FkSkdTYmpWL00z?=
 =?utf-8?B?L3BSQ09ZdW1nOHJFaHBWS2JmazdQN2IxLzczMlc2TG9QcFV0QkxaNnZvcHB5?=
 =?utf-8?B?U1A2dGwrV0JHWDJGUElXbWNsY0o2YXZLNDBOWlluQTI2YnhWZHpaamlrQkhy?=
 =?utf-8?B?bTVVTXNCWElFZ29yZWVsWW9uK2ozd1ExR21DeUswKzREMFhQU2U3cmRlNER5?=
 =?utf-8?B?bm4rNlppNy9hSjdla3h6Ui9xU09MUTZ2WjIzaERvbU93dVBOMk1Gbi8wT1VN?=
 =?utf-8?B?Uldxb3hZWWU3MWhDL0pvaHVqcnZETmRQMnZaejBBU20ycGJva2M1VEVpdFBX?=
 =?utf-8?B?TUdKZ05aTU5pMTJ4aGNYZTRYSGNIWCtIZGg0ekJtZjRtNWlnYi9mUEs5dFNn?=
 =?utf-8?B?OGxyblB1TDlValdDNzVRUGNoSkVIZ1k4RC9LdTZ0MVEzN2JXVVZYVWlQOFpU?=
 =?utf-8?B?VXJrdkgzaGpMa0IzQlJzRWcxSlQvVGRBdFFhR21wY29mVWxtc3FiS2FoTDdD?=
 =?utf-8?B?cm1tWVVMdG13c041TW51ZlA5SEx6aUl6cXZocFpRcDBUdy9pM0lmN08vdWtk?=
 =?utf-8?B?VmQ0aGhkMHRPd3FtcXZvZTJ3aWV6WGlWU3JRZWp1VVZyQmNpRGxpbkkxL2w4?=
 =?utf-8?B?Z09QS0lNUk9yVVUvZUdEejZuN3hTSTVyMEJDa0NHeC9ZNE16bmRYR1lZYTgv?=
 =?utf-8?B?dkR5bEFHT2FIMkFZMllSeDVOcGNnK0hsb0dRY0tVdHAvZUVGZUlIOVlxcTVI?=
 =?utf-8?B?S0hLSnF2NzVGOXh4Nk5YSFNuTXBJMUNmaElONlFUUzlkTkZDSVFDQUFCZDN4?=
 =?utf-8?B?NXUrTUs4NTAzSHJkVm5ZcmJPWUprNGFYVUNzdW42RWFjaHoyYTJsV1pqV3Za?=
 =?utf-8?B?dUNLbWJJV0Y2cFlIT3RSMmh1KzNBVjZCS0NZNDdJdFBqK2wrTk9KQ3hHZXNv?=
 =?utf-8?B?eVdsdmhtRTJiQndPdmNpZVp5V2dhR0txV1plUW5ycHYrZ2lqZ2ZUYkVIOGZT?=
 =?utf-8?B?dnhJQXBWQlFodWFnUnJWc21OL2tyNU5CSHVWajM4R3JLY1BIT1AyV3VLWFFz?=
 =?utf-8?B?WlIvTmVwbHM1UWZhWXpieFE5ck50MmsxS2ZYS21pQ0VDa0tzbXdqMm5oV0xC?=
 =?utf-8?B?MjZZZFMzYmszV3FlbGtHWGVIRVZ3RGJqcFFYekhvRHNWUEJvOFZkaTFlS2d3?=
 =?utf-8?B?VFlPb1ZTQjNuMGpYTDZSaHVYckxmRjNBOUpDakVQNFdxMlEySVJ6c0NVQU9r?=
 =?utf-8?B?STE0MXJRL1FLOU1tUDVoOE9INzJ1cGJ0RTg2NGZSU3NJR0dGVzkvV09UUTk3?=
 =?utf-8?B?dVNmRUkreDBKYzBsZ0FyVGR2L1lCMno4M1ViSFp6ZU80b3lMMS9sTUtBeHNJ?=
 =?utf-8?B?NjhKcVF1bFNQb0ZMSXZMWlV2VllUVFFudU9jSE1SWDQ2U1pZakR5cmxMdFhY?=
 =?utf-8?B?QVpNOHVkbVNtaFVYZE1LOG1IckxQKzdJblRVNXBva280Wk1ZNmRzQmxPMktU?=
 =?utf-8?B?NnZJSUdMNUE2WW1lbGFiOGs3Sm1SSTdaL21lZTlGWHoxaHlhakdMdVhDZWg2?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: N3jqvq4L1d1/G9Zz3YW3mQwP4rAMCjEP6JvVJDRiy/ULnrEhaoQqZx9+qkLP9gzIityH2wwxViJVAyONK9BflLHMnqIIffVOX3iA4Hs/A/nxaqEfh38/DDFw83z3Mz36yhDNj/ibAB58oQHMh4Rxw5/GgSTF6el/75A7isAMrHzqKxycFZpszg/ZWBNVUBI+P7qKwKmKF6ewF76M0LCjuyZLsiQwHEjbEfb/17IDYgs5rulhAtJNUJfKdMIYFWXkbtnpwIghf32rAje/DoG/1y8rqIxA221xKPf1S2EKvy1D8NyD0RULxhqr1TWpfgYMeXtyxzXJLmX5Je7/6r2An50Z8MC4dlU64S6lbHFtpMuRsw0KW4nKC+owh++ZgIe4KLi+9LuTKFPJgr1r64iVrgqPo4KX+0n8BwMsvKWBGxcnHlgiF9nfV+ROltoJCnYrJkuiKlzMnad0vH6TgO5KaEw2oy96Ub7mvftIfjYlqpiU/8TJIMJf7so2nzatNvVL10vb5PHcZE3c4NiB3AfelCwjybxjrDo9GkjniArqKVT7uUApStxTU2hkhUQf+6RFj/zKlDvAJ1Tr4jA2dbG/o0dEsidVYbqyrfRm/JWO6OY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee9c50a6-5538-441d-2473-08dc7f35108c
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 16:41:46.9239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c5xqgAgMzKoxLWviSDMDLZJfGu6DNLQX0Mq7vIXNTo9rVE+IB/pmgp8N2TBo++/shHZltdLWFfAjui9Tby33VyvghVxKoHnglp+76ug2S5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4400
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-28_12,2024-05-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 adultscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405280124
X-Proofpoint-ORIG-GUID: DeQHGAPZH0Z2uwkj7nCX71_ROuSObicH
X-Proofpoint-GUID: DeQHGAPZH0Z2uwkj7nCX71_ROuSObicH
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/28/24 5:37AM, lei lu wrote: > Add a check to make sure
 jfs_ea don't stray beyond valid memory region. I don't like the long stack
 trace in the patch description. I'd rather have a description of the problem.
 I think the problem is that we are not checking the the entire ea is within
 the size of the ea [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sBztj-0007A0-G1
Subject: Re: [Jfs-discussion] [PATCH] jfs: don't walk off the end of ealist
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/28/24 5:37AM, lei lu wrote:
> Add a check to make sure jfs_ea don't stray beyond valid memory region.

I don't like the long stack trace in the patch description. I'd rather 
have a description of the problem. I think the problem is that we are 
not checking the the entire ea is within the size of the ealist.

> 
> [  312.583899] BUG: KASAN: slab-use-after-free in __jfs_getxattr+0x2c0/0x2f0
> [  312.584009] Read of size 1 at addr ffff888108af0000 by task getfattr/230
> [  312.584009]
> [  312.584009] CPU: 0 PID: 230 Comm: getfattr Not tainted 6.8.2 #10
> [  312.584009] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
> [  312.584009] Call Trace:
> [  312.584009]  <TASK>
> [  312.584009]  dump_stack_lvl+0x50/0x70
> [  312.584009]  print_report+0xcc/0x620
> [  312.584009]  ? __virt_addr_valid+0xcb/0x320
> [  312.584009]  ? __jfs_getxattr+0x2c0/0x2f0
> [  312.584009]  kasan_report+0xb0/0xe0
> [  312.584009]  ? __jfs_getxattr+0x2c0/0x2f0
> [  312.584009]  __jfs_getxattr+0x2c0/0x2f0
> [  312.584009]  ? __do_sys_newlstat+0x82/0x100
> [  312.584009]  ? __pfx___jfs_getxattr+0x10/0x10
> [  312.584009]  ? vfs_statx+0x113/0x490
> [  312.584009]  ? vfs_fstatat+0x77/0xf0
> [  312.584009]  ? __do_sys_newlstat+0x82/0x100
> [  312.584009]  ? entry_SYSCALL_64_after_hwframe+0x6f/0x77
> [  312.584009]  jfs_xattr_get+0x3d/0x50
> [  312.584009]  ? __pfx_jfs_xattr_get+0x10/0x10
> [  312.584009]  __vfs_getxattr+0x111/0x180
> [  312.584009]  ? __pfx___vfs_getxattr+0x10/0x10
> [  312.584009]  ? kmalloc_trace+0xe4/0x280
> [  312.584009]  ? lockref_get+0xe6/0x1b0
> [  312.584009]  inode_doinit_use_xattr+0xb5/0x3c0
> [  312.584009]  inode_doinit_with_dentry+0x4e4/0xfa0
> [  312.584009]  ? __pfx_mempool_free_slab+0x10/0x10
> [  312.584009]  ? __pfx_inode_doinit_with_dentry+0x10/0x10
> [  312.584009]  selinux_d_instantiate+0x27/0x30
> [  312.584009]  security_d_instantiate+0x5a/0xd0
> [  312.584009]  d_splice_alias+0x81/0xc40
> [  312.584009]  ? unlock_new_inode+0x89/0xc0
> [  312.584009]  jfs_lookup+0x15b/0x1b0
> [  312.584009]  ? __pfx_jfs_lookup+0x10/0x10
> [  312.584009]  ? d_alloc+0x179/0x1e0
> [  312.584009]  ? d_alloc_parallel+0x472/0x9b0
> [  312.584009]  ? __pfx_selinux_inode_permission+0x10/0x10
> [  312.584009]  ? __pfx_d_alloc_parallel+0x10/0x10
> [  312.584009]  ? _raw_spin_lock+0x80/0xe0
> [  312.584009]  ? lockref_get_not_dead+0xfe/0x1f0
> [  312.584009]  ? __pfx_lockref_get_not_dead+0x10/0x10
> [  312.584009]  ? __pfx_make_vfsuid+0x10/0x10
> [  312.584009]  __lookup_slow+0x194/0x380
> [  312.584009]  ? __pfx___lookup_slow+0x10/0x10
> [  312.584009]  walk_component+0x2ef/0x520
> [  312.584009]  path_lookupat+0x147/0x6f0
> [  312.584009]  ? kmem_cache_alloc+0xde/0x250
> [  312.584009]  filename_lookup+0x1c7/0x550
> [  312.584009]  ? kasan_save_stack+0x24/0x50
> [  312.584009]  ? kasan_save_track+0x14/0x30
> [  312.584009]  ? __pfx_filename_lookup+0x10/0x10
> [  312.584009]  ? irq_exit_rcu+0x7e/0xb0
> [  312.584009]  ? sysvec_apic_timer_interrupt+0x39/0x80
> [  312.584009]  ? asm_sysvec_apic_timer_interrupt+0x1a/0x20
> [  312.584009]  ? __pfx_read_hpet+0x10/0x10
> [  312.584009]  ? update_load_avg+0x124/0x1fd0
> [  312.584009]  ? hrtimer_active+0x187/0x200
> [  312.584009]  ? run_posix_cpu_timers+0xa1/0x640
> [  312.584009]  vfs_statx+0x113/0x490
> [  312.584009]  ? __pfx_vfs_statx+0x10/0x10
> [  312.584009]  ? getname_flags.part.0+0x1c2/0x4c0
> [  312.584009]  vfs_fstatat+0x77/0xf0
> [  312.584009]  __do_sys_newlstat+0x82/0x100
> [  312.584009]  ? __pfx___do_sys_newlstat+0x10/0x10
> [  312.584009]  ? __do_sys_prlimit64+0x24b/0x660
> [  312.584009]  ? __pfx___do_sys_prlimit64+0x10/0x10
> [  312.584009]  ? tick_program_event+0x7b/0x100
> [  312.584009]  ? hrtimer_interrupt+0x512/0x6e0
> [  312.584009]  ? __do_softirq+0x18a/0x575
> [  312.584009]  ? fpregs_assert_state_consistent+0x7a/0xc0
> [  312.584009]  do_syscall_64+0xb3/0x1b0
> [  312.584009]  entry_SYSCALL_64_after_hwframe+0x6f/0x77
> [  312.584009] RIP: 0033:0x7f7f522e69c6
> [  312.584009] Code: 34 0e 00 64 c7 00 16 00 00 00 b8 ff ff ff ff c3 0f 1f 40 00 41 89 f8 48 89 f7 48 89 d6 41 83 f8 01 77 29 b8 06 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 02 c3 90 48 8b 2
> [  312.584009] RSP: 002b:00007fff8c0762c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000006
> [  312.584009] RAX: ffffffffffffffda RBX: 0000000000000008 RCX: 00007f7f522e69c6
> [  312.584009] RDX: 00007fff8c076320 RSI: 00007fff8c076320 RDI: 00007fff8c076410
> [  312.584009] RBP: 00007fff8c076410 R08: 0000000000000001 R09: 00007f7f523cabe0
> [  312.584009] R10: 00007fff8c076400 R11: 0000000000000246 R12: 00007fff8c076320
> [  312.584009] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000108
> 
> Signed-off-by: lei lu <llfamsec@gmail.com>
> ---
>   fs/jfs/xattr.c | 23 +++++++++++++++++++----
>   1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 0fb7afac298e..13b23fa28dc8 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -795,7 +795,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   		       size_t buf_size)
>   {
>   	struct jfs_ea_list *ealist;
> -	struct jfs_ea *ea;
> +	struct jfs_ea *ea, *ea_end;
>   	struct ea_buffer ea_buf;
>   	int xattr_size;
>   	ssize_t size;
> @@ -815,9 +815,16 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   		goto not_found;
>   
>   	ealist = (struct jfs_ea_list *) ea_buf.xattr;
> +	ea_end = END_EALIST(ealist);

Maybe call this ealist_end.

>   
>   	/* Find the named attribute */
> -	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea))
> +	for (ea = FIRST_EA(ealist); ea < ea_end; ea = NEXT_EA(ea)) {
> +		if (unlikely(ea + 1 > ea_end) ||

Won't the above always be true, since we exit the loop when ea is not 
less than ea_end?

> +		    unlikely(NEXT_EA(ea) > ea_end)) {

If the structure is correct, I believe NEXT_EA() of the last ea should 
be exactly ea_end, so this test makes sense, but it not exactly clear 
why. Maybe a comment would help.

> +			size = -EUCLEAN;
> +			goto release;
> +		}
> +
>   		if ((namelen == ea->namelen) &&
>   		    memcmp(name, ea->name, namelen) == 0) {
>   			/* Found it */
> @@ -832,6 +839,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   			memcpy(data, value, size);
>   			goto release;
>   		}
> +	}
>         not_found:
>   	size = -ENODATA;
>         release:
> @@ -859,7 +867,7 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)

The above comments apply to the code below as well.

>   	ssize_t size = 0;
>   	int xattr_size;
>   	struct jfs_ea_list *ealist;
> -	struct jfs_ea *ea;
> +	struct jfs_ea *ea, *ea_end;
>   	struct ea_buffer ea_buf;
>   
>   	down_read(&JFS_IP(inode)->xattr_sem);
> @@ -874,9 +882,16 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
>   		goto release;
>   
>   	ealist = (struct jfs_ea_list *) ea_buf.xattr;
> +	ea_end = END_EALIST(ealist);
>   
>   	/* compute required size of list */
> -	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea)) {
> +	for (ea = FIRST_EA(ealist); ea < ea_end; ea = NEXT_EA(ea)) {
> +		if (unlikely(ea + 1 > ea_end) ||
> +		    unlikely(NEXT_EA(ea) > ea_end)) {
> +			size = -EUCLEAN;
> +			goto release;
> +		}
> +
>   		if (can_list(ea))
>   			size += name_size(ea) + 1;
>   	}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
