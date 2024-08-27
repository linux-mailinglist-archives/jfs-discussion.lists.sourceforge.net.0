Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E56499613E9
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Aug 2024 18:24:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1siyyt-0006vi-UZ;
	Tue, 27 Aug 2024 16:23:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1siyyr-0006vb-O2
 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Aug 2024 16:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6vjkeEQPsv+1/MBSJOvF+CtM3967Z/tuwsIZAUGP7XQ=; b=hwfCChtNdFlAWmjPj5czcQj/nC
 mltnensGadsjOalrKzc0AYtl0MMKiVUCT7M9qfMI7x/pyxzwKiVn8kG8W2oaLXqf6d3YY4rm+eLTM
 47Q2ib8wNdX0x3RMflN/IY0PrGuPq6kT1bHK10AwJHyEBgjESDEX0LxTLnHC4ADeBVyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6vjkeEQPsv+1/MBSJOvF+CtM3967Z/tuwsIZAUGP7XQ=; b=LT2ryYOkYH+xAZNM7NRH4YOlrq
 niJDsFge7kKtw2tazED7JUmAqng79bMVaZzmwxdSoOOxWZ7gHXxSzJ01C+6ZJ1/iq0HdwCVQNnxqN
 5utRYNnsQJeZ/WLSJCdYFnj0gzZa6KzsZ1JL+NlJCDedjO+AoJa5jhH6qr2CHP4K4tYg=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1siyyr-0004Of-Cf for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Aug 2024 16:23:42 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47RGMVtr008702;
 Tue, 27 Aug 2024 16:23:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=6vjkeEQPsv+1/MBSJOvF+CtM3967Z/tuwsIZAUGP7XQ=; b=
 atIiCLJHSb7hqTspziMpHiaO+zzn27DbI3XJjgme31FmtvmXwd3GPw7hq+2zgOBM
 OkVI+iyWqJyofq3Ztbnb6FuI6pBTmmOabfHlEmvk+QANE12gyyWQP2NEiWtffHYl
 QnL7oZiCQXsSVvNrhHOs6kgY7531OHFT0tHKHzZrQciqSOotZew2UEao8f+jBYsP
 +dZQ3BeKDzvlYvxa+MJ9oxUNqvUPggMXcfBRPc2HSOnLT/4nxe1A8O4kwaK+RAS6
 9fNl58sVrHmas0nPlPFlmUgG19PF4QG7ksdbxOjcnvgBgrjajG/54EreJffPOjgB
 eYjl46cVX6cLJ3h0oHudag==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4177n461sd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2024 16:23:30 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 47RGH78X034683; Tue, 27 Aug 2024 16:23:29 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4189st9g41-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2024 16:23:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EWlMT9DxtwwAS4jxJfG4vZoRDpjS2bVnHp7w+ZVNc3OStWzqjYsYCcYKd11t09gW9p4LdKzMSEiDjDi5PiT/P1uAx4n33IdW0ZdcNwLUzDapYArTdx1QZSTp4rQfvlGuU0afSok8w+8ZqspZAK0pJM0kAoU3Hl4lP/KnjzYRaL90rcOjrmwVoREyVbJt/pwSggzshdLE3B3y6QL1iXs0TkGPfgekM/x+RYa21S5EmOTHSMEdXQtZCqgTp0FGOdI0+P7VLy84O8UVd4u7+Thwob1P+CXEnPS00ACUXM0O+pKCXFoknP8hvzmGBo50mDi/TQnogWeEjY+PEfLUJ4JSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6vjkeEQPsv+1/MBSJOvF+CtM3967Z/tuwsIZAUGP7XQ=;
 b=ZEKQiKyYMwmZJfDw2Diq7qJPRv3S3COi5HtOKvziQCaX4uZj95UzIE0w6AzkHoOAGgj1KEGUFqeI4wKsuwMYMR3TJaKbnZncvper/tsubnNChI8g4ttpNdOaNVYsrdHPguf64Ls4dBybFFegZ/ma1R9kijMeCU4wKeueQzgVrqlCf1+Lzj2tAR3rgq4jpCptPEsETolaya19LrrwwSEkRh0HsukFFIIXj1ETO2nV/gv/i0yOxFK4TJCCze25L+XTeFWXn4YrKGfsNsglhvQlL5tPOCyLBJ4DwMj5Pr5GEneyvC53M4/LVQFuN7Jz4unb5nUfq9n/fsa1hcuAsfFcLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6vjkeEQPsv+1/MBSJOvF+CtM3967Z/tuwsIZAUGP7XQ=;
 b=uB+AYlDuaQmK1CcuKj5UoL4xQ41IJh/97n874foh4P8IbD4FHQGT2Y9ZyinYOjRGjjJVdOhnGgOn/oZAQWntbeEIrDmk0Bx8YDE6wNVOj7AahcfIqRffrejYFzGWY3pGBEjVaos41Gdc4+qbdWUGgp8OnhwN4RqH7TXIic7Yu+A=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CY8PR10MB7267.namprd10.prod.outlook.com (2603:10b6:930:6c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.17; Tue, 27 Aug
 2024 16:23:15 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%4]) with mapi id 15.20.7918.012; Tue, 27 Aug 2024
 16:23:15 +0000
Message-ID: <d2feb9bf-5c14-4d43-a089-51514d182543@oracle.com>
Date: Tue, 27 Aug 2024 11:23:13 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <386ef374-25f2-4a10-bd15-0913137f1c9f@oracle.com>
 <tencent_21361896E437004A0E753576A367A03C1F09@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_21361896E437004A0E753576A367A03C1F09@qq.com>
X-ClientProxiedBy: CH0PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:610:76::16) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CY8PR10MB7267:EE_
X-MS-Office365-Filtering-Correlation-Id: c0209152-0964-48ec-54c5-08dcc6b48da7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QW9mekJlditHL2tCQTIwZTRScjgrVnRsTTBiemVPMjZmeExaY1YrOGQ4M2hy?=
 =?utf-8?B?L2NuOGVLaGIwNDV5LzMvWTdFUW15NVRHcEdBWlBQWVlrNzRpT3BHMUVhc2xw?=
 =?utf-8?B?bnhUTUZOWnNJVEVtK0ZPODM5WDlneUNzYXVyZm9GUnlPTFZGdEVoVEZDNGIv?=
 =?utf-8?B?S1lEZmJWQ1hrQnM4OWFYQTlyQzkvU1c4dkZQc2lCcWVvQVNrYW5ERTl1a2Vo?=
 =?utf-8?B?aXdhN09tZ21VaHJuSTY4eit4UXJmWWxMZVB1UDVXRTk3REI1L004ajE4ekVJ?=
 =?utf-8?B?Z1ZqS0o3TldBZFdmZGlMR3V0eVZ0RVQ0SHBBUENQdTVaRzc3blNGbkdnZWJq?=
 =?utf-8?B?R2p6TTJVbW1LYy85Z3U2L1ZuVDhneGlpeUhpY25xdi93UGlBYm5kNkRlQ3l3?=
 =?utf-8?B?VVlFVmlSQTNLdmtVNzk2MndzWEgyeHA5V2hkNGZibWV3NDhwQ0RDVkRGUUNT?=
 =?utf-8?B?VWpQdWZCSFBnQWc3WXdzYWtLckU5cWovWmpSQzM2OWNPeDFOMDNWV3BycnJu?=
 =?utf-8?B?UEFJRWtxaVpiSTRRZkVtaU54dG5QS2c1SlRMeXdndjZETXh5Q0hjWWhIbjA4?=
 =?utf-8?B?Y1RwaVZDeHNIM1d4KytkblN0NXU3aWd2dXBidGYycHMyUG9DZFQ1VVM1MHBP?=
 =?utf-8?B?dTNmMkF0R1VUZVRyRHZFanRGQjBYNlRVTS8wbzNTbldxbTJFT3N6ZEU0aEov?=
 =?utf-8?B?SXVZZXhIL0FGTnpFYmtHRzgyR0FnbDZ5NE91dXV1cGtnS3V2TEpxbDIycnZZ?=
 =?utf-8?B?SDNjTkxpaWVDVmZnWnhkbGh2QVRzKzFObG9KZGtueFkxT0NPbkJaK0NTMjVv?=
 =?utf-8?B?K1RheDIxWkt1cnFwMFhxUmNqSjM3a21ON3F2SXNLSkJKbDZEWnVjdEp4cmFm?=
 =?utf-8?B?a3JkcVozRTNBdHBIaXlkaVI1MTljMWRWaGx5NFgwWjNHMStBbmE1T2FmYzdB?=
 =?utf-8?B?bXY4citWZ0swR3dBY01ZOUlIMDRWS0ZOV1dGK2cyMWIrZThkdTkyNnZOTk91?=
 =?utf-8?B?N1p1Z3U5Tm5MRXJ2RTdrUHQzSHZwbWk2dXJza1N1ZEszT0RLR2pEd3ZTV0pL?=
 =?utf-8?B?cENFdEo1N0R5U05nQWJFVFZDdFVQc05YZ1B6NURNUk5VUFBkaWtOY0dwcUZs?=
 =?utf-8?B?b0orU1JyOHhiUXFVZCtuWDRQei9hZVhtd25OOHppSkU4aHp2a3cwSUN6MGl3?=
 =?utf-8?B?cHRMaStOR2NaalRQaTlMOW11VHhvNUEreUtwOGJMWXExM1hoUWVaTStNVElo?=
 =?utf-8?B?aHBlamIxSGFSYnpEalpHK3BpbW5tNmp1S1dGckZYUzYxN3pqeFlIOFdrV3dz?=
 =?utf-8?B?UUJXSmVzK09ERldOOG83cUphQzJReStmWW9yUmVheEl1Q3BUcDAxYWdlSXdm?=
 =?utf-8?B?VUlOeDBKNzNQb3E4ckIvNWxmNkNGSFBUczhRd09zSlE0SXgvcDJpNFM3RTlM?=
 =?utf-8?B?WC9IUG52VEM2NndtRGVNZDlldVRNY2dZSEcwNldRN2h2S1BHYUh5TXNCOHZR?=
 =?utf-8?B?R3VnRjdmR05MaTdzZ21EYWZYdm5Kc1FtZXYzWWk2QzFtTFVqQ050eGdVRFNh?=
 =?utf-8?B?RjdUQVJURmFhejhlV1JzVmFLQ2FCYnhrVzVJdVc2OXd2VW9iZm1FWkRudERy?=
 =?utf-8?B?V2UzSGoxM2JWSkhIcUQ2SVpQT0pFNms1NG4wclIxcFBOYjl1RDYrUktlMzht?=
 =?utf-8?B?dUNUZ1BzRTBzM1djYUxkcEtlTVUyWVBlcGtQVW1GbEw2RExkNWd5b0VJVVpx?=
 =?utf-8?Q?Drdu/HKsf8GQlygn3A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0hCZWd1L2NMalhIbFBFN1d6TDZHcnJnWGRzaG9mWUNQUzB0b2NFTlpEN1BL?=
 =?utf-8?B?QVNUMG1aZDJ6L2NPaEZneExnQUtTRG12SGZ5LzRvclFPOTI0VHJGdjg3Mlps?=
 =?utf-8?B?WTR4Mkt3ZTI0TTgxaUl2Rk45ZWNoQ2U4VTZJRnhjUTRKRzQ2SXZPenFaOHB1?=
 =?utf-8?B?Z2FBeEttbStUblIybWF5WFZUYVpPbWRLOU9yMm1GQmdPUTA1emV1cVNqODVK?=
 =?utf-8?B?S0dYbWdNVUY0Y2gvczRnbk5hSTJjcldieEJYVkVBeklqUUVGZEFlQmZXUzlG?=
 =?utf-8?B?Q1NWbTRQbVFPOTJLd016Tkl2K1hzVEoyRUQvYnJrMFM4R1hCZEZJdkpQczlh?=
 =?utf-8?B?QTU4cUVON1B0dlBvaDBmOU5wZXlieG9vTjRSUGh1dWxOa0l2anhMeS84U2g2?=
 =?utf-8?B?MjQwYWdWWjdWdFJUR2V2azBUYkZlb1E5cDhFMnUrV2d3bENpK0t5M3cxcFdy?=
 =?utf-8?B?aDliQXFrYWFYdDJzK0xXQVd6blBuNnF1dzBqNVVlK0xGS2Vsdmx6WHNPQ3BZ?=
 =?utf-8?B?MEE5WlpoZHdZSHh3dEJjdGN3eUJ2YXFiK1JaM0dsVmpVMldmdVViZmxQcjJp?=
 =?utf-8?B?UmhJS2xCaVIwY0syZUlTTS9LRURlcWZmU25NaUxYamVZRUJwQ3FkTGtnTDc3?=
 =?utf-8?B?Wnp1aXlwdUY1QzdZSnd2U3Nhb05Nb2NxL0tIbitLWjRXU2VneGVUOElHYkdO?=
 =?utf-8?B?Y1hUbUtpVUV3amlkVWlmWWVWMWhZZHp1djBuWmZ3ZnJWS3paeGJQZ3hjbzBN?=
 =?utf-8?B?Sm9oQXhFQ2ZqZVdsWDAxV0MvQkdUV0w0K2R1Q0Y1ajF2cm5KUVMzeWVMdGJL?=
 =?utf-8?B?UDRCZHpJeDNCak8vcTFEMDJOdWlUbnBMZEVpODR2dmlDdEJkYVhsaEFkbStW?=
 =?utf-8?B?K2t4aHJveWtiUGg2cDVnVWo5ZHh4OGU1bXV6ajN6SUpudEFpeVQ4MEdwZmxR?=
 =?utf-8?B?M1pYbngzc0dvRTZ5WGFWcXlnY2Y4dEZMbHgyT2dTa2NpZ0xXeGJ1NDVOMHgv?=
 =?utf-8?B?N3ZzaEV1MTVVWmRGV0R0aVdQbkExNENFc0Z5a3MvejM0RjFLeFpEckpWa0JK?=
 =?utf-8?B?a2RGUWkvKzBkNlN6dGFTRFFsbm1ZbkU2alJrL2JaNzBsdUFPQWRtUXZaOGIr?=
 =?utf-8?B?Q0hBWis5RDhhZmdpVHdsRGpJdVY2R1JpOGdkT0k0RFJqMDJ1YkxNeUUwNXN1?=
 =?utf-8?B?aW1zRnVHcjVtTFM4RzJqTGlOMjZNL2JvNDFjZi9xWGk0U3pwZEttaTBRQzk5?=
 =?utf-8?B?ZFpDSmJJdTlza3dUZkVlUkl4K29GVEtIWjUwcnQ1MUtNUE9EdVVJSTk1cFJD?=
 =?utf-8?B?NVZZaktLWUV0YXVnSkgyNVBTZmtpb2RHK3RzNS84QXdwZmhrUUxnY2lTK0pq?=
 =?utf-8?B?SWlCRlp1V1AvTmViRjFxZkM2VmNUTkhqeFlaR2hpdUhTZUcrK1J3bnVlVWVs?=
 =?utf-8?B?TWZiUzJUTVd3M3pFWU9Ob20xWVovUmtVTU5pLzFVekhpY2s5Ui80bWFTYTZE?=
 =?utf-8?B?UldLUkhnb2hkelU3dUpiazlDcnFpbHpYMWgweC9tWjV0WlhaR1NKVEM3c0xu?=
 =?utf-8?B?MWJhZisvNzlSYWQwK2kvR0o1R0g0NTlMU3lqOFNqR3lBZ2VUc1FiUFNrWGZv?=
 =?utf-8?B?L3BEMWo4eC9qcWt5NUN5K1NOTHo2TEh2TkJkeTR1eU40a1l0dCt0clV3Umla?=
 =?utf-8?B?N083Smc3NnZGbmNaY3BwRkRWN2xwRytsUmwwODZldlFGZXRId21nN3Z0MzFP?=
 =?utf-8?B?RkpyZ25vVXFtR3hoR3lORWx6bnV3ZDNhSlhzVENzcHBBRk5MNEFpb2lFSVNB?=
 =?utf-8?B?MjNOc3NOUDFkcGZoYkdTNGw3dVk3c0VKNms3TC82UnZGMGFOTlpOWUlZQnJp?=
 =?utf-8?B?cm9VZHlYeFUvVmo2MW5RYWxoRlVaRFJNZU5XTXZyRjhNSUsyZmhrWVZqY1h2?=
 =?utf-8?B?cjJ0bWhWY0thTzhJOWlEb1ZSYTdHS1pwczJXU0NOQ2I1UmJWTENzVGl6Znla?=
 =?utf-8?B?RUxlcHNCVHRETEc1ZFV0RmIrOTZKVVl6RzdCNkIxOVZqZ3UrUEpFTzJFTTc3?=
 =?utf-8?B?ZXZNY3NQN2NnVjBRSmY4dmNpamp1OG51MjFVNFlOMzh1bk1rNjQ2ZkNGWjBC?=
 =?utf-8?B?MmwrSWV5K1FQWWoxajdwbG9UcExHWnMvc0RnME8zTys1VWRCcjg0TnRucWxY?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: UxD+f1L6jdgKaUHJl1Ecpdp430z+zxiDjgwKpI8UIQo1O8+LAm5qUIbzHxHzlt9Y4BNTctZ/FFYgCe7mA8fa2L+yusfaTlSEV7VoQSUD8r9G2t/o3oaVxfgYqKn84VgFipBpv6ufyB2Eekwh9XHfe1de+3PhUn9RNuSAqM2gfXs3ynSw1zesI+7eQfDfSHkPhjyffTUzVuvkA03Lf8quIM6EnKYSWMwo4butYpEc+v/WpF9vOvjvqb4pDjuSO6XCHUPaEHE8GHy8Ygt/sOFLH+y9QNjZEzWnMQjLdSSQlB486ifAF0sxkuAbQkAgrIXh8K4xgVGWfaCCjVUigAErMiSe94B4o5wqnMRUmpG1Kn3pAQlvy0aAtCS8rn7A3iKEHWAclsQFNEDsDAb/HZO46PmC2MwWdyb0RdmdsA5R3+HJAzqMB62yStgDmP5Bcau7t9ygH7z7oh/xfBVI1+ZCW3JHMHi5vhOQnYI8GqxOK8V0eAQM2ac+mDeZkbmTdOVkVEvHMC4grgS+jWZWGnkfMqnnwbJyzNfMXzTMJtvLEd326n4XaLC3qCOxqbOilJDOxfKtkOhdf9nQ8F0EVIz1dZIAtjF6izD17FkdAUkafQQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0209152-0964-48ec-54c5-08dcc6b48da7
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 16:23:15.4522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h29YNpWOLDyOPkja7b0zVpbQ8/ghZpYRQdEWDFu5wJp7qhzJEkktGlvpyyU2jolaE0YrQW1eQqmodzmMZOspI7AJqKH1EQzajVz2wZOGyNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7267
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_10,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408270123
X-Proofpoint-GUID: uv2WQzfWxaeA_hD1ac0lQyd5AHcm2Ulv
X-Proofpoint-ORIG-GUID: uv2WQzfWxaeA_hD1ac0lQyd5AHcm2Ulv
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/23/24 8:25PM, Edward Adam Davis wrote: > syzbot report
 a out of bounds in dbSplit, it because dmt_leafidx greater > than num leaves
 per dmap tree, add a checking for dmt_leafidx in dbFindLeaf. > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.177.32 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1siyyr-0004Of-Cf
Subject: Re: [Jfs-discussion] [PATCH V3] jfs: check if leafidx greater than
 num leaves per dmap tree
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
Cc: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/23/24 8:25PM, Edward Adam Davis wrote:
> syzbot report a out of bounds in dbSplit, it because dmt_leafidx greater
> than num leaves per dmap tree, add a checking for dmt_leafidx in dbFindLeaf.
> 
> Reported-and-tested-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
> V2 -> V3: Exclude control page
> 
>   fs/jfs/jfs_dmap.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index cb3cda1390ad..516bac758053 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2976,6 +2976,8 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
>   		 */
>   		assert(n < 4);
>   	}
> +	if (!is_ctl && le32_to_cpu(tp->dmt_leafidx) >= LPERDMAP)
> +		return -ENOSPC;
>   
>   	/* set the return to the leftmost leaf describing sufficient
>   	 * free space.

I was thinking something more along the lines of this.

jfs: check if leafidx greater than num leaves per dmap tree

syzbot report a out of bounds in dbSplit, it because dmt_leafidx greater
than num leaves per dmap tree, add a checking for dmt_leafidx in dbFindLeaf.

Shaggy:
Modified sanity check to apply to control pages as well as leaf pages.

Reported-and-tested-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
---
  fs/jfs/jfs_dmap.c | 5 ++++-
  1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 8847e8c5d5b4..974ecf5e0d95 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2944,9 +2944,10 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
  static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
  {
  	int ti, n = 0, k, x = 0;
-	int max_size;
+	int max_size, max_idx;
  
  	max_size = is_ctl ? CTLTREESIZE : TREESIZE;
+	max_idx = is_ctl ? LPERCTL : LPERDMAP;
  
  	/* first check the root of the tree to see if there is
  	 * sufficient free space.
@@ -2978,6 +2979,8 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
  		 */
  		assert(n < 4);
  	}
+	if (le32_to_cpu(tp->dmt_leafidx) >= max_idx)
+		return -ENOSPC;
  
  	/* set the return to the leftmost leaf describing sufficient
  	 * free space.
-- 
2.46.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
