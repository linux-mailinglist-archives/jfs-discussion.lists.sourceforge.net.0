Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F878F02A
	for <lists+jfs-discussion@lfdr.de>; Thu, 31 Aug 2023 17:22:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qbjUK-0003ep-Vu;
	Thu, 31 Aug 2023 15:21:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qbjUJ-0003ej-6R
 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 15:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/jeAJSdxB9ZiELHwOWH4nVFVyD1dj9rW8DDhEHcYHg=; b=AHo+3nMADJ8wonykxMnvoYLt9s
 3RHfeZv+K5pxfUT19iS1ELV88sbKCFCo4a7IuCi3qRH1SW/gYCSF4oneZIHT9+l6ma1qMxd2853Mf
 L2Qn36dQ7xCQz1mlKY6hNlWtBhXsE8TNBsybSIHq5bKxdA9MLezVoL9ZFEAUoR3Qz+BU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r/jeAJSdxB9ZiELHwOWH4nVFVyD1dj9rW8DDhEHcYHg=; b=l
 YmWj+9QHPIGyi+LYTKTlVOEGX5DlJPaoHr0AIC+fwWfv//xug5Y2J3LygbLerjk5Kk8/YppFGH8k9
 MofXsLFEt//t/qetka/KuRfuevbLzqzbDVqgov8L/8W5Z/Vv/Tbzbi4+gRSBxNI1+VQmwCzeuIsul
 hSmtW3H9/14yu3RM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qbjUI-004qzG-A2 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 15:21:40 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37VDbGvb004025; Thu, 31 Aug 2023 15:21:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 to : cc : subject : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=r/jeAJSdxB9ZiELHwOWH4nVFVyD1dj9rW8DDhEHcYHg=;
 b=ft8EE3dz7Oqcpt3G31ATtH6Ejvj8oBVuDqnd93K2c5ipEyb+y9ruGjo18vEtvEJ0kS+W
 llC6RLQLlXeaZMhRf6g91ygMMq+V7hcTLGa5/9isCeAE+c3t7m6L8+LWMq7galb8lIGU
 C6whroh2MhssDGwNNLY+SoWFVpewW/yOI4L1h8lKY7aB5iYb4PIsIxatSsunIB95wHUW
 ICHzEtLgq1agC+bF44yBKt5Rq0UnSzzXLWuR2CYhHM2g1riUVlGAqwuRbBX/TmmHzDA9
 AKqdWGLYDnfooXaNs6RABLIaqv+TFvcQ32JnoTw4UyUlbVF8/ygE2OR/QbPJG3iOTfEp rw== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3sq9fka3jy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Aug 2023 15:21:31 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 37VF0kit001368; Thu, 31 Aug 2023 15:21:31 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3ssyw59kbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Aug 2023 15:21:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWOu9bRp6gyWefgQHkFozYrROiVTOgNPZFKLF0Qc2ew7O23dgRlVAJwEaNgYKwW652pAvFRu2uHusDSfxo1HC2FQfhbqEPn5GDSxmBPf8BbLhZXj9y6DUEgAVJRe+HSbyKJHhDPWdVV/8bIsiPGY++cxn0Lq6u0VlkR76nt7c1Yhb5n/MTUTIn1FAVLgLTa7tdrCTOq8M9P1gGFt7ssnxqLIiO8DtLo/Y2FnjgM4memjcokVufXz+9s7aTWuDL2Xz5FeLSz6LttGS0a7QAfVdZhXb2lTyRGl5ojHMd0Z6L6fgpZNX9NWhPlWt0bmO19LMA48/03Q5SNd9P8AJP29lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/jeAJSdxB9ZiELHwOWH4nVFVyD1dj9rW8DDhEHcYHg=;
 b=nAIaU8jgl3el8CLhgrXIJCdqxu7MWt9IMP9N6nW+WlVNMeatTP8XTCsJVXcUYiSDne3j4TPGhMS3mkcYb5JIonHDUqrVC/2Ts3p6HjDVxoHnWrePC1Ru2i1xeAC3ng5CiRLcW6BdhAyLTc1ZO2yazESO+hYKkm8QUkHrihaT1L3UWvv3hOS+K0cGt9CEJ9+k6oW6QfNoI3fa/E0vH9vX5yT48bfrlTx4ZicrK1NgkYG15ZL80Trb92r5aoKOWO20BQe8O4sHI59MFbSXI8YIghF2/3XOH+LFHDp+ezyCZBRJAcQzVlHEMvhlVMtZaDZ1BBZVxbt8sid4ZhiFDIOoyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/jeAJSdxB9ZiELHwOWH4nVFVyD1dj9rW8DDhEHcYHg=;
 b=fi/X7zFAq+qX91P0a6VuHQipc+ufMvx0cymOz9FzmKOEm/KwZOUG8GDNgnVM0T1p9pKJMk0amnIr9EvLKXm6iCP6ZqJhk8e5R6daD2JFeMduSJeASgqySbn65LyEPcQOFk9Llih8p9cYiZRQOzflt7djvuT/17K6hgHCbmu8Ieg=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH0PR10MB4408.namprd10.prod.outlook.com (2603:10b6:510:39::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 15:21:29 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6699.035; Thu, 31 Aug 2023
 15:21:29 +0000
Message-ID: <e73dbacc-f2ba-4210-879e-42524a4d6283@oracle.com>
Date: Thu, 31 Aug 2023 10:21:26 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR12CA0016.namprd12.prod.outlook.com
 (2603:10b6:610:57::26) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH0PR10MB4408:EE_
X-MS-Office365-Filtering-Correlation-Id: 03ace67c-2020-4f04-8ccb-08dbaa35f307
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fRGqlXQY67aQM+UPTstTIs+2TiaQWRcWgjx934Vcfw/YnDWZEaIyf9Zs2NfGiXdkNnZPXkwzUmnvzcM3BB99zRhUG07118HvZU++F3jmahfFTyUub360aOmN2IjR8+uKLtKKfiVys6c5CQKs3gxlcYoiyRcHxrGz3vzqNN9uiRpxPz3behE4R50FKFZNR1o15ur6RzzIBnt42BYrNZb4AYSp3fFEBLzHbf+Bpa1ZNfW/eIXqSHbz16U6NO+MxiwiwPMr9kLuk0CqsXKUTZ+tNAl+z/Pxl/ddiU6+w1i1n+tQmhXEJ3iWqm5yLwumk6yD6L1QIf2MApEq57DycekheOtPY016z7lobeOWEd66bbOfaWD8LmamwrNYMMU0eVccH9caxMIlCQTPOzMHPPtwtMy8v72aBfU0PYUQmGbtcneEvLVStgqrsqV9f/iPWxALEg4dadOONobsNML9cBb7+sHMOjy2PH2DH0WEoIr8gzYRWU65XwWORyt7v82po6/YLWxW41vYm61yR1u4Z19N2uYEf62ST3/6GssPS8Nnfcm+KNEE18Vnm0otc85WTRqmn12g4NTrmPJXhLM0Rf+YGGshhxXGEaIiTgo9TjLNX+Uqnx0reCH9TYreKgcrZGwrnxzzSab83hPahNLQnkOLnQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199024)(1800799009)(186009)(8936002)(31686004)(6486002)(6506007)(6666004)(6512007)(4326008)(38100700002)(36756003)(86362001)(2906002)(31696002)(8676002)(26005)(15650500001)(83380400001)(41300700001)(478600001)(66556008)(5660300002)(44832011)(66476007)(66946007)(6916009)(2616005)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3diZ3FFM1cra2JiRGFybGJwS3VUKy9Sb1ZUTXJIdHU5MkQyZjdCRWRTYmRR?=
 =?utf-8?B?cDVrY04xUE9XRzFtRnRhTURMTzFDMXJDSC9RNjVVeWw1OHdKMmVMMzVWbzZz?=
 =?utf-8?B?VWgvdWs1MUVpVXh2ajVBMDZxRnVxRHg5TEMzK0hkV24vbDJCUlJ5MHIyL0pR?=
 =?utf-8?B?NnZkdUFKdngvRE5ITXVSekQxeHhVaEdiZ2V2MlVPRDBiQkhSaEI5MUdGSUFI?=
 =?utf-8?B?WEVFMWk0b0EvWnpuTHJmalFnbDU3U2tlOVZMTW0xWWNRaVpRNVdtQ1lxUEd6?=
 =?utf-8?B?ZU52alp3QjE4ZC9SQVBGVmN5R3hsVlpCRE1ZbzFBYjJnK2MyWjFpeWhBcEVP?=
 =?utf-8?B?akEvcDF1eWZRNVF6Z1g4UGNGazJOQWtxNXZaY01WaFJkTW1IZ1JCOCs1QXA2?=
 =?utf-8?B?VkM0QTFxZS9WVXB5czJ4ZHRLemZpeFBVNnJtUjR1b1JjNkh4dmludXNmQlFG?=
 =?utf-8?B?T2h5WWl6UkVqUTA4TjJHM0xrZUZETjhzMzg2KzJFTG8vcnlPeEVWZlZCYmpW?=
 =?utf-8?B?MGRUTlZkSHdMMXYvRFlVZXhuY1Y1TGF5eHk0eDZiN2xBRVZ6TTd0anZiQmRa?=
 =?utf-8?B?TUtTVkR1ME9lQ3I4WlBmTG12ZjI3YUVTVUlOMzhVOG1lZS9MaWZYMTc0K0RC?=
 =?utf-8?B?RkZyMkdFTzBaV3pDamhES3dqY2dqcGFIaDFHdUMvUlhJcVVVanRVcGYxUjRn?=
 =?utf-8?B?Nmp5R2RzRWF2eHpLeVNob0E0MHFGN3A4aUJLWnM2cWROREc1ZEdoR0pJYTJo?=
 =?utf-8?B?WnZmU0tJMWJXQTFpL01Dc1FwbUhIRi9JTjVRdFE3bkZWVjBQQXcvWXpaNUNj?=
 =?utf-8?B?M1M2eWIrVnFpTU1KRnFXUCtXdnlWbFhUa053cEdIWU1ZQzJyQm1RMlRQYzJB?=
 =?utf-8?B?UUtzZGNHbzU2MU5HOU1KZzNkdVIyNjVEd1duWGp4STdJVjVVUlhMT1lZSjVx?=
 =?utf-8?B?NUcrOWNBMVdFUzkrMnY0MnBKQVlNVDF5anNiZEJ1UFZWOTJDVFdRU25ZY2VU?=
 =?utf-8?B?czV5dEpwYmVGeG13a0NicHlmaEJRT3FHYlJiKzVNb2dCU0EveHZBUUNsZmJi?=
 =?utf-8?B?dUpTVmRZVFV6NzVxdEpCMTRlcHY5TjZuOTJCSGZIZHo2UW5GNGtMMitjaG56?=
 =?utf-8?B?c2RkYVEvUlk5UnIrTXZNNy9RdWpNRWZGcXJ2VFVUR0swL3BLazJHMTJvdVp6?=
 =?utf-8?B?SzRIMDZTNyt0dVg0Snlld0t0aC80L0Y3dGN0RUJIWXVZa0t3RU0vYzIrWm1H?=
 =?utf-8?B?ZDZ5TElvZFlFczRXWWk3OG5TZ0FBd1d1NFhaN09GQzlGM3lZcURRQXhxZk43?=
 =?utf-8?B?NUZTK1pTNXJUMXVpY25TV0ZYZ1A1UGVyR1BiNHF0VEg1UXpVNytBZ3p0WVVn?=
 =?utf-8?B?MzU0anhBOFE3eXF6L0lqTGlCRjFNOW10VUpZeG1kdWk0MWRvNDNuNFVyV0dw?=
 =?utf-8?B?RU52c2RiMmlpSjl3cCt4dG1YeXVuUHRJbXFWM2NBQm5SVkdtRzNDekRTa1Yy?=
 =?utf-8?B?UHNHQWI1UFZrRWlVTCtWbHNsdzVhM2c5Yk9NalpNVC9wZ0c4anJyUGFGTjh3?=
 =?utf-8?B?eTVPaG5GMVVDdSt3N2ZiSlNoVDlVVmUrcUFyNUgyQ1JZd2gzMUFlZVVodTll?=
 =?utf-8?B?REdRVHhsR0tIRW5SajNNMmtuZ2NWQW1RVWlRWXBHOHU1QkJlT2hEOTlaREtN?=
 =?utf-8?B?M3VlWWpaVnV2U1JLWWQxNm5PeEx2RHZ4VlE0VXB1dnFtTmdiMWtCSDBNMEUy?=
 =?utf-8?B?RXVqd0c0bjh4dmVCUmx0bE02S3haQkRUckhNNVIraHcyTDFzcmloSEwySnVq?=
 =?utf-8?B?M1gycUxjRVN6cTgwQ1lkNUtHa2J6MHpRc0ZhYmRGSGkzNHpkSUNpSUdFMHVz?=
 =?utf-8?B?UXN6VXAyb3IvYmpSeVVIMlA0ajEzZ0o2b1ZNWXVuUnpPL1dBS043QTRoSytC?=
 =?utf-8?B?SUZYMGNXcVB5Smx6QjAxNSs1clRoczZyU3h0TVVIRGcrTE4yQUIvb1lZUURF?=
 =?utf-8?B?OGlEbW1yOUpuN0RZbHFvemd1VTlDK2lqRmRNTGVOcUcrV2l0MzZBNTlIT2hY?=
 =?utf-8?B?Sk1PUDRlOFByR1pueG9vQUs4eW5mOEZjUkNNb2x1c3ZpNmlUdzR2bzRUT1hs?=
 =?utf-8?B?RWtsVlBZQVRsVEIrMnRPNytMSmV6UVJBdUNmS3R2MDhwRkpsSXFQRGY3M0R3?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: XvkDj8B61ExdMOdF+M9hNgkUEl1ShMNNAfWuaxXAfeC7vvo0nNNBbNsrGsFKFHlReK0vb2sC1R5u44D8aV1tYEesS60C7Z/ewiu8hF7OPg8Wulu1ZH6PgcvcboYjYf1b5+X1u4eapC6cERnkKuc95Q4aPhndc2CRttiH72680rm0ZiO8oWGWSAswxHAs1wI4wNcfav+HGLUKr2D2/5CgiRKzAUU1iHo/owySOR1wpNfTF3/4FnzQqXYU/y9I+sidKo70lxYYPKINqy8iCQKFbzZWU37rUdTEXaMcpJ5yKv3tYZOn6JBfPBFFT37/CyfBb6EPWankaBdudnEWhFo/ycUsQajLAQnDheIv3S0bayknxSQpMPRCltQQ2XXjzKdOlCwZeulh1x3jrx303jrESzULAj48bq2lxFTzGYC/5ZacLRsJQHYxxTvVurXx04r2RhZwZ4N+33h9Hu+bpgeqy3IZ2UGQYBMSoDJJEh3QSPIbV4VURHAzie+U4CDTWQDKoSObA99QKTIYxgtpPuOlvGgns4IXxHYPBKZq75Ne2m68bNrtjMsqvwtrYE7QILfmNivE/tw4BEAW03wPoUL8+M37s5/xSBV3x1kfHFOupEsz/9U43RVkP8IcvjrP3emC81mE/peaCOOJh0SPG5HrmP/Aacr0lnq8araHI41JDrUO5MAVMf/Pcui1nKqz/2NjwKvjgh8TmISwITGj/NvN4iMCNlBhIHG8jF5RbK601SHPo8M002G4Dg8Qh0lAqvJ4NTEw3pukNk5/QvenxbmkQYBxljgr4afj06V0dpuFfrCZLG49duwb35rCMbzjfC12XqFRYgbrhRVtpl8LN5F4xtFMIl3lUYZrfn8gM1kRv+YkPzrRgMGIJUW/5y5tOsQE
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ace67c-2020-4f04-8ccb-08dbaa35f307
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 15:21:29.2837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jTs2D6u3n1Y6nnEzrf3QQFgWewOg3G50o6EM9Lig1vzXcB57KDjSu+2Wu3ign7D+CPll7Li3qYYQsgTB7Gi0UsrP6iXA+pxyhkbo53i9v1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4408
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_13,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0
 phishscore=0 mlxscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310138
X-Proofpoint-GUID: QC9LU6w01PiQ9XcC4zahF70lZzCqrLwU
X-Proofpoint-ORIG-GUID: QC9LU6w01PiQ9XcC4zahF70lZzCqrLwU
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 74f1456c4a5f3d7da4102ecae5c20370f89c6ed1:
 Merge tag 'linux-kselftest-fixes-6.5-rc3' of
 git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest
 (2023-07-18 08:56:02 -0700) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qbjUI-004qzG-A2
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.6
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit 74f1456c4a5f3d7da4102ecae5c20370f89c6ed1:

   Merge tag 'linux-kselftest-fixes-6.5-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest (2023-07-18 08:56:02 -0700)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.6

for you to fetch changes up to 0225e10972fa809728b8d4c1bd2772b3ec3fdb57:

   jfs: validate max amount of blocks before allocation. (2023-08-29 12:25:47 -0500)

----------------------------------------------------------------
A few small fixes

----------------------------------------------------------------
Alexei Filippov (1):
       jfs: validate max amount of blocks before allocation.

Andrew Kanner (1):
       fs/jfs: prevent double-free in dbUnmount() after failed jfs_remount()

Colin Ian King (1):
       jfs: remove redundant initialization to pointer ip

Immad Mir (1):
       FS: JFS: (trivial) Fix grammatical error in extAlloc

Liu Shixin via Jfs-discussion (1):
       jfs: fix invalid free of JFS_IP(ipimap)->i_imap in diUnmount

  fs/jfs/jfs_dmap.c   | 1 +
  fs/jfs/jfs_extent.c | 7 ++++++-
  fs/jfs/jfs_imap.c   | 1 +
  fs/jfs/namei.c      | 2 +-
  4 files changed, 9 insertions(+), 2 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
