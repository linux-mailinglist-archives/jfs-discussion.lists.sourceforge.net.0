Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7965D81A776
	for <lists+jfs-discussion@lfdr.de>; Wed, 20 Dec 2023 21:03:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rG2mQ-00046I-MT;
	Wed, 20 Dec 2023 20:02:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rG2mO-000468-Qh
 for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Dec 2023 20:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6+0gGkOoo5fj0cMB/2jnp5eXeUU0JMCldgbyse66ooE=; b=YtKwHMAlAnddpm98cc7aWVVfot
 gtETNgNAmHF69maNL0V6Ll5CCnKJN1dGuRRk2cO2JHsEhQnlXC1aO0UYOKbJgL7XERBwuxjKPkND1
 2SJbz1N/+8GDV0YfQLCA0J+lZSddpQ03AEZzZOwuFqw9SCidbwwCjGoF5+mNVURlAhjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6+0gGkOoo5fj0cMB/2jnp5eXeUU0JMCldgbyse66ooE=; b=DZTK9anx5/mNZL13d5fnMwA20U
 GHRbFwSsHjDCcYfni1z5Z9LuWKYMfbZ21RJG1ORgrzNfziNlDnfu1hG63isyZXVQwUZVs/YlL9w90
 wez3i7kRpaPDiJcZeY/WTBh/H44w04RESvoZ1aNWdY48oQcT0dEySo25z3g59IGdQnI0=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rG2mG-0007Mo-EL for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Dec 2023 20:02:55 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3BKHdOH1009510; Wed, 20 Dec 2023 20:02:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=6+0gGkOoo5fj0cMB/2jnp5eXeUU0JMCldgbyse66ooE=;
 b=HXVHiOG3+xk1wC3uYrKLkCDxc/KgUNFIe9NFbcnJloLeGGjQR18/HO4DA13Bp9dpEZG0
 5CezNY2gvEhNocPGJr3EF1L0wZaMkt5itctHitRD7K3zC2E1xayGyfk+Z425HrOn/SVJ
 fGhl9blfScdAoEhUxzNvH5dl/TozKfwTC9ftnNuq92xWBSl4gWjQSThGWNbbAqGXiwJ2
 Sx69nlOb4sDxFv7pOoKSvBfVqDkMUl5F5do/UpIOJjBGA1KoKWK9jNyoM+OsxmhzpO8K
 Kx6IdVXGuUyo9LK4SvsFaMV/jrUo7x7Y5chONi+rMP580fZHBpXxYE1Wq4hlg5pwCrOv Jw== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3v14evh96f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Dec 2023 20:02:35 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 3BKJ19Qs027595; Wed, 20 Dec 2023 20:02:34 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3v12bf8rc0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Dec 2023 20:02:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GrBxkULpkgOnF9w7GsZd7Hnyab2xm2fLbuJpNKHNgzVAN0YaiRNoyIBghD/h8dO2avQt2ifUJRkNseNYXN5iLVdZvXK7kvW2y79Bx5z2j3tK55IlG2jnLoqGwIOMIaEVog/swwXGFYP/Tle8IXDU8WFNUYzGsfttVCL0wz2iWwuJPPDDim2EXO9TtgR7KH/PCgP+CpCWlq5P/8Afs1hXC13x8JdjxbdlJJXqlLlNU1rX3XlLqeIvR+DJzVnL5mbgdGMXNHVzrcOIZywa+9OmZ0Vv99xNdzVG8CiPxXPFwOFeZEBfcz0MdLOzVEBflTCZWTvHnEq4fQJ5OLAQku4c2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+0gGkOoo5fj0cMB/2jnp5eXeUU0JMCldgbyse66ooE=;
 b=ecAIu/SyfB+LOzk9I66L1OHZMWQZFRPecUa2/uQM8JTpO9x7RR6qQLzjJBGUnyqfnCk3hFaalsIGfGdqEPDbxFmp3Cc431DvxHux3tQaLAWUfOKiqet6LV2IJnW2Fk8M5RYD2efryq2yJjGfqIrq+VNE62QEL6DjQQpzhuh38zYejriZgRmguHCfhMk1nJbiwTDcVw4wnBWGRJm7sh8w5+Y0CTk07zP5XJkfOzrevFTTopX4+IfzSy/y72vYar420Ok25pXZDXe+zGo41hgRAKvfOtFxeSsVrpRNyl++JjI2k58DH+V1VhqWUoGMn+Pi/j/idB6MB7+A8nSYNT78rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+0gGkOoo5fj0cMB/2jnp5eXeUU0JMCldgbyse66ooE=;
 b=CXPySXV5E4grZ/TCr0auUCjd/AqWFc7IEDtq65MVb8Hz4BsPCWUXLtccLIp05wnyXz2AW5AWjUbIv0fo2D+eqe1QtZHh+mWGODEgDVMjlIEb4bkpGNKoxTqVVSSmw0+0SzFuqaoTRo/8NrIufIq3s+w4tAyvKYcK2MpMIxkzvdQ=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH0PR10MB5339.namprd10.prod.outlook.com (2603:10b6:610:ca::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 20:02:32 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0%6]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 20:02:32 +0000
Message-ID: <1c5df433-ceb0-480b-8115-3e9fba3f52f3@oracle.com>
Date: Wed, 20 Dec 2023 14:02:28 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Edward Adam Davis <eadavis@qq.com>,
 syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com
References: <00000000000062a4cc060c2217de@google.com>
 <tencent_B86ECD2ECECC92A7ED86EF92D0064A499206@qq.com>
In-Reply-To: <tencent_B86ECD2ECECC92A7ED86EF92D0064A499206@qq.com>
X-ClientProxiedBy: BN0PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:408:ee::20) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH0PR10MB5339:EE_
X-MS-Office365-Filtering-Correlation-Id: b251c70a-e381-4f6c-02ff-08dc019699e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XxG7gMSWxVrnvwUf9zjnwqoT9EZNucPZil1hktjWev5tyV9FdeUd0HUbkA/auR5q8r2txgf0KPsxZgccVfUyOhN95FaiCvCsum3FYS27qmwlkGikfT50+Ev8PdiJf0At/IyN0RtI0zYt2NTUcfmH8jhGZ3Hon+7EfloGYncr1R0lUg4yzjUTR86xKAbcEc0IMuvzdy1AmMyjzL4rcGsvY2AXYlExRmebK69FScRZB43RyCSAeBS28m6wPVuAcF4v6zfQGPQ0LPOBac3zoMahxE/5uMa0woAkVAEvgQLu5VF4epA5wt5/9ObFA2YCxq1duIQ1P10LTL8DPEcgY05Pj/fkOY1/pTgJXEHYKLPpHz8F6A6PadvwMHZgdFkstm0G3MDJb6Unq2tgyZ2Zz3p6wXDtFs6njg5Mzvb4nPc6D1uX4yyTWWtrDT7dZ7kAU/e/XTW7n5eC/2dly/5XOq7zEvadGofY19Lx4UKEi2Tv7MCiJJiCJ38DHtb2YeJJ+8/aj+wi9tJ4ErCbzKXhY7CNDPkpPxPv/mhPDE5jLKZl1KIkfxYwDCijaMkZpvD1JQ5KNS1w9/XcshTDr4V/oO5sSjulFMZSNGCs5DiAfH7OwZ0YfkTpQ7yn5Eimw38sWRrqr47bfsjjHnPIRVFjQhStiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(346002)(39860400002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(4326008)(8676002)(8936002)(316002)(2906002)(44832011)(478600001)(6486002)(6666004)(66476007)(66556008)(66946007)(31686004)(6506007)(5660300002)(6512007)(31696002)(38100700002)(36756003)(2616005)(41300700001)(86362001)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2wzbDJyek1OV2JvaEdnZzE0VTRCb1prdU5STnVHdDJyMFdrSVRpbTNLL21o?=
 =?utf-8?B?WFlVK3Ezb1lsWlFpUEU3UWdocTZTUExBOW05cHVvRzVsTHA5ZzcyYUdhQ3pT?=
 =?utf-8?B?c2JKbEZTYTJnWGh4MGVWSEp3YitpOSt3cGZIMk5aMXRIc2s5ai9YZHU0c2h1?=
 =?utf-8?B?bjNhbG4xNktNSVNlV1lJNFkzd2dsN0cxb0NVVXcwLzN3Y1RIZElHTTBvYXVt?=
 =?utf-8?B?OWVIR2hGMEVSaGZFbSs0TVFVcXQ3bXJKTDlwVkhCbG5PRFJKVHZ6RnZBZlc1?=
 =?utf-8?B?NGJLeEJwRnhqZDNzQk9CdkdoNm94M0F6ajNma21KQnNRc0pocEJNRjhRaFpL?=
 =?utf-8?B?VTRPWDF2QzNlYitOTnVGUVFobTg1QTNUbmpTdG9VSDYvcnh1U2d3VHU2cVd3?=
 =?utf-8?B?dllqM1ZhWlhjOGZscnZKTEN6NEtCY1IrMEtpMW96U2NVS1IvKzVZWkVXOFRZ?=
 =?utf-8?B?eUdYbjhoUFFoS2VjbWdwRHk5RFJQVEdFamZMVUdiQi80VW81WERySTltT045?=
 =?utf-8?B?dGdERWhYWVp4ZWs1SFR1NVZyRGN5MDN4UWtUdG5pRXdwU1FVb3puRnQ2RjlU?=
 =?utf-8?B?REM4M2lJa1EwQm9mNVJZNUxxSThHOGt3aXlXbUZzMXY3UmZicVErRkRaYTlQ?=
 =?utf-8?B?OWlleXE4ckt5QUsrSUpzdVlVTllGblU4NlE0akl5cE9WSVV2Vzh6Z2loRkpG?=
 =?utf-8?B?UUdnWStjQmN4WGhIeUhWdzJLVEl6bS83YmphREdqeE8rWmxJcDNMNzhMRU5w?=
 =?utf-8?B?SDd2ekJOeFEyTGU5Q1NCWnhEVW9yY05uS2I2YkZ0ZjF3V3VZYzFLVmkrbTM4?=
 =?utf-8?B?QzJreGo0VTlyUkg4cXJOanpOelgydDZLd2FJZEFPS1M0R1RydVF3QXMwOFpW?=
 =?utf-8?B?cFhmMjVjNktOZTFrMUoxS2pTRk5Pek85cU5hbDZGMVQvWXRjWSt2TktxTTlr?=
 =?utf-8?B?Ky9lbkc5V01OZE9Cd3JWMDBhNzRLUHlZZlNzKzBrSE5IcXJsOEF3YmI0RUNr?=
 =?utf-8?B?ajZISmRIVG5mVHVUS0pMVUdKbWE3U3c1T1VWMmlxUHVpdTMva3czWkNtV2pZ?=
 =?utf-8?B?QnhicHJIYVRSK3daa1E1VXk5bFN6RHpGTnJCNmdXYWU2WlNaVkxFbkEvVVMx?=
 =?utf-8?B?RHN6TU5lY2ZDK25VR0d5OU1KZXo2aDkxdUlEL1N1SmNWWEs4a2cwSi8yTXow?=
 =?utf-8?B?Wjc0N0QxcGkrK2F4YUFXQjFuMUs0c08ya2xDWXhmTzUzKzRwSDBDR3l3NUta?=
 =?utf-8?B?UGwwOHBtZU02RkxJR3R4eDcyUjNrWnd0WDE3M3ZYcWZNN3FkTkdaeWdUaVNK?=
 =?utf-8?B?Z0JMTGFuV1B2MnNSY05ZeTVMVXV0a2R1dm5LV1p3K21IWTBKbU92eGNsa1hp?=
 =?utf-8?B?UFNmZm1IeXlKVkwwQ2o2N25jN1FOcmhXKzZvWmRJcUVkSzE5UUNIRysxQXUz?=
 =?utf-8?B?UUpzTnU0OTY3Nk9PbHJnYUtNUE9VMnIzQ3JXKzdTM2tCUE5ickVla1lOMHBi?=
 =?utf-8?B?dmhMWGllT2RQbGlTdWlXVkxSaU9IUVBEWXVzWFdsYUpIUDZDUjVwTkpCdVAx?=
 =?utf-8?B?a01IUVNDb3JuTVhvWEd2ckJNK1psUTBGclEzemNCeUZYZ0ZBYnUrVytYRDY5?=
 =?utf-8?B?bU9pTTlCMEsyK01SQUJ6VDNHTnZMbUlWem5BVG1ZR0dQcGkxdkNORDNuYlBC?=
 =?utf-8?B?bU1DMEs0RDRYMUNpVk0xQ2YvNHdhQlJ0V3hjbmVyejhkaHIxSEsvclkvb3dE?=
 =?utf-8?B?bG1GYXZvb0hrRzB2R3Mrd3laVmpmRjJ0SXowSkx4Sm1TbjZJRjJndUFGK3pu?=
 =?utf-8?B?WW1kZFBXVjllVk1mWUFIVXlWWUVJMmVwbm9mdDBYRzBpcDN6RWxGbzg4Q3VW?=
 =?utf-8?B?bHdFcEdhcGt1WWl0dUs3ekIrL01mYVRLbFN1bzVGZVZvWlJhUGJJdHNjaXZv?=
 =?utf-8?B?c2x5ZnpEUGFBejBGYjRUSk92UEdrUVRZc3J0ZC9NMTgybFV1ckg4MEVHN1ZJ?=
 =?utf-8?B?cVN1d21PK2lFNXhPRGZ4UEVybFl1dXJJOWhNMnFLZ3NJdzRrRFJvbW9QOFQ1?=
 =?utf-8?B?R0VUa1lCUXlDQ1FiaE9IYUJ0dTJOQ2s1ZWZRV3ZVUDB2NDNPd3lFUXA5T0Np?=
 =?utf-8?B?L056dEUzeWEwN3g4a3kzZzl5SnIxNjlVS25URnlBdjBtYjFNcWh2cW1OU2NL?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: bQ56Q6A7NU5BVxg2OUMAOFwdFcQ0pJqp8mNnnYZaScNOiV4NvDcRQE2Zp9mLWf+1I/GbD8EQw6tBut/Yo0I+hAftmh/bsecWMI3XsAO6q0Q+7hj3qfjGnSHE6gCuFnzT6gyu3TLqLtQv4PqBHvu+Yb6beUw3uILAcgqwB0keyU/lkNZt26BXCwgV7/nTfQKsAs3AONepSE8XBq2LKtXNdOYzU7hFmNHuxf/BjvVO5BXMQpg7PkqyupAa6T+Opu0X/0rcUA+FuPNxXLjMXmLhOHSiaktJrcKzNFGiKkCOUlSRhaYVzL3kFf5UonYDGzcHmVM7gETg5GMYKB9TIH9xVfDfcPvh2FbeIi0YFPeOzFY8QJZcxTLxAwCuawO97iLsUiX2xf4P9iCUN21BLrxoyA/LXPLdEfBsnqYxtpk/T3AAQ3EJjNgF7sd166gPwTNFIwFly04Q5gR2BYlXbktmkZ87+mRbt+bH61a/03+73+e6C3PU+Ijwayf6q/7mwKn0OssBZaH57TWQHhkanNTis7RcUXgKrm13C2ceCFyil8f+QyxAk/U4NzgOUQtPljjPQfpw6Qfda5sPwMAnFVqBP+k4o1vyD2pW89JtN5srH3I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b251c70a-e381-4f6c-02ff-08dc019699e9
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 20:02:31.9987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZY+MccZyGgIvAcxaOPKyNWMgTXaRvgLWw3oeXjbuA8pX2BZ9qcuHeyz768BGt642qL339Y+b48sMw+QZ7jd9WK14tlZUBpz10OHP0LRAuGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5339
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-20_13,2023-12-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 adultscore=0 phishscore=0 bulkscore=0 mlxlogscore=814 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312200142
X-Proofpoint-ORIG-GUID: HLInGMH-f1z6QQshklQAwtEQa5E1Y4BD
X-Proofpoint-GUID: HLInGMH-f1z6QQshklQAwtEQa5E1Y4BD
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/11/23 7:36PM, Edward Adam Davis wrote: > [Syz report]
 > UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:2360:2 > index
 -878706688
 is out of range for type 'struct iagctl[128]' > CPU: 1 PID [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rG2mG-0007Mo-EL
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diNewExt
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

On 12/11/23 7:36PM, Edward Adam Davis wrote:
> [Syz report]
> UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:2360:2
> index -878706688 is out of range for type 'struct iagctl[128]'
> CPU: 1 PID: 5065 Comm: syz-executor282 Not tainted 6.7.0-rc4-syzkaller-00009-gbee0e7762ad2 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/10/2023
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:88 [inline]
>   dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>   ubsan_epilogue lib/ubsan.c:217 [inline]
>   __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
>   diNewExt+0x3cf3/0x4000 fs/jfs/jfs_imap.c:2360
>   diAllocExt fs/jfs/jfs_imap.c:1949 [inline]
>   diAllocAG+0xbe8/0x1e50 fs/jfs/jfs_imap.c:1666
>   diAlloc+0x1d3/0x1760 fs/jfs/jfs_imap.c:1587
>   ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>   jfs_mkdir+0x1c5/0xb90 fs/jfs/namei.c:225
>   vfs_mkdir+0x2f1/0x4b0 fs/namei.c:4106
>   do_mkdirat+0x264/0x3a0 fs/namei.c:4129
>   __do_sys_mkdir fs/namei.c:4149 [inline]
>   __se_sys_mkdir fs/namei.c:4147 [inline]
>   __x64_sys_mkdir+0x6e/0x80 fs/namei.c:4147
>   do_syscall_x64 arch/x86/entry/common.c:51 [inline]
>   do_syscall_64+0x45/0x110 arch/x86/entry/common.c:82
>   entry_SYSCALL_64_after_hwframe+0x63/0x6b
> RIP: 0033:0x7fcb7e6a0b57
> Code: ff ff 77 07 31 c0 c3 0f 1f 40 00 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 b8 53 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffd83023038 EFLAGS: 00000286 ORIG_RAX: 0000000000000053
> RAX: ffffffffffffffda RBX: 00000000ffffffff RCX: 00007fcb7e6a0b57
> RDX: 00000000000a1020 RSI: 00000000000001ff RDI: 0000000020000140
> RBP: 0000000020000140 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000286 R12: 00007ffd830230d0
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> 
> [Analysis]
> When the agstart is too large, it can cause agno overflow.
> 
> [Fix]
> After obtaining agno, if the value is invalid, exit the subsequent process.

Looks good. Applied.

Shaggy

> 
> Reported-and-tested-by: syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_imap.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index a037ee59e398..cc5819b3ec9a 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -2179,6 +2179,9 @@ static int diNewExt(struct inomap * imap, struct iag * iagp, int extno)
>   	/* get the ag and iag numbers for this iag.
>   	 */
>   	agno = BLKTOAG(le64_to_cpu(iagp->agstart), sbi);
> +	if (agno > MAXAG || agno < 0)
> +		return -EIO;
> +
>   	iagno = le32_to_cpu(iagp->iagnum);
>   
>   	/* check if this is the last free extent within the


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
