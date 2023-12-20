Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DB581A77F
	for <lists+jfs-discussion@lfdr.de>; Wed, 20 Dec 2023 21:08:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rG2rB-0003tw-0w;
	Wed, 20 Dec 2023 20:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rG2rA-0003tq-Dr
 for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Dec 2023 20:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GZoqSeeEmfSbj3A+kQorFvHslzLEiN7RzogT+1pRRE=; b=heiZSOAfsKLulZW9U3+OpCJQjm
 A/db1tfoWqruo3qfas12aSq+Li0AH2bpieOByRY3QvIeFZ5ftPvJpddcDT/vWIXFW6BgOGYsDRHyS
 qMaGkQIyuQXXyOuBFaYwNU3uKPnZaCx2+dFXS4K0woqOq+wRaBDEIJZ63gih73+lZYUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GZoqSeeEmfSbj3A+kQorFvHslzLEiN7RzogT+1pRRE=; b=HQsJX2s5y/U4keItQftJzHt11k
 wPhElRFJSc9pk9ctSx5O53J2JBLy2n2xOTOvadtEVaROMMrBtbxh8LSYXN/Y4EI9Z4fPUJJbqRzxv
 f2nDgV9ndeBGASJMzJg/KoMhUl7IQpldhTJF/UfRWdOO6vBoRTYcLVoenK2a8//oFY9Y=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rG2r8-0007lh-MM for jfs-discussion@lists.sourceforge.net;
 Wed, 20 Dec 2023 20:07:52 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3BKHODck001916; Wed, 20 Dec 2023 20:07:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=9GZoqSeeEmfSbj3A+kQorFvHslzLEiN7RzogT+1pRRE=;
 b=H53XNNxUPXm/gLG0WGPeVV+v46DOZtBHPf9G0FrjN1+hyeDYRAXdKgCCa+MC2dyqnNE5
 1rM5Xtl89DCrA/H/ddx9v1rkY4h8Md53/KY1x3P1MxlZhVOnUE1sE4ueyrv2bV8X7qnS
 HR06vJLi7F53Rv5I/PcEcPlIaXtKt/1ytAUasME777ycHX4Nvn34T2m4Ed/8s1ILDms+
 o1AWxbsR0JeCpS4F8gSUaMqadqYxeRRX/khOFTdhOXRfJyBhbGeIDgqRI7rtAcCNssXz
 PeehFaaO0hne/u6iV4ROWQ6DBXI0lGVQerj7+FN4E7UnwhK5lK04KwRhUScb06302RsE Kw== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3v13guhbtp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Dec 2023 20:07:30 +0000
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 3BKK0d7L022320; Wed, 20 Dec 2023 20:07:29 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam02lp2041.outbound.protection.outlook.com [104.47.56.41])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3v12b9djg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Dec 2023 20:07:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ognw7XAPLmwIHYzD9W6oudKqfzA+a6mzOhhXHl9RK4GNi3yEzsC1a7WBYj3YuxrR+YrTtRgNq2hdP0ValIVcluwnDoM0gyHt3afql9hWVG5UgBm94G7qM5lsQ6QEFM4vJgI/z9D9Mz8vK3HLHiF7qpYO2YeX+dyHbai3C9uRA792i01Jl7AYMnwrtggoLJ2mrxDm6wEJ8GVfJm18bq+blA0noPZWGASFW2OkfPbJJOHuH6+K/pijylNp2Ukb2RrW8gcS+QyT1FR5kir7vrNbPC0Y17hVyVipDrNWxkDen6Lgo5xcqoEES53siMxnSLaSHma9KvXWh3r31EwSIOORnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9GZoqSeeEmfSbj3A+kQorFvHslzLEiN7RzogT+1pRRE=;
 b=Epf3qMnxS8FFLQVzVjkgwfVmpSWSuxREV50IjAk6KzVnPTgvNYQ94aWYb6AOLxJNGVtilxgV8/LLjCwrXEvs9nDoNbcVisj/bgicdzNLBxoFqegcDV6S723XgBIknTb/2rqgsstqPo/cL5VWJlPOTSGYg0m4mSV6Kp256tpfCNCsRW+0uJUexZwLl04ka/ZUlunCsNEuiWCUrAakPMtADdGOBMmQ9unzJ6gW82M2O0D7XiLuxR1LWzVYSun1V9NlnMbbmUmohPDFQ5kgo+MNIflsZbyvFSac2juZeIjtx8fzK5GxK+/A6k1Xar1UXLHzkQX1/8MIqqO1fihAsSf/Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9GZoqSeeEmfSbj3A+kQorFvHslzLEiN7RzogT+1pRRE=;
 b=Iz50rL8EyvxrVqbBkzqPccQm2m0AwN4uK7ZUAI7F3wkACc5Ky9WDzco6XouLL1iE3GpxpXJ0ywf5STPEFQTGfLdCX6MkGYDrSl5ch0yZN+Sdk0aS3ySr5+dG90FiaKmVXZ7l9tF3FL9eoSx0IoGKoYd7JKXS6YPkCKBuwDpG+1Y=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ0PR10MB5695.namprd10.prod.outlook.com (2603:10b6:a03:3ee::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Wed, 20 Dec
 2023 20:07:27 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0%6]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 20:07:27 +0000
Message-ID: <7b2faec7-a46a-4784-a1cb-510588276460@oracle.com>
Date: Wed, 20 Dec 2023 14:07:23 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kevin Hao <haokexin@gmail.com>
References: <20231218052323.1193276-1-haokexin@gmail.com>
In-Reply-To: <20231218052323.1193276-1-haokexin@gmail.com>
X-ClientProxiedBy: BN9PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:408:ff::9) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ0PR10MB5695:EE_
X-MS-Office365-Filtering-Correlation-Id: 74de5024-53f9-4549-89ba-08dc019749ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ffsfRAYdZc7Vc2+Yb6+CLkVdzEQaB/z/KgoBo6SCqn4co/5JX2BFEaTQhZwRav/tYjm8/lH9eK6eIHJsGJu6vB3nZxkRXJ3Gy9W17qeBdvQ1HQkcGsMecPeQOO16i4RIZhx4ALWIQTuOcOPXzLCXDVgnWPpahKBLNJF2PUe4RRlkBkaRiJ+YAlZUcEH+r246ppeyk6gXcukLfqj9EzkGg6qb5A+t4zulySPzgtratNfv01yTEfyd2BexSiI5DWpWHN4AMilCLn0RGTnlpD2s330F50UmsWNSV5p9niRnXHcy5guq0MUMjLpSB78u/N4YmQiCqrC4Tjesw5vCb++5+R1w9XmgkkGqYWoIlihbQOJbcvfPKfgIM+xoJI6/s5B5zQv5H3ulCYrv3RZ+JkU2LiNdeeoDVtKFNZkF/7JIM9UW8azF9mu15KebT0uxRJPrrytlrIkAa1mi1gepNOC5b6blvtvs9Ny5AOUYSILiHNBD7otPUHmCqa4DN7KW39QAjti4M5O/lk/W6I8tSPO6q2IlEDY6Hux8Nv2WMOKTdNR5DdvCbc7cq9H2JInDdVWqelu32DkCAEaLXvgF+z04O8w6k6WGBAh+t6LdY+4mrtoxqWzFJSQhQ/3yoqN2jPBVZimWs1ASKKXsLezNMI2gTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(39860400002)(346002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2906002)(86362001)(26005)(6916009)(316002)(478600001)(54906003)(66476007)(8676002)(8936002)(66946007)(66556008)(4326008)(36756003)(44832011)(6486002)(41300700001)(31696002)(2616005)(38100700002)(6512007)(5660300002)(6506007)(83380400001)(31686004)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3dsMC9DWHBtL0FlaE9abEN0WjVtdkFIcmtSZDk2Nm96dzdndWVqTUdEUThQ?=
 =?utf-8?B?dEMxWVlRYnRiMnV0aWhBcS9HQWErN0w0S1R2VnlxL0ZvWUNmRGIzM1pXOWpN?=
 =?utf-8?B?SURxeTNybFhxZ2oyVmR5aEtuY1Z6eVlqaTMwckxTVVRTWDlGOWh0MC9wanhR?=
 =?utf-8?B?UmRJc29NdzRoNUdBNmh1eWN2VGVKeDkyZGpleDd3UmhSZXJ6UVJjdmxxVEF4?=
 =?utf-8?B?RE9qYS9pWGxRdkpyU0UxWUhKSC9JcWc3clNlVktvcnpsNUpPMlJhTHhoSmR6?=
 =?utf-8?B?dzk4TlB4bVo2RTVjSlE0Qm5iZXY1RHovbExhTStrTWtDU0xZR1hUdjllSGJH?=
 =?utf-8?B?WFBCY2c0M09aU1MxRXJPeE5CV1VRcFgvMW5xc1RTVXQ4WlF5aGk1VlhUdVRZ?=
 =?utf-8?B?ODJiOStHMVZncUFIbkoxUHFIQ0xzTnVWN3hmY2tRQVBlUlBheXgzT2tFMURH?=
 =?utf-8?B?dDNrTURnSFNPZU9ack9wLzlYWTg3VlExSkdONDVKcHlqUnJNcGRXNnUwZXB2?=
 =?utf-8?B?SUlja1FvZFVCeWpZVWQ1QUR2S2NraXVJd3FpRlBkeDVYSTQzYjQ0THRPSXZz?=
 =?utf-8?B?S0h2SFhpdVRIVnViblNYOXpWUUsxQ3FBRjFGV2c3NXFldndjQzdRc01hV2FR?=
 =?utf-8?B?aHJYS3Y0amVwd0F3dGErbDBWOGdBU1BNZG52V2ZGM0ROOUVrQXpnWVBlb0Vv?=
 =?utf-8?B?Nm1ESEV3a0t6bWNtSUNDYklMQ2VnbThza0lNUGgvUDgzckJBdG5sRDNWYkRi?=
 =?utf-8?B?Y3YzK2xhSDBmTS93OCs0ZUwzd2dkUkJtYkV4MTBpRTZKajdMM1lUcWZBbFJl?=
 =?utf-8?B?UDNzSVRVelNqck5SWmJCVnpuaHFrLzh6UXVsTlFKTWVYamxWcU0vdWducXlY?=
 =?utf-8?B?cTVoM0R4bDlhZ2VRdnVOU0wvN2k0eWxoWG11YllrUlpkdWVNc0FPYTFlN3Ny?=
 =?utf-8?B?aFpiWXpmNzFYNEltdGZLbnJ3clNaa3NnQ0k2emJCYjNSelJXSVhyOWY4dlly?=
 =?utf-8?B?V3A1K2hLRFdIRzV2QmlWMGVlOXV2Yng3UW5BR2JRRE5NT0FSTlA1R09yRXBN?=
 =?utf-8?B?bTJZYk1mbHZqS01TSU10ejJXSXlzaU9ad1NNK1dpV25oQVZYY0pjcXB0Tll0?=
 =?utf-8?B?d1FsZnNrMndtTDZRR1Q3VVNkSVY5M3dhbEVONDROVXRqdERGUFdQM1psVlJs?=
 =?utf-8?B?NndXSkJCOGNaOXNQZkNUK2dvT2J1UnhzWXZZcTJ0a0dNNGIzTTZQb1VjSHhk?=
 =?utf-8?B?aHllS3Fic2pIUnhtY0plQW1jakZBeHU4cU52WkRjckVWQkRhbEhMenhpRUVT?=
 =?utf-8?B?dmgxUFltYmVQNzFrNXA0MmIzME1DZkgwSG84N3FGa1hhVUdqMVp5NXJBWDRR?=
 =?utf-8?B?MTFlSnNLYUFtQUVlTXBwVjE1bnlBNURhdHdNT1lhSGJiMldsSnhXZGVrYTBV?=
 =?utf-8?B?NlM3dkVaeitCdURaYy9tc0R6eHBudkdhcWI3eWxaRlBaa1d5TWZ6TU83aXJN?=
 =?utf-8?B?WlJhQURRME92MkxmdHNJZjBXWElZRGlGNGFnajVXaVlMdmxGcjcrRG1nSUtH?=
 =?utf-8?B?azNCc29pL2x5N2M4RUp3RDJJRlR6WFljQ2Y3eXFnajE4Q3RlZ3Y0dlV0Ly9V?=
 =?utf-8?B?VDM1dWhBNjIzM3dxdTJjcGFlK3JrY1k1R2xUaVF3UGJvL2I2MHc5VjBZSEpX?=
 =?utf-8?B?V2tHWXFPYnN6NkU0dm9RNU54NWZkK0s5QUFIek9pRjZaYzQzUWtmQkhGQ21C?=
 =?utf-8?B?bDB3SVFPWmNQeW1wMnJCQ0NMa1Q0VURUKzdKMHlnNlJ6cEFCYTZGYkVCQm9y?=
 =?utf-8?B?WXdaNUhEWmNyc21GeENjd1BWSWw2QUZCZi9ESm1GckFONUE5V1hOaXpoM2VW?=
 =?utf-8?B?STQ1anRiTVB4NWg2RUYwRlFrdm9DQVVPVkRycDdVTmtFSjhBRjgySWtzT2Nu?=
 =?utf-8?B?OHJhbWR5Y3I0d0hVSlBReEQyVkRiRSszbmJaOTY3WWtrSTRKaGJrSE8xdjM3?=
 =?utf-8?B?VGZ1Y3JseGhTR0RxN0xoNXpvNFM1M0VIRWI0eXNaQitUKzNrb3pXS290aFhl?=
 =?utf-8?B?WUI0dEFPRHk3ZVNvYTh3YzlQU2JDN1JuYXBIeGRJbks5R0lncjdQcG5LYlQ5?=
 =?utf-8?B?aStGOERSZHBQQWNGbzBLVHJKckZwbEQwNWx3bnRIZW8yeiszdHNvTDFGTngw?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MhL+fdjDZr1U9ecFnEUdNnDrtuf4EgS3jfj6KebUJZZCr8Z4Vq0B87Br54OH4tIt8kgASojcyWE6cqMAGFX7g3+llrJCTfJDI9NjT92rcryOwrEO4T+NppXKdhQE3YgASOGWKjx6j95oKOAdepGVBhRYbwQ8hbJKcKbFmHKq2LE+WPT41ca+IHYy8/X/Dlzfum0QQPVLAq64Ezd7QP1823RZQcg9Li8xNSLodTbrx1uO04Ue2iswZqIT+czKgR4ss4JwciziqCm+ppeILrqwUxzbm8k0BaoWpP71LHJWUiRldHWqDfN1h7vHn1f1eOwpiQsdLye/IxhqaEEaGh7IThMX9jt+k1tfXllQKWpCOFoXYIoOr2bDa+KRpM2jlHNH1OhIK7IHRxo9lCo5zI/y0qAks2nFKIbM5+TxDhAyZ2Ra1nkXuZNiyrP9e+L+9Fz1eJkSrte82CkBjvoPEa+KcWXF2pC3qS+ZR9vcm4+rYeYUn8C8ZZla6qjdd2uYsoAkDEIyBE+cyB2h3Y3cezR7a9/e6N7mWKFaPa8IckMMeELfvbn4+yg6nKqWe8HV3tZpglJJIvWnnDLccpKKuWKmKC7OqmyqimIyG5opcC0F+3s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74de5024-53f9-4549-89ba-08dc019749ba
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 20:07:27.0190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RwOJQas5l54dAZUIOSAeTO2NXsamUpT0LkVc5WOAMdh6v6sTB289CxMqVxpO5YUWFymHIdd9KTn8hufEtAI2UcDe3CbTisR2E7rCDQ+bv+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5695
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-20_13,2023-12-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 spamscore=0
 mlxlogscore=943 adultscore=0 suspectscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2312200142
X-Proofpoint-ORIG-GUID: 3FJRPlDVgfaGw6n5DPf-pOX7Tfpij2zr
X-Proofpoint-GUID: 3FJRPlDVgfaGw6n5DPf-pOX7Tfpij2zr
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/17/23 11:23PM, Kevin Hao wrote: > The kernel thread
 function jfs_lazycommit() and jfs_sync() invoke the > try_to_freeze() in its
 loop. But all the kernel threads are no-freezable > by default. S [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rG2r8-0007lh-MM
Subject: Re: [Jfs-discussion] [PATCH] jfs: Add missing set_freezable() for
 freezable kthread
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
Cc: jfs-discussion@lists.sourceforge.net, Pavel Machek <pavel@ucw.cz>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 12/17/23 11:23PM, Kevin Hao wrote:
> The kernel thread function jfs_lazycommit() and jfs_sync() invoke the
> try_to_freeze() in its loop. But all the kernel threads are no-freezable
> by default. So if we want to make a kernel thread to be freezable, we have
> to invoke set_freezable() explicitly.

Looks good. Applied.

Thanks,
Shaggy

> 
> Signed-off-by: Kevin Hao <haokexin@gmail.com>
> ---
>   fs/jfs/jfs_txnmgr.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index dccc8b3f1045..be17e3c43582 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -2702,6 +2702,7 @@ int jfs_lazycommit(void *arg)
>   	unsigned long flags;
>   	struct jfs_sb_info *sbi;
>   
> +	set_freezable();
>   	do {
>   		LAZY_LOCK(flags);
>   		jfs_commit_thread_waking = 0;	/* OK to wake another thread */
> @@ -2884,6 +2885,7 @@ int jfs_sync(void *arg)
>   	struct jfs_inode_info *jfs_ip;
>   	tid_t tid;
>   
> +	set_freezable();
>   	do {
>   		/*
>   		 * write each inode on the anonymous inode list


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
