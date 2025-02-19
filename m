Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C5A3C438
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 16:56:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkmPk-0005yW-3a;
	Wed, 19 Feb 2025 15:55:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tkmPi-0005yP-Lk
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 15:55:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HnUs7XoW1gmQyofGc3deWJavJuHihHwEOf86Ft9FcUw=; b=co2/YoxsbewjLUqmxZnRknkgpd
 h5OM7jjgEjQ1y2normkXpCaAZPTY0wszA3Kyd1pbeWemNcb1XUXWz2SFTp78VgFmN+8abvUeC/GXv
 Xns12ZgO3sLI//ewpdy2K4pjkaYf0VCzbnWAiEtQ7dHkXfUueyoj3ORF57JBGxr9Or/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HnUs7XoW1gmQyofGc3deWJavJuHihHwEOf86Ft9FcUw=; b=Fnk4ggYgGDVkD6UQTzw5RiQv+4
 qHp2eM4nZtXiIGs3wwkDWe9XKLk6DG0sRRokjUQBamcEUXbmLgmW144JhutG61SSYZNRblEYTuwpK
 EjMmiblJZ8hTTU3I55aCD4V2r0nW3X6tw/9+kX7R0RIzEJPEytjOmEPAPiLI2/mXorF0=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkmPh-0006BW-MG for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 15:55:06 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JEBc7n022285;
 Wed, 19 Feb 2025 15:54:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=HnUs7XoW1gmQyofGc3deWJavJuHihHwEOf86Ft9FcUw=; b=
 fS/+8uBh4dJkFfjBR+nkxPbsNcXAQpS9Ph65ZerwmUOrLQ/QmfaYHA8s2iDPwt67
 q9VpdGJTNQWuvxFadq+tzVux/Ouu5I9RBcOuuVRX58avLeCWI9vjr55jhrF7ROBh
 ZXHo52MFwV9HTred1SNVAlQgdgZWrdzjuFJiFqdnLqW5q1FkoiDsB8fo6RUDvDqT
 psbViazrCLd2YEEREqUEaIl2F2QMEagmiA+WAGs0aeNvpSeY1YooLyhQ0lPSUzax
 hph6A8WH8eZrsQ5KPzCbRNmK2prPfw+N7LDbKlmvCZBNifNG7Mdotsb7DB5rXQEL
 14S6o3ejuAeIEZLfyxNhLw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00n1y5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 15:54:54 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51JFn7WC026469; Wed, 19 Feb 2025 15:54:53 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2172.outbound.protection.outlook.com [104.47.58.172])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 44w0sp5115-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 15:54:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sLYPaR3eIZdXeCfq2gPxoske6de89Gz/9N0TMJTutvUkn2rYoeFH4JRAyPXwWD04pOJt0WaMU2qbYS2Kt9FXZc7rEqZzCaSy6MImkxJbLhDGDF163CDnpO9MQgTXadJZiveqfwNBLVKLpPPtcsxO4XMP8z1U9rekQzCLQTrQ+irc51Kv4fTMirkI4wWbm/om6Iwuc1jPT/WM2ryZtXHsTV1rdI5MeTWOTQOLaTNgwJNSzHGmveOg85AoU8Tum0mckpWY7+aLBs58ASKDgCf3vzHmiSfLIStCUr/NkanzCmNrcNQ8bwKNO1j1Pnz83+ejbGSiIF679ANPHYwO3hmQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HnUs7XoW1gmQyofGc3deWJavJuHihHwEOf86Ft9FcUw=;
 b=sjiTeoyT+MiqvuBH++OWwFVcItDZ5Ng6vhM3znI4MALx1SGpbLEDLzep0I4GBBqJ3J1Sv3G4UaFf4q8EXQm+Q6uotbny3xLjKuDZQDBHHdRbMCQPDKu3OtOftOAruprqamLhy5TmOB0pWhB41jYOdzDGKUmpztnKZ8wHlCYhH/5VK+BtFhbBl4kurZH61Rd8l/wm7cgtr7ppCDM0zgaIH+0ZXYbheymKSDqYZLvDz3TvTssGDSf6ZS19kyljARznRQ6eC79bFSpssjEueTmc301G34RkvgaciMm+Rf0doyzPeW+0VK0zeI7m3S5Cxwg9mIs6sfHOEofFIcUttItWgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnUs7XoW1gmQyofGc3deWJavJuHihHwEOf86Ft9FcUw=;
 b=iyTKSfJPSSKDSbXkrFR9q2DJU3peWGpqg2l3YR4gwwmsZep28wWisN2Rgp8OudV8HQFYdjQNPDjZEHl3zmtyfcakrogjJA+gmI5CNS4tOLgQ6ymqu9sRboL4b+XTId2ZYcdpNKqLmL1Q+g+/n5yqcB/A+GadSA+qGQF9JLElHNI=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by LV8PR10MB7775.namprd10.prod.outlook.com (2603:10b6:408:1ed::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 15:54:51 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Wed, 19 Feb 2025
 15:54:51 +0000
Message-ID: <5f0273a8-1c75-4851-915e-da00f981e84a@oracle.com>
Date: Wed, 19 Feb 2025 09:54:49 -0600
User-Agent: Mozilla Thunderbird
To: Lizhi Xu <lizhi.xu@windriver.com>,
 syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com
References: <6748fb32.050a0220.253251.0098.GAE@google.com>
 <20241129111629.91992-1-lizhi.xu@windriver.com>
Content-Language: en-US
In-Reply-To: <20241129111629.91992-1-lizhi.xu@windriver.com>
X-ClientProxiedBy: CH5PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:610:1f1::8) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|LV8PR10MB7775:EE_
X-MS-Office365-Filtering-Correlation-Id: a8502cf1-c5a9-495a-13d8-08dd50fdbec9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWg3U0labTRhbTdPZmh3cmRmNlBZZnlIRkxzeDZqcWI4MEtWeVNDeE9RY2Ra?=
 =?utf-8?B?dkMwYTFHUkpmaldRM2NSOUpJKy9WeFppaGVZK2Zkb1lMWjRWNmEreUIrVXJR?=
 =?utf-8?B?T0FyVjNmSCtYcEg4K3Mzdjd3VVBnK3djdWEzTkN0dVpoajg5WmlWTkxwUzcx?=
 =?utf-8?B?eCs1ZGExQkdxV053bm1iRDZCVmdzSS82c1pMTDF0Q2xtMDNSeHg5dGpML2RJ?=
 =?utf-8?B?N0lGTzg0ZU9FcktBU05tYlo1NC9WSUl2QjQ2dlV4RTNkZFRWcGs1ZXl3allG?=
 =?utf-8?B?WXByc2ZLeVR2Yk1GQ2wwSUhRei8veFBmRkNvZnEwNVNIVWNFWDk0d0pwd2hj?=
 =?utf-8?B?bkpOak9hM2N2MFlHODUvQVhMdW1PbDgwMVNEOHdvamFQRjF2RTFOOVNhclpZ?=
 =?utf-8?B?Z29INytCbWpyd1JlaFcwY2ppYUpXS1IxeVloTlB5NktmdjdSSW15d2FJTEpw?=
 =?utf-8?B?b1VrcTRXWE9uQlR4Zk8zWTY3dVFqSncyMExOZVh6TkVDVUVvM0VjQUkvWFlJ?=
 =?utf-8?B?RHF5Mm9Hd0JXY0RGb0hLbWtsYUNwVHozQlp1L1VmRmZxeHFCd09QNUdsWE15?=
 =?utf-8?B?bTRyelltZHNyM2x3b25zWUZKWFd3bjgwV3hmQmdLc1dTOHFtbjAzbUI4Q2pl?=
 =?utf-8?B?OTRWUmt4Qjh3K3AydnRNeHZ6VTJ3S2dnMzYrcnNaM0tjVlRiWDh4STRybkVw?=
 =?utf-8?B?MW5DVXdYNERscmZueUEzMVZDSlZubjBON0JlamkxSjY0UFRQYUJUbDQrU2tC?=
 =?utf-8?B?enZzTVlmTXB3cWJPWWhUVXVLVk9hdTZjMkZxYUJKVDM5WEk0dEJYbVRaNHNp?=
 =?utf-8?B?YWlEWG9zR09uZ21INEtKSG9waUJ3TE5LTWk2TGN6dkgxRGhUeW9BaHNSOFNm?=
 =?utf-8?B?WUwxUWtqNHhMUkJtSktZRUUyR1IwWjFvZVpvZ3RRRFFYZENGZHU2TUV2U1Bp?=
 =?utf-8?B?UDI4OGRsYjRhUEdodUtETTlGaENsbnJnUFdwOUU2U2Jtb0lKUjJNR2NIeTBW?=
 =?utf-8?B?Q1J0Q2U3VHIzUnFVU3NJSVZMSXFYWjlBTFB4Wkp1eFBBdDVyditRemJ6THNF?=
 =?utf-8?B?MUxkaVAxZUJWR29sczBhazA2d2o2QlVudkNGeEdpRU1lNnZjOEY3Rzl5SzNo?=
 =?utf-8?B?RzhMSWd5bjhmUEpJWHZBVjJ4bTlQMlptaU9YQnQ2T3gwRWxQTFo2d0RJL3NN?=
 =?utf-8?B?czEyRlRRamhJb3pFWHpZV2xtTnpPcVZ1L1o1QkNVUjFoMWJkR0RWQVpDdkVZ?=
 =?utf-8?B?RisySWhIdXhmM1hzMVdrNCtmT0JJL3JvdE81QU9hMStCeUtldldKd2xDZGdt?=
 =?utf-8?B?ZjNwUjBjMHdadU1hOExoN0dQYkhRMVBRSlNtY3Zyd3B6b2lUQkM4NnVXUml1?=
 =?utf-8?B?dVlIVnhBT1N1RmV1cWRycE1lRkp1U2wxd0RJOTFlSUlLanlIYm1talk1V1Vn?=
 =?utf-8?B?dUY0TVEzekpvMnF2TTNIT2ZNbzVWU3hZeTIrVVVqSnRiNzRqQml2K2p5ZnZF?=
 =?utf-8?B?cHNjOEg1QmVnc3BmZWtkMVYzSVFDQmNsdzQ1RVJieGJDbzJOY3d5bFNHMXBk?=
 =?utf-8?B?Vm1obkUwYjlaZ29BQytKa3hUQWJKNW9wdUpKckU1UytiS2VEUmcwUGJSMERJ?=
 =?utf-8?B?MUUyLzFBRGZXWUQ1dDNCUk83Tk1adVFjdlQzMnlpbWJOZXQxVWlFS2xraU9E?=
 =?utf-8?B?VHROY1ZaTnJWUGRWNGl6ZWVKbUZrS2cxSmtYcW9sY1VaSGRoY2IzTjVEdFFr?=
 =?utf-8?Q?CaTxdTX/rw8Jaj0CA4FYokpvyW4raZjBMxlLFas?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFkwS05yWmY4NUZINTVQRU9jYVZBT0NtSm9jSFpBdWhsVU8xQkx2ZndKZUhI?=
 =?utf-8?B?a0NKcjRZMElBdnUvYmJlYjlGeFBLYklVL1VCZmxzSnJYYXhKK3RTSXJVL1pT?=
 =?utf-8?B?YUFITUtlTVBhVEZBb1VObVNzNWN2cHJmNUZKTlZSSTlGclBqRW5WQndCZmhW?=
 =?utf-8?B?QWh0QTRMRktEdWkrZE1pUVhNdG8vK1BUa0JHU3hFN0kwMU5lRWRibXZKTXdG?=
 =?utf-8?B?a1JRTUZhL0h4K0VYUTBsUEhqV282L2ZkVjhNWkRvQ2RtOWNXdGpEejFvek1V?=
 =?utf-8?B?L1FITFhVNE54ekI5TC95Yk5QTDN4K29DUHI4dFJUa0daWkZDMEdObHFDY25Q?=
 =?utf-8?B?aXlyL0pYeTVTQ0NZdUJIa1RqNmR3QkVTTnRkQkd4dFcvakVuU2VNTG02Situ?=
 =?utf-8?B?RHdDNnIrZUVlMjBKNzNvYnFnZlhyNDMxc004bElqZEpwUklOUTR5ZmdRYStx?=
 =?utf-8?B?elpXQU1tZ3htckRJWEVaejJJMUJFTENYR3Q1dHFoV1krTFpHRjAzTTZZdG9J?=
 =?utf-8?B?WWhFNU5OZ1B2UTVwQXhCb3IwK1V6UW42NTRzTVE1b0t1Z3JQbGlyOVRKV3lr?=
 =?utf-8?B?ajg5N04rWjlQeW5YTHdGMzg2UTBLWGs1Zi9wVEZxcFV3NzA0elFNK1p5Qlkz?=
 =?utf-8?B?Z0ZQaWZhUjVvc096YzRab2UyWi9xYTl4OEgzRlNlZ21EVy9sOUlldnJ2L1BB?=
 =?utf-8?B?Z1U3OWhlOXRBK0tOVXZyZy9MKy9oTDhqSVBLK3BhenFwWllCMGhPdWNoZXYy?=
 =?utf-8?B?T3NqUXEwSDZPWEo5UG15SDg0R3ZDczVyUE1MZFFUc1ViUWdpd0E0cE0yOW5S?=
 =?utf-8?B?cUdGUEx6ZFRoeDZ1VkhFb2JVb2liOXFYd2kzNUhWSWtDS2xVL1lsa0J4UnV1?=
 =?utf-8?B?RUZaTm5rNzA0bFhOdEhGK1d0UEFYMS90MFdXamlzWVp4WlUvUjkzbTdUMHVy?=
 =?utf-8?B?R04rZ21zQTNHUXZZaVluS2N2RC9LSzY1TXlVbDBFdldUTWRhY3hVa3FYS2hF?=
 =?utf-8?B?VS83TFRPb0MzTWFBNU5tNVY1ZFJzMnVVSkpJMUdzYkNxMUQvbkRmcWxoK3N6?=
 =?utf-8?B?MDZ1U1FISlg5OXZsVHJJTFJralo1MjlxNGtCVGJNelV0aHloeUx1aCtJdW9D?=
 =?utf-8?B?bVZ5dkdvWm5KMTVMRmVvUTlCUWdTQVJUazJaQ1JUMXY2MEM2MkxGeEhNVEow?=
 =?utf-8?B?ZTFZVEc5THEvaDZRYlA5S3pzU21BT2RwQ1FyVzB4OTJWZzNtOVB0c2p0am1l?=
 =?utf-8?B?d1EwMUgrK09uMVBlSVVvR0gxOFIzT1RrOGxjUWt1TTFoRjlpbjhVMzhMWFdN?=
 =?utf-8?B?ZlNlOGxxeWtDdTkvOTBVVkZtallFK0RJUysrQW5MTVVyUVV3ZHhzbFBLTjdo?=
 =?utf-8?B?NHJsdFBsSUdBY2l4K25qTEQ1SWFGRU15cTVPY1F4R0J3NUdXdm85S0ZoMEox?=
 =?utf-8?B?TjRaeHIvaFN5THNJaHdHckxOOVQ1SXE2Z1gxQ3R6OUN3VzNHKzFmb3BrOWRv?=
 =?utf-8?B?UjBSNmxScTFDSVBoZVQ0ZDdwOUlYRnNCdUxsd0ttbC9GT0VXdld3TXR2cm1Y?=
 =?utf-8?B?emdPSGNHaXNRV0VSM2g2dVhNd0tvRDhySTNvKytZV3BOc1QvMmJqbjMrTDZI?=
 =?utf-8?B?YTIwQkxzM0pVUHhDbXRxV1FyREZYZkllcGlXUVRZd2xrVElCem1WSzZyajZn?=
 =?utf-8?B?bGpESU93TTl6ZGVjQXp1ajNQaTZLQW1lVHkrSU04TDFWVW0wQ2RneXlLSy9N?=
 =?utf-8?B?cVUrK0Rnd1ZRWjlTS01pNFJmTG9tOXN4UCt0WnlpZ2xwUFVsbzZWU0gzMlZZ?=
 =?utf-8?B?ZGlNU2g3b2tkcFRoTTNYTC9aYW9lQlpqQjhrL1FtVGI3WWNCWEhXQzI5ck00?=
 =?utf-8?B?aEVRakZtWnN5S2hZakZ5NFIwR1lKODRhR1NTdEszbjJXR215S29YZGlRMGh4?=
 =?utf-8?B?YmkveUVMSklCYTF5aWs5Z1l4a0lKNi9vNkFKSkpJdnlGaUhWcjBtYVVmMm5P?=
 =?utf-8?B?YkFvUDRlNWZnanFKdmJCaFR6UG5HTUFDOGNqY2FYK3pzaW9LV0xNMlF6TVlO?=
 =?utf-8?B?a3BVSEJJRVpRQm43YXFUTHI0eWNlQmpyVHhST3hobk9JS0lRYzFCQkw2eWJB?=
 =?utf-8?B?N2ExSk5YMGlCSFZ0YUlGUytWdFRVdWdscnRqRVN3YUJuRkNzL09CeVlidmp4?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: KKvmSH93rQbsaNfPACdfA/7kQlugusqedYl+m6gGo9fs05/ulkDnuR9fD6d5MV2M/hE6d5L5kP4f+s283zhTpppr9LdNUb3V+kjYk39u9ZUeUQ+FSNVtIgwHhYcDWb+i7o7HBRAouEdFWqqEUmJ7wSJg5UDApLJiUuY5zTONcuVVxU51ZBdYc1RYbaFEKGecAHvgnG37zIpZi/hJq1f9U7YQ1qmt8jquNnQ2bGtcL5Pd5NKpCFM/5pqgCev2Y0mVq41Cq+M4uln9z1tuHMA7QWEg65xkQj0onx7dD4DUKK5najn1R7Y4O7w4HPqkkr0yT5bVEbDweA3xJK9HTIGCxfm1r3iqmarxu/rJCZ0Nc0oL+zBUbF6MO+XQqLsNmiwB1DlN9TikO8OHRFn4FPzUVFF5OGJntktFLlypK23IegQ+w3FVhHHNqCfyb01F2skMOul4PYTX/BCWkkAO9fXFaVZMjbFMF0pqh+Er1BNhx2PsgA3bstpiS3kG46ZlW8hKLVnbw67U+hnwJWFPJqP6Qf0JGREROMcRS0xzPkPBm/Oqi4wfx2Bph97DhsPLTbRYzpo3+yJdiHbSLcxGmYC4ZiMu9I4GnLwKmpxHnabHCUM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8502cf1-c5a9-495a-13d8-08dd50fdbec9
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 15:54:51.7102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OpOWFyhcVsr80Qa7ES4B6Qt3LafuP/uhdLDJokm2loymoVpZBQFj/eTqNsZjZ/SSgCku5vmmrvoWN0lNMzP5bQbKT7KdPA1jHhoWygRmTNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7775
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_06,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2502190123
X-Proofpoint-ORIG-GUID: KLzyJjJbCi0zbTgZBAnoyfHgPv41aaMg
X-Proofpoint-GUID: KLzyJjJbCi0zbTgZBAnoyfHgPv41aaMg
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I'm catching up on some long-ignored emails and have some
 concerns about this patch. On 11/29/24 5:16AM, Lizhi Xu via Jfs-discussion
 wrote: > syzbot report a array-index-out-of-bounds in dtSplitRoot. [1] >
 > The second index value of the parent inode of the symbolic link is
 4294967168 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tkmPh-0006BW-MG
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix a oob in dtSplitRoot
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I'm catching up on some long-ignored emails and have some concerns about 
this patch.

On 11/29/24 5:16AM, Lizhi Xu via Jfs-discussion wrote:
> syzbot report a array-index-out-of-bounds in dtSplitRoot. [1]
> 
> The second index value of the parent inode of the symbolic link is 4294967168.
> When it is assigned to the stbl of type s8, an overflow value of -128 occurs,
> which triggers oob.

I don't quite understand where this assignment is. Where is the stbl 
being assigned 4294967168?

> 
> To avoid this issue, add a check for the index of the slot before using it.

This check simply ignores the problem. There is no report and no error 
returned. Ideally, this should result in an error and/or the filesystem 
being marked dirty.

> 
> [1]
> UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1997:37
> index -128 is out of range for type 'struct dtslot[128]'
> CPU: 1 UID: 0 PID: 5842 Comm: syz-executor268 Not tainted 6.12.0-syzkaller-09073-g9f16d5e6f220 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:94 [inline]
>   dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>   ubsan_epilogue lib/ubsan.c:231 [inline]
>   __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
>   dtSplitRoot+0xc9c/0x1930 fs/jfs/jfs_dtree.c:1997
>   dtSplitUp fs/jfs/jfs_dtree.c:992 [inline]
>   dtInsert+0x12cd/0x6c10 fs/jfs/jfs_dtree.c:870
>   jfs_symlink+0x827/0x10f0 fs/jfs/namei.c:1020
>   vfs_symlink+0x137/0x2e0 fs/namei.c:4669
>   do_symlinkat+0x222/0x3a0 fs/namei.c:4695
>   __do_sys_symlink fs/namei.c:4716 [inline]
>   __se_sys_symlink fs/namei.c:4714 [inline]
>   __x64_sys_symlink+0x7a/0x90 fs/namei.c:4714
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> Reported-and-tested-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=99491d74a9931659cf48
> Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>
> ---
>   fs/jfs/jfs_dtree.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 8f85177f284b..71463ad751c2 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -1994,6 +1994,9 @@ static int dtSplitRoot(tid_t tid,
>   
>   		stbl = DT_GETSTBL(rp);
>   		for (n = 0; n < rp->header.nextindex; n++) {
> +			if (stbl[n] >= ARRAY_SIZE(rp->slot))
> +				continue;
> +
>   			ldtentry = (struct ldtentry *) & rp->slot[stbl[n]];
>   			modify_index(tid, ip, le32_to_cpu(ldtentry->index),
>   				     rbn, n, &mp, &lblock);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
