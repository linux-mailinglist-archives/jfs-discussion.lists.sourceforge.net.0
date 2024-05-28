Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F088D2240
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 May 2024 19:15:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sC0Q9-000193-Qo;
	Tue, 28 May 2024 17:15:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sC0Q8-00018w-Ea
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 17:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mEihsLX31AhujNLDB+cGyaCI+ZrjPypwQNxbKXUu3ws=; b=FtvXq/sTAIkqVsBQRG0F+Z6JM1
 Gri/VZRtQJn2S+QM2h7FRR6c740pz1ThHvKs6eo1lp1wMyu83qIrO41ucqzrTtYeue52cBytCoHph
 Dd0o6fenwUll3bzFg+3Y4PIGDGXDd/mIoiSXGR+rVXxvT3B1jDTtPUmuYrFIOMGw8rWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mEihsLX31AhujNLDB+cGyaCI+ZrjPypwQNxbKXUu3ws=; b=ESld2gKIfmgNmsRB5Ofa/4WCSr
 PQL2DcStlvT9udcnwObBTJIg5Y2eyfmB108b9MBt7UmEK5BbAF1fibn3DLCFeGIoLOBESwMWf5MR0
 4RnFK6gOygzEt+FTJBbQhoMGd8u0lx3H/FgwDy9yzF1rPuv1xTn+eI3oHDIUmLUGgYkw=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sC0Q7-0001LC-LG for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 17:15:31 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44SBpEu5020709; Tue, 28 May 2024 17:15:24 GMT
DKIM-Signature: =?UTF-8?Q?v=3D1; _a=3Drsa-sha256; _c=3Drelaxed/relaxed;
 _d=3Doracle.com; _h?=
 =?UTF-8?Q?=3Dcc:content-transfer-encoding:content-type:date:from:in-reply?=
 =?UTF-8?Q?-to:message-id:mime-version:references:subject:to;_s=3Dcorp-202?=
 =?UTF-8?Q?3-11-20;_bh=3DmEihsLX31AhujNLDB+cGyaCI+ZrjPypwQNxbKXUu3ws=3D;_b?=
 =?UTF-8?Q?=3DUg0nMWhJtrY0yvyND/3vcIBTA+eCbZ6NHHwQ4s5vqkXdcbHFIuDHQTkBkPwK?=
 =?UTF-8?Q?xm/mFmzi_6+XHv2pOKQKXc3wPNbzjdGab13L147MRYjKTwaZpRx7PptEx+CXIRJ?=
 =?UTF-8?Q?SiPCZ4Wah88kfj_VrPLVAfE9eVuxKm9NODnisj/YAEMimHx6YohNiGpv6mYjhB6?=
 =?UTF-8?Q?zlbEHU8qhJsU8fsOeFOU_3rWPb7Ii5LR+Wxjd3VDXAFjyjT4ThJ5ciEFUnRxm2S?=
 =?UTF-8?Q?Hg8XVnHhQ7BpYqtiKTqsyDgyoU_6i3kc+84s0XCFwboX5DG7wEg05UVUtqf92dz?=
 =?UTF-8?Q?4QT/dOkVyhF7DBNPG1d3izf4woHTZBW2_qw=3D=3D_?=
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3yb8p7mtty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2024 17:15:24 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 44SGJA6S025768; Tue, 28 May 2024 17:15:23 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam02lp2040.outbound.protection.outlook.com [104.47.56.40])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3yc50q5ke3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2024 17:15:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKRSYZ5S8eSf0blwroXm0DYcz73cZQsSLPSDHNDCtT6nqAyyCwQD6v8OYVAOh3cW/YBYVLdwm7G+2Fl07BssMP3Kn8WqubYpvnBZxszbBLy1F0WQjp0GjYErh4hAp4gpioQ4MnooGccVp5Pa1chr5p7H3vxJKZX6mx18u0VHp2r6CoW3ULglsAXfsjxVBKTqCCZ5Qaffsky8c5u4vppNwSek1VVRcIMcCo/BBiHpBDlQYM/HHZ0ZHPMIuJNMmg35/J0AmcDrklK1HqceYq6ar7NnWpU/sZDbAJDwdYD3f6lg7OGcrVgxR7eGOvAoSS9Wd/IgRepyyvWMhN387AO9OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEihsLX31AhujNLDB+cGyaCI+ZrjPypwQNxbKXUu3ws=;
 b=dh6AgRiuTD/4J8VdL4OLvnD2Ld74WLr3PkHRFutEZ04OE7UgGdq3wtW4o3dU3Ox1TsrLAiA6lz9bUq+k2pvHiT1XGlkyoLQWcgqK8XBvRipRURvWO/DE40xXh7KLbn1BSHjRZBP7+UywAMjZrtXxHSwiyjPzym/oF1KxNXTqxUaUCsf1RGwPDiJhGBAcY2k2okGzGJ9DYsoYn53a3w0v7iZEMqqiDL1vyPtzwZGKAr3jOYULjWv6Atotzj6MPndi7igPQoQ8nmbT2MhbllY6LK4CyPmpwZbdf0apeD8536uN/W/Crrcgzu9Uomqc+Yfv1dMxNDeKUI/UktHlN5NAbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEihsLX31AhujNLDB+cGyaCI+ZrjPypwQNxbKXUu3ws=;
 b=ENy+RM4kRLccjhj+wcVHaT48c/i9E9Yv42p/PPFjTnrnNFPwlEvmGmlC2kXxJfG1yt3qpEyvICRLD11O6yF8xbIM9ZGdbsl31VVTUQCTaTMAxgRwui8KbJVhCpA8kjAMYKQLH6eY97p/Sc1CzBaabnhBT4hnsaDsMOB5yRp2MkM=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SN4PR10MB5574.namprd10.prod.outlook.com (2603:10b6:806:205::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Tue, 28 May
 2024 17:15:21 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7587.035; Tue, 28 May 2024
 17:15:20 +0000
Message-ID: <32b5fe33-f91d-44c2-b304-d71b6e4f90dd@oracle.com>
Date: Tue, 28 May 2024 12:15:17 -0500
User-Agent: Mozilla Thunderbird
To: lei lu <llfamsec@gmail.com>
References: <20240528103748.15068-1-llfamsec@gmail.com>
 <464880c5-7e79-4454-813c-4ade41508ac3@oracle.com>
 <CAEBF3_bkdmn9-Queiec5gDJB1=cELwmsO6+hMhoDRGSnqH5caQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAEBF3_bkdmn9-Queiec5gDJB1=cELwmsO6+hMhoDRGSnqH5caQ@mail.gmail.com>
X-ClientProxiedBy: CH0PR03CA0388.namprd03.prod.outlook.com
 (2603:10b6:610:119::30) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SN4PR10MB5574:EE_
X-MS-Office365-Filtering-Correlation-Id: 5faaa5fb-8bef-4429-6868-08dc7f39c08a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnF6SEcrMUQzNnBNL3FiS2x2QmpRVytsZFNSZG5WZjQvZ1U2bWh4MTNGcHNl?=
 =?utf-8?B?Rjlld1ZHM3NLbmtreURRclU2eXB5bGZuNDRnNFZQdlpEZEFwUGJVbHhUbitR?=
 =?utf-8?B?bEsxZjIySktROTdmN2FoVlBmM0kyRzZOOHNSVjhKNEdic1p0dDV6TG9uaHkx?=
 =?utf-8?B?dWx5NGRmSlRDbFk2K2dIeFFWczBBQ3BIT0tXK3QwdVZLTWc0amJQSWgveUMy?=
 =?utf-8?B?ZXFpUkZzK3kvU3JCZk5abkRaTkpGdlcxTHBiV3k0YmxmckVGcXNrbGthdUpX?=
 =?utf-8?B?R3Rvd2VGSFVWYU0rTnpacDBlRDZlY3M5em4xb1J2c3JOR1RiNkh4UmwxTDZT?=
 =?utf-8?B?RUFHcCtlek5tV0Z1aHU1cGliS3l4SGpGV2FlQlJwUS9KMmYzSnNKbzJqbGpQ?=
 =?utf-8?B?andlTnBTaktWdHBCcmhVOC9LYzRlcXl3dFVrdDVuWVlLbkJqeGZXWkFRMDZW?=
 =?utf-8?B?czkwT2luSDVmbWFBRXBxYnlkQSs4a2VqVGpURmJUNmM4aGd3UnZMbnlJV0NL?=
 =?utf-8?B?NzEvbmV1OW9qYjZlRmRSWnFDLzRGYnBvSEpBVjY1SWtpU1BFelNUSWxBc1lz?=
 =?utf-8?B?UmFXMmN1TmxCamNzSm1CRCtkd1dkbFQ0Qmd3NkZNZnVSY2JZeHowb1gwT3Z4?=
 =?utf-8?B?TWhPT3JRSUdkd2JGV3JFUVhpcnRyZXNyZWpPNHlidnkvUnVIdVV6d0k4U1U0?=
 =?utf-8?B?Uk9xeHRpSzB4eTJVUnk5L3BadXF0T0FBVUxlNkxRd3dnZ2lHOXV0bWdMNmZJ?=
 =?utf-8?B?Mi92dnBDTTV1M1NNSXZtamY0NGpGMUV0ZllCRE11Rkh1WjVBSXd1QUNJaGFT?=
 =?utf-8?B?dzhnWk04OXdpN1RnRUltQTByT2gzekplZ2liM1FKaGttSjl2dmFCR3QweU94?=
 =?utf-8?B?SHdYUjhlWndqNVc0V3g2c2pjVmhGaTgxMnZybzFRM052eDdBUW42WmwwUEhx?=
 =?utf-8?B?R1VNNmtTNmNJQzVyY212Z1N6bXl6UGpXYW0yT2ozMlgrZk1IWjk2MGtWTzBo?=
 =?utf-8?B?WUhnUFFMSGdNM25JTmtoNTNmTUdtMnBid2N1NlZ5NFk4WTEvcnFwODJtdjEw?=
 =?utf-8?B?cVVGU2xYQW9TWkRnSzZOdUFPRTkrbGhxUEJwNUM1ejdaUjVlR0tFTFJ5MEFI?=
 =?utf-8?B?NHJyUVRFOERGZmFHZE5KMXhveSsxdUFxZG16OG9nd0Q4WWtzVVBsMkw4ekxL?=
 =?utf-8?B?MERhQXFIM2xxbFRmRkpjUzZJR1dxSURQRnMvcDZCamVXQitlU0JYYW5SemlO?=
 =?utf-8?B?bEFBaXExR3U3UHdLRDgwVWNXRGRrNXlvUHBsWEYxV3ljbW11bUhvck5ORjd0?=
 =?utf-8?B?bUc5ZWlLaTc0LzN0b1JUSGhNRUp6TGd2dTluV2l0TEdJRDhXTjVoK2l2aFhK?=
 =?utf-8?B?QW0xbDhGMjBWbTZ5Y3lIcGRjWVltTWtFU0NBc1R4UG9sZ2taTUk2Q2JuQ1BN?=
 =?utf-8?B?bFRCZEZSOXJqN0RVRW9JN08yZnNGUURLblBMVFNnMXMxN1l2a2hYTmFJRHNS?=
 =?utf-8?B?L282YXI1M090OWN1bnhSNUVSbG9yQ3RIWWJTbkhlWnNMMDFhdUNYTmxMNEp0?=
 =?utf-8?B?NG9SZG1jMnlqVFRQcWZWa1Z4TlMxenYzRWpWS09uaUdFeVkzUlEzK2oxcDl0?=
 =?utf-8?B?cmtzaDR0cVRwYzZFKzVqU0hGQWFFd1BCN0xsWWs0N1Foa1NyQzZ1R1Z3VzBT?=
 =?utf-8?B?SFV0THVNYVR6NHhaWnZlM3JibDFtaURpK0dSZVNNWlFtMUVjY2Z3ZU5BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmFleEJYTkZkbEdFbTBibUxqdHpEWVlaK1BObkRmVGFHRVNPaG9vVG5NZkpO?=
 =?utf-8?B?bElwOFBxV3NHT0NhMENxd1ZLejV5V1ZXRUMrckVmS2hqTis4L2pRUm51UnZU?=
 =?utf-8?B?d3BrQ2lFOUFHeXlMOFIvcXI2WlRjQ1RVbXNXVzU0VG4yZDh4ZmY2Q2lyKzhu?=
 =?utf-8?B?S3BjOW4rOEh6U0V1WVkyMjl4UXdOZUt0eVJFczVPRDVCMnNnV2lDazltVmpn?=
 =?utf-8?B?dUhQdU1lU09lQXJJUzdyZ2ZxM3QrTy9QNU5RY0ZQMjI0NzMySnhoM1dXL3R5?=
 =?utf-8?B?bllqbkJBRk1Xdmk0R2dGUFhsOThyaXRteEZsbjN4R3BWQlFFdFJUZVM1WitY?=
 =?utf-8?B?MVJIMHBkRXJiN3RIaVpqV0RmU2FhMTU2eXFLTXUyU0RtWHF0VUluVHdlQUk0?=
 =?utf-8?B?OUw1L0taK28xYTdhUFNrdWJReFZOMnZkRGU4OVd2bmQ4NllyMmFxTHVFTEVw?=
 =?utf-8?B?ZEtJQlVleDRmU21IV2FPcHZRYmRiS3VjU1JxNk1jOEh6aWROQi9yZ0ptZkZq?=
 =?utf-8?B?NXlERC80Q1pkaXpOVE1MeEFTNCtValNzSGtjcFFiWkY5cDRpQ0NXUFNOc1hU?=
 =?utf-8?B?L1B4ajlINkVmY1V3ZzFsZGFnVXJqQ3BGVGl5WTZzcHR4RHlRRFZjNlpZUGpK?=
 =?utf-8?B?cENEcEpMenh2ekppWk1yc1BoRFJITW1nSmR2anM0UytmVnJZcGhNWldXVG1U?=
 =?utf-8?B?RUZ4cUVFMlVQdUlndm1tUEZNaXh4Y0duNEVXanJtYXVpRlBlWGtpdVZ4d2oy?=
 =?utf-8?B?aTdFYzE3OHBLL2Zrb0JEMHN1bDFBK2FEOTdLUTZxQkRVQVZBYVdhTGxSSTVS?=
 =?utf-8?B?MldnRGhWbGZ6aDJHbEFaYmZxYXhhY1ZlVVVRYllMMVk4dU91WS8rWlprZFJX?=
 =?utf-8?B?OXhvQTVQdUVETXRsd0lFSkNXNXo0RERVUGtPcTJjZ2Y1MzNDcjFTV2hXWmVW?=
 =?utf-8?B?N2lpMWwrOHhxR1NDMVE2MDYxajRhOVRVNk1vc2c0aWI1QW1LWXhBNk9SWllx?=
 =?utf-8?B?Z3VJR2hGc1RpZDgweDVLNzhTZHg0T2JDSzF6RUNVUjJXeVV0bjQ0Nk5uZ3h3?=
 =?utf-8?B?V1drZml5V0hBeExnam1CS0VrYXlxZm5zb0FRZmt0azN4eEhLTjljME5ORmty?=
 =?utf-8?B?TUxMZk5UZTRUYURyT1VuNG1ZM0RnL3NwWk0vQ1VJam0zb0NRckdFT212bTkv?=
 =?utf-8?B?L2F5Q3QxZ0JHd0J1Y25ndW5NYUhiQzF6dmJWVC9kQkRUcEZPeEJCeHV4bDBO?=
 =?utf-8?B?bkpCc1hUV1ZOeTEya1BFaFpZbnd6T0lxRlJmZUNaODJDaGx6Q09JYU1KeGVT?=
 =?utf-8?B?R29HWDloTllndjdzOWMrbnpOUlpKOUViRzlyZ1NFNTVNOVFXaHZsVnlkYUVH?=
 =?utf-8?B?SUJ3WDVEMFBVUk1pV2lXRVJwd1AwNkdxWVBEbm1OL3F6aU5FTzVMVDhhSXlW?=
 =?utf-8?B?ZW1HYVVBKytxeEFNQ3hJUGhaZnM5Rkc5dnJWT0NzRjNreGpOWTJQSzA4NVJH?=
 =?utf-8?B?ZnFlS280VFJrajBHdjNzelpmVm9Zc0wyZUp5cVoySnNuY2oxblU2UFJ2bTVL?=
 =?utf-8?B?Ymk0MC9YV0xGcU81Yk5Zc24wcTZ5dnNyTEl4TmxiM0cwMjVCbDFyVmovc3Er?=
 =?utf-8?B?YmY3V0lScmo2WU5aakdhd1Y0SFJGOFhYam1jbHRSL2g0UHBITVdBT3cycmdM?=
 =?utf-8?B?SkZSYUV2a1lMU0NTWFhDQUxrcVR6aTBJOFlESS9sWTdrbGNjTUdpZU1ySnZX?=
 =?utf-8?B?VkwzZXpyQzVac244ZzhQYW9rVGdLT1ptNkZMd0k3ZHlOZFZKcTdYcG4rdmtD?=
 =?utf-8?B?QTQ4K1llb0FXQ0o5Q3hBcm15eDRDMTIzZ1Q4Y0MyVS9oNXFWMkxWaURpRjFn?=
 =?utf-8?B?R2xLbVlXdjdjSVN3NEVORFBvMXNyV1ozMVo2bjNYR1BFYnFYK0xsR1Rlcm0z?=
 =?utf-8?B?R2RHL2VqcmJFV290cEZNWGk2ejB4UFFmZXc2VXptV2Jrd0lyd2EwNThLamJr?=
 =?utf-8?B?QTRockt5UXJUdisvbHNSek50ZzA0UTZzbUtmVnRjNDZoUDN3cWVYRXQ5T1BH?=
 =?utf-8?B?Zml5eHM0VFNWQW9LTzRWM2w0ZHV0dUpCQXd0UFpyNEtnZlFEYkRhb2xYc2U3?=
 =?utf-8?B?TDJUZzZEend4M0hpazB2WkYzV3RzMW9pT3ZRY0FKRCs0WHNydEk4dGl4MjBU?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 1epcTF8W/z8Q7Ws6sX4XwDAEKwodc5z2FhHhJmb+B9+2GB0kG4xXDWlilSFUsWY5v+1LK0nU32N3UBFsfS5VmkC/vv2US7EaXUglvfoUm5lS+VO9NaX3QhT41jnhmQngcUV5B+pcxywhvsB06RRt32eX1ad/gZe2jW6nz8fZJkAE5Jf3qepuFl/MveiHpxTjvCJpfY6suVC4J/d1IyKS8jbfiiblC12Dik+SZ5yjS1vU/OyfjQTk/C42uPZYi3zkPmOEI/bI44PRVGGOXeapI1LODQgKIueX17CSVHLaO4v4t2ViLSE2Xg/9VWbeS75NGBepEehGC8aauq3pyJfArwMkWmpeuVZiNl2eiUSQBLrITTbaNncHHX4YbzbIkj/RhxuVFeeeolKi3K2XXTAQrCykfi60K6NVRoaTjWrf1IYjUoxwvHo0Xcxt1L6V+/5wtzxn/mICM8h5AwCrUgdfK9pjLCDSVxHDZXgr6Y/vD2JPSNFjk5hcvEwZnIQxeZsd8Z7V++DFIoB45JH8KgXosPSVnSpLwbFpViqEz8T0YqILtSfbwx7+Cib76rJgef0iY5HVPnkYW3hax2NYW8CTnZFVHIfQWwUlOA94zPovYs8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5faaa5fb-8bef-4429-6868-08dc7f39c08a
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 17:15:20.8881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5KRirsnTym4J7huAMfwobsN9f+iQ9P2Qymg2XZfWJzXunj/tMuwTNfFNyc/iIFJ8ECL3fVqDTCx5rGNNPnBPqBjiHYf9n2AoJAgwFI9DA5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5574
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-28_12,2024-05-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=0
 adultscore=0 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2405280128
X-Proofpoint-ORIG-GUID: xrOEvvFlE94cWCZpGLnfQB0x_vePStHa
X-Proofpoint-GUID: xrOEvvFlE94cWCZpGLnfQB0x_vePStHa
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/28/24 12:06PM, lei lu wrote: > Dave Kleikamp <dave.kleikamp@oracle.com>
    于2024年5月29日周三 00:41写道： >> >> On 5/28/24 5:37AM, lei lu
   wrote: >>> Add a check to make sure jfs_ea don't s [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [205.220.165.32 listed in sa-accredit.habeas.com]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC0Q7-0001LC-LG
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNS8yOC8yNCAxMjowNlBNLCBsZWkgbHUgd3JvdGU6Cj4gRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5r
bGVpa2FtcEBvcmFjbGUuY29tPiDkuo4yMDI05bm0NeaciDI55pel5ZGo5LiJIDAwOjQx5YaZ6YGT
77yaCj4+Cj4+IE9uIDUvMjgvMjQgNTozN0FNLCBsZWkgbHUgd3JvdGU6Cj4+PiBBZGQgYSBjaGVj
ayB0byBtYWtlIHN1cmUgamZzX2VhIGRvbid0IHN0cmF5IGJleW9uZCB2YWxpZCBtZW1vcnkgcmVn
aW9uLgo+Pgo+PiBJIGRvbid0IGxpa2UgdGhlIGxvbmcgc3RhY2sgdHJhY2UgaW4gdGhlIHBhdGNo
IGRlc2NyaXB0aW9uLiBJJ2QgcmF0aGVyCj4+IGhhdmUgYSBkZXNjcmlwdGlvbiBvZiB0aGUgcHJv
YmxlbS4gSSB0aGluayB0aGUgcHJvYmxlbSBpcyB0aGF0IHdlIGFyZQo+PiBub3QgY2hlY2tpbmcg
dGhlIHRoZSBlbnRpcmUgZWEgaXMgd2l0aGluIHRoZSBzaXplIG9mIHRoZSBlYWxpc3QuCj4+Cj4g
Cj4gVGhhbmtzLiBHb3QgaXQuIE1heWJlIEkgc2hvdWxkIHNlbmQgYSB2MiB2ZXJzaW9uLgoKVGhh
dCB3b3VsZCBiZSBncmVhdC4gSSBhcG9sb2dpemUgZm9yIG5vdCBiZWluZyB2ZXJ5IHJlc3BvbnNp
dmUgZWFybGllci4gCkkndmUgZmFsbGVuIGJlaGluZCBvbiBqZnMgbGF0ZWx5LgoKPiAKPj4+Cj4+
PiBbICAzMTIuNTgzODk5XSBCVUc6IEtBU0FOOiBzbGFiLXVzZS1hZnRlci1mcmVlIGluIF9famZz
X2dldHhhdHRyKzB4MmMwLzB4MmYwCj4+PiBbICAzMTIuNTg0MDA5XSBSZWFkIG9mIHNpemUgMSBh
dCBhZGRyIGZmZmY4ODgxMDhhZjAwMDAgYnkgdGFzayBnZXRmYXR0ci8yMzAKPj4+IFsgIDMxMi41
ODQwMDldCj4+PiBbICAzMTIuNTg0MDA5XSBDUFU6IDAgUElEOiAyMzAgQ29tbTogZ2V0ZmF0dHIg
Tm90IHRhaW50ZWQgNi44LjIgIzEwCj4+PiBbICAzMTIuNTg0MDA5XSBIYXJkd2FyZSBuYW1lOiBR
RU1VIFN0YW5kYXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwgQklPUyAxLjE1LjAtMSAwNC8w
MS8yMDE0Cj4+PiBbICAzMTIuNTg0MDA5XSBDYWxsIFRyYWNlOgo+Pj4gWyAgMzEyLjU4NDAwOV0g
IDxUQVNLPgo+Pj4gWyAgMzEyLjU4NDAwOV0gIGR1bXBfc3RhY2tfbHZsKzB4NTAvMHg3MAo+Pj4g
WyAgMzEyLjU4NDAwOV0gIHByaW50X3JlcG9ydCsweGNjLzB4NjIwCj4+PiBbICAzMTIuNTg0MDA5
XSAgPyBfX3ZpcnRfYWRkcl92YWxpZCsweGNiLzB4MzIwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBf
X2pmc19nZXR4YXR0cisweDJjMC8weDJmMAo+Pj4gWyAgMzEyLjU4NDAwOV0gIGthc2FuX3JlcG9y
dCsweGIwLzB4ZTAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9famZzX2dldHhhdHRyKzB4MmMwLzB4
MmYwCj4+PiBbICAzMTIuNTg0MDA5XSAgX19qZnNfZ2V0eGF0dHIrMHgyYzAvMHgyZjAKPj4+IFsg
IDMxMi41ODQwMDldICA/IF9fZG9fc3lzX25ld2xzdGF0KzB4ODIvMHgxMDAKPj4+IFsgIDMxMi41
ODQwMDldICA/IF9fcGZ4X19famZzX2dldHhhdHRyKzB4MTAvMHgxMAo+Pj4gWyAgMzEyLjU4NDAw
OV0gID8gdmZzX3N0YXR4KzB4MTEzLzB4NDkwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyB2ZnNfZnN0
YXRhdCsweDc3LzB4ZjAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9fZG9fc3lzX25ld2xzdGF0KzB4
ODIvMHgxMDAKPj4+IFsgIDMxMi41ODQwMDldICA/IGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdm
cmFtZSsweDZmLzB4NzcKPj4+IFsgIDMxMi41ODQwMDldICBqZnNfeGF0dHJfZ2V0KzB4M2QvMHg1
MAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19wZnhfamZzX3hhdHRyX2dldCsweDEwLzB4MTAKPj4+
IFsgIDMxMi41ODQwMDldICBfX3Zmc19nZXR4YXR0cisweDExMS8weDE4MAo+Pj4gWyAgMzEyLjU4
NDAwOV0gID8gX19wZnhfX192ZnNfZ2V0eGF0dHIrMHgxMC8weDEwCj4+PiBbICAzMTIuNTg0MDA5
XSAgPyBrbWFsbG9jX3RyYWNlKzB4ZTQvMHgyODAKPj4+IFsgIDMxMi41ODQwMDldICA/IGxvY2ty
ZWZfZ2V0KzB4ZTYvMHgxYjAKPj4+IFsgIDMxMi41ODQwMDldICBpbm9kZV9kb2luaXRfdXNlX3hh
dHRyKzB4YjUvMHgzYzAKPj4+IFsgIDMxMi41ODQwMDldICBpbm9kZV9kb2luaXRfd2l0aF9kZW50
cnkrMHg0ZTQvMHhmYTAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X21lbXBvb2xfZnJlZV9z
bGFiKzB4MTAvMHgxMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19wZnhfaW5vZGVfZG9pbml0X3dp
dGhfZGVudHJ5KzB4MTAvMHgxMAo+Pj4gWyAgMzEyLjU4NDAwOV0gIHNlbGludXhfZF9pbnN0YW50
aWF0ZSsweDI3LzB4MzAKPj4+IFsgIDMxMi41ODQwMDldICBzZWN1cml0eV9kX2luc3RhbnRpYXRl
KzB4NWEvMHhkMAo+Pj4gWyAgMzEyLjU4NDAwOV0gIGRfc3BsaWNlX2FsaWFzKzB4ODEvMHhjNDAK
Pj4+IFsgIDMxMi41ODQwMDldICA/IHVubG9ja19uZXdfaW5vZGUrMHg4OS8weGMwCj4+PiBbICAz
MTIuNTg0MDA5XSAgamZzX2xvb2t1cCsweDE1Yi8weDFiMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8g
X19wZnhfamZzX2xvb2t1cCsweDEwLzB4MTAKPj4+IFsgIDMxMi41ODQwMDldICA/IGRfYWxsb2Mr
MHgxNzkvMHgxZTAKPj4+IFsgIDMxMi41ODQwMDldICA/IGRfYWxsb2NfcGFyYWxsZWwrMHg0NzIv
MHg5YjAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X3NlbGludXhfaW5vZGVfcGVybWlzc2lv
bisweDEwLzB4MTAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X2RfYWxsb2NfcGFyYWxsZWwr
MHgxMC8weDEwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBfcmF3X3NwaW5fbG9jaysweDgwLzB4ZTAK
Pj4+IFsgIDMxMi41ODQwMDldICA/IGxvY2tyZWZfZ2V0X25vdF9kZWFkKzB4ZmUvMHgxZjAKPj4+
IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X2xvY2tyZWZfZ2V0X25vdF9kZWFkKzB4MTAvMHgxMAo+
Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19wZnhfbWFrZV92ZnN1aWQrMHgxMC8weDEwCj4+PiBbICAz
MTIuNTg0MDA5XSAgX19sb29rdXBfc2xvdysweDE5NC8weDM4MAo+Pj4gWyAgMzEyLjU4NDAwOV0g
ID8gX19wZnhfX19sb29rdXBfc2xvdysweDEwLzB4MTAKPj4+IFsgIDMxMi41ODQwMDldICB3YWxr
X2NvbXBvbmVudCsweDJlZi8weDUyMAo+Pj4gWyAgMzEyLjU4NDAwOV0gIHBhdGhfbG9va3VwYXQr
MHgxNDcvMHg2ZjAKPj4+IFsgIDMxMi41ODQwMDldICA/IGttZW1fY2FjaGVfYWxsb2MrMHhkZS8w
eDI1MAo+Pj4gWyAgMzEyLjU4NDAwOV0gIGZpbGVuYW1lX2xvb2t1cCsweDFjNy8weDU1MAo+Pj4g
WyAgMzEyLjU4NDAwOV0gID8ga2FzYW5fc2F2ZV9zdGFjaysweDI0LzB4NTAKPj4+IFsgIDMxMi41
ODQwMDldICA/IGthc2FuX3NhdmVfdHJhY2srMHgxNC8weDMwCj4+PiBbICAzMTIuNTg0MDA5XSAg
PyBfX3BmeF9maWxlbmFtZV9sb29rdXArMHgxMC8weDEwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBp
cnFfZXhpdF9yY3UrMHg3ZS8weGIwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBzeXN2ZWNfYXBpY190
aW1lcl9pbnRlcnJ1cHQrMHgzOS8weDgwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBhc21fc3lzdmVj
X2FwaWNfdGltZXJfaW50ZXJydXB0KzB4MWEvMHgyMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19w
ZnhfcmVhZF9ocGV0KzB4MTAvMHgxMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gdXBkYXRlX2xvYWRf
YXZnKzB4MTI0LzB4MWZkMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gaHJ0aW1lcl9hY3RpdmUrMHgx
ODcvMHgyMDAKPj4+IFsgIDMxMi41ODQwMDldICA/IHJ1bl9wb3NpeF9jcHVfdGltZXJzKzB4YTEv
MHg2NDAKPj4+IFsgIDMxMi41ODQwMDldICB2ZnNfc3RhdHgrMHgxMTMvMHg0OTAKPj4+IFsgIDMx
Mi41ODQwMDldICA/IF9fcGZ4X3Zmc19zdGF0eCsweDEwLzB4MTAKPj4+IFsgIDMxMi41ODQwMDld
ICA/IGdldG5hbWVfZmxhZ3MucGFydC4wKzB4MWMyLzB4NGMwCj4+PiBbICAzMTIuNTg0MDA5XSAg
dmZzX2ZzdGF0YXQrMHg3Ny8weGYwCj4+PiBbICAzMTIuNTg0MDA5XSAgX19kb19zeXNfbmV3bHN0
YXQrMHg4Mi8weDEwMAo+Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19wZnhfX19kb19zeXNfbmV3bHN0
YXQrMHgxMC8weDEwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBfX2RvX3N5c19wcmxpbWl0NjQrMHgy
NGIvMHg2NjAKPj4+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X19fZG9fc3lzX3BybGltaXQ2NCsw
eDEwLzB4MTAKPj4+IFsgIDMxMi41ODQwMDldICA/IHRpY2tfcHJvZ3JhbV9ldmVudCsweDdiLzB4
MTAwCj4+PiBbICAzMTIuNTg0MDA5XSAgPyBocnRpbWVyX2ludGVycnVwdCsweDUxMi8weDZlMAo+
Pj4gWyAgMzEyLjU4NDAwOV0gID8gX19kb19zb2Z0aXJxKzB4MThhLzB4NTc1Cj4+PiBbICAzMTIu
NTg0MDA5XSAgPyBmcHJlZ3NfYXNzZXJ0X3N0YXRlX2NvbnNpc3RlbnQrMHg3YS8weGMwCj4+PiBb
ICAzMTIuNTg0MDA5XSAgZG9fc3lzY2FsbF82NCsweGIzLzB4MWIwCj4+PiBbICAzMTIuNTg0MDA5
XSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NmYvMHg3Nwo+Pj4gWyAgMzEyLjU4
NDAwOV0gUklQOiAwMDMzOjB4N2Y3ZjUyMmU2OWM2Cj4+PiBbICAzMTIuNTg0MDA5XSBDb2RlOiAz
NCAwZSAwMCA2NCBjNyAwMCAxNiAwMCAwMCAwMCBiOCBmZiBmZiBmZiBmZiBjMyAwZiAxZiA0MCAw
MCA0MSA4OSBmOCA0OCA4OSBmNyA0OCA4OSBkNiA0MSA4MyBmOCAwMSA3NyAyOSBiOCAwNiAwMCAw
MCAwMCAwZiAwNSA8NDg+IDNkIDAwIGYwIGZmIGZmIDc3IDAyIGMzIDkwIDQ4IDhiIDIKPj4+IFsg
IDMxMi41ODQwMDldIFJTUDogMDAyYjowMDAwN2ZmZjhjMDc2MmM4IEVGTEFHUzogMDAwMDAyNDYg
T1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMDYKPj4+IFsgIDMxMi41ODQwMDldIFJBWDogZmZmZmZm
ZmZmZmZmZmZkYSBSQlg6IDAwMDAwMDAwMDAwMDAwMDggUkNYOiAwMDAwN2Y3ZjUyMmU2OWM2Cj4+
PiBbICAzMTIuNTg0MDA5XSBSRFg6IDAwMDA3ZmZmOGMwNzYzMjAgUlNJOiAwMDAwN2ZmZjhjMDc2
MzIwIFJESTogMDAwMDdmZmY4YzA3NjQxMAo+Pj4gWyAgMzEyLjU4NDAwOV0gUkJQOiAwMDAwN2Zm
ZjhjMDc2NDEwIFIwODogMDAwMDAwMDAwMDAwMDAwMSBSMDk6IDAwMDA3ZjdmNTIzY2FiZTAKPj4+
IFsgIDMxMi41ODQwMDldIFIxMDogMDAwMDdmZmY4YzA3NjQwMCBSMTE6IDAwMDAwMDAwMDAwMDAy
NDYgUjEyOiAwMDAwN2ZmZjhjMDc2MzIwCj4+PiBbICAzMTIuNTg0MDA5XSBSMTM6IDAwMDAwMDAw
MDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDAwMDAwMDAwMDEwOAo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IGxlaSBsdSA8bGxmYW1zZWNAZ21haWwuY29tPgo+Pj4gLS0tCj4+
PiAgICBmcy9qZnMveGF0dHIuYyB8IDIzICsrKysrKysrKysrKysrKysrKystLS0tCj4+PiAgICAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZnMvamZzL3hhdHRyLmMgYi9mcy9qZnMveGF0dHIuYwo+Pj4gaW5kZXggMGZi
N2FmYWMyOThlLi4xM2IyM2ZhMjhkYzggMTAwNjQ0Cj4+PiAtLS0gYS9mcy9qZnMveGF0dHIuYwo+
Pj4gKysrIGIvZnMvamZzL3hhdHRyLmMKPj4+IEBAIC03OTUsNyArNzk1LDcgQEAgc3NpemVfdCBf
X2pmc19nZXR4YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLCB2b2lk
ICpkYXRhLAo+Pj4gICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBidWZfc2l6ZSkKPj4+ICAg
IHsKPj4+ICAgICAgICBzdHJ1Y3QgamZzX2VhX2xpc3QgKmVhbGlzdDsKPj4+IC0gICAgIHN0cnVj
dCBqZnNfZWEgKmVhOwo+Pj4gKyAgICAgc3RydWN0IGpmc19lYSAqZWEsICplYV9lbmQ7Cj4+PiAg
ICAgICAgc3RydWN0IGVhX2J1ZmZlciBlYV9idWY7Cj4+PiAgICAgICAgaW50IHhhdHRyX3NpemU7
Cj4+PiAgICAgICAgc3NpemVfdCBzaXplOwo+Pj4gQEAgLTgxNSw5ICs4MTUsMTYgQEAgc3NpemVf
dCBfX2pmc19nZXR4YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLCB2
b2lkICpkYXRhLAo+Pj4gICAgICAgICAgICAgICAgZ290byBub3RfZm91bmQ7Cj4+Pgo+Pj4gICAg
ICAgIGVhbGlzdCA9IChzdHJ1Y3QgamZzX2VhX2xpc3QgKikgZWFfYnVmLnhhdHRyOwo+Pj4gKyAg
ICAgZWFfZW5kID0gRU5EX0VBTElTVChlYWxpc3QpOwo+Pgo+PiBNYXliZSBjYWxsIHRoaXMgZWFs
aXN0X2VuZC4KPiAKPiBTdXJlLCBpdCdzIG1vcmUgY2xlYXIuCj4gCj4+Cj4+Pgo+Pj4gICAgICAg
IC8qIEZpbmQgdGhlIG5hbWVkIGF0dHJpYnV0ZSAqLwo+Pj4gLSAgICAgZm9yIChlYSA9IEZJUlNU
X0VBKGVhbGlzdCk7IGVhIDwgRU5EX0VBTElTVChlYWxpc3QpOyBlYSA9IE5FWFRfRUEoZWEpKQo+
Pj4gKyAgICAgZm9yIChlYSA9IEZJUlNUX0VBKGVhbGlzdCk7IGVhIDwgZWFfZW5kOyBlYSA9IE5F
WFRfRUEoZWEpKSB7Cj4+PiArICAgICAgICAgICAgIGlmICh1bmxpa2VseShlYSArIDEgPiBlYV9l
bmQpIHx8Cj4+Cj4+IFdvbid0IHRoZSBhYm92ZSBhbHdheXMgYmUgdHJ1ZSwgc2luY2Ugd2UgZXhp
dCB0aGUgbG9vcCB3aGVuIGVhIGlzIG5vdAo+PiBsZXNzIHRoYW4gZWFfZW5kPwoKSSBtZWFudCB0
byBzYXksIHRoaXMgZmlyc3QgdGVzdCBzaG91bGQgYWx3YXlzIGJlIGZhbHNlLgoKPj4KPj4+ICsg
ICAgICAgICAgICAgICAgIHVubGlrZWx5KE5FWFRfRUEoZWEpID4gZWFfZW5kKSkgewo+Pgo+PiBJ
ZiB0aGUgc3RydWN0dXJlIGlzIGNvcnJlY3QsIEkgYmVsaWV2ZSBORVhUX0VBKCkgb2YgdGhlIGxh
c3QgZWEgc2hvdWxkCj4+IGJlIGV4YWN0bHkgZWFfZW5kLCBzbyB0aGlzIHRlc3QgbWFrZXMgc2Vu
c2UsIGJ1dCBpdCBub3QgZXhhY3RseSBjbGVhcgo+PiB3aHkuIE1heWJlIGEgY29tbWVudCB3b3Vs
ZCBoZWxwLgo+IAo+IEEgd2hpbGUgYWdvLCBJIGhhZCBhbHJlYWR5IHN1Ym1pdHRlZCB0aGUgZGV0
YWlscyB0bwo+IHNlY3VyaXR5QGtlcm5lbC5vcmcgaW4gdGhlIHJlcG9ydC4gSXQgdHJhdmVyc2Ug
ZWEgZGVwZW5kcyBvbgo+IGVhLT5uYW1lbGVuIGFuZCBlYS0+dmFsdWVsZW4uIEl0IGp1c3QgY2hl
Y2tzIHN0YXJ0IG9mZnNldCA8Cj4gRU5EX0VBTElTVChlYWxpc3QpLCBTbyBpZiB0aGUgbGFzdCBl
YSBpcyBsb2NhdGVkIGF0IHRoZSBlbmQgb2YgYmxvY2suCj4gV2UgY2FuIGNoYW5nZSB2YWx1ZWxl
biB0byB2YWx1ZWxlbi0xLCBhbmQgbGVhdmUgMSBieXRlIG9mIHNwYWNlLiBJbgo+IHRoZSBuZXh0
ICwgdGhpcyBzcGFjZSB3aWxsIGJlIGNvbnNpZGVyZWQgYXMgdGhlIGVhLiBXaGVuIGFjY2VzcyB0
aGUKPiBtZW1iZXIgb2YgdGhpcyBlYSwgYW4gb3V0LW9mLWJvdW5kIHJlYWQgd2lsbCBiZSB0cmln
Z2VyZWQuIFNvIHdlCj4gc2hvdWxkIGFkZCBzb21lIGNoZWNrcyBiZWZvcmUgdmlzaXRpbmcgdGhl
IGZpeGVkIG1lbWJlcnMgb2YgZWEgaW4KPiBORVhUX0VBIGFuZCB2aXNpdGluZyB0aGUgZWEtPm5h
bWUuIFRoZSBhYm92ZSBpc3N1ZSBvY2N1cnJlZCBpbiBhCj4gY3JhZnRlZCBpbWFnZS4KCkkgdGhp
bmsgd2UgY2FuIGxlYXZlIHZhbHVlbGVuIGFzIGlzLiBJIGFncmVlIHRoZXJlIG5lZWRzIHRvIGJl
IGJldHRlciAKc2FuaXR5IGNoZWNraW5nIHRvIG1ha2Ugc3VyZSBlYWNoIGVhIHN0YXlzIHdpdGhp
biB0aGUgZWFsaXN0LgoKU2hhZ2d5Cgo+IAo+Pgo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHNp
emUgPSAtRVVDTEVBTjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4+
PiArICAgICAgICAgICAgIH0KPj4+ICsKPj4+ICAgICAgICAgICAgICAgIGlmICgobmFtZWxlbiA9
PSBlYS0+bmFtZWxlbikgJiYKPj4+ICAgICAgICAgICAgICAgICAgICBtZW1jbXAobmFtZSwgZWEt
Pm5hbWUsIG5hbWVsZW4pID09IDApIHsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgLyogRm91
bmQgaXQgKi8KPj4+IEBAIC04MzIsNiArODM5LDcgQEAgc3NpemVfdCBfX2pmc19nZXR4YXR0cihz
dHJ1Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLCB2b2lkICpkYXRhLAo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICBtZW1jcHkoZGF0YSwgdmFsdWUsIHNpemUpOwo+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4+PiAgICAgICAgICAgICAgICB9Cj4+PiAr
ICAgICB9Cj4+PiAgICAgICAgICBub3RfZm91bmQ6Cj4+PiAgICAgICAgc2l6ZSA9IC1FTk9EQVRB
Owo+Pj4gICAgICAgICAgcmVsZWFzZToKPj4+IEBAIC04NTksNyArODY3LDcgQEAgc3NpemVfdCBq
ZnNfbGlzdHhhdHRyKHN0cnVjdCBkZW50cnkgKiBkZW50cnksIGNoYXIgKmRhdGEsIHNpemVfdCBi
dWZfc2l6ZSkKPj4KPj4gVGhlIGFib3ZlIGNvbW1lbnRzIGFwcGx5IHRvIHRoZSBjb2RlIGJlbG93
IGFzIHdlbGwuCj4+Cj4+PiAgICAgICAgc3NpemVfdCBzaXplID0gMDsKPj4+ICAgICAgICBpbnQg
eGF0dHJfc2l6ZTsKPj4+ICAgICAgICBzdHJ1Y3QgamZzX2VhX2xpc3QgKmVhbGlzdDsKPj4+IC0g
ICAgIHN0cnVjdCBqZnNfZWEgKmVhOwo+Pj4gKyAgICAgc3RydWN0IGpmc19lYSAqZWEsICplYV9l
bmQ7Cj4+PiAgICAgICAgc3RydWN0IGVhX2J1ZmZlciBlYV9idWY7Cj4+Pgo+Pj4gICAgICAgIGRv
d25fcmVhZCgmSkZTX0lQKGlub2RlKS0+eGF0dHJfc2VtKTsKPj4+IEBAIC04NzQsOSArODgyLDE2
IEBAIHNzaXplX3QgamZzX2xpc3R4YXR0cihzdHJ1Y3QgZGVudHJ5ICogZGVudHJ5LCBjaGFyICpk
YXRhLCBzaXplX3QgYnVmX3NpemUpCj4+PiAgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4+
Pgo+Pj4gICAgICAgIGVhbGlzdCA9IChzdHJ1Y3QgamZzX2VhX2xpc3QgKikgZWFfYnVmLnhhdHRy
Owo+Pj4gKyAgICAgZWFfZW5kID0gRU5EX0VBTElTVChlYWxpc3QpOwo+Pj4KPj4+ICAgICAgICAv
KiBjb21wdXRlIHJlcXVpcmVkIHNpemUgb2YgbGlzdCAqLwo+Pj4gLSAgICAgZm9yIChlYSA9IEZJ
UlNUX0VBKGVhbGlzdCk7IGVhIDwgRU5EX0VBTElTVChlYWxpc3QpOyBlYSA9IE5FWFRfRUEoZWEp
KSB7Cj4+PiArICAgICBmb3IgKGVhID0gRklSU1RfRUEoZWFsaXN0KTsgZWEgPCBlYV9lbmQ7IGVh
ID0gTkVYVF9FQShlYSkpIHsKPj4+ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVhICsgMSA+
IGVhX2VuZCkgfHwKPj4+ICsgICAgICAgICAgICAgICAgIHVubGlrZWx5KE5FWFRfRUEoZWEpID4g
ZWFfZW5kKSkgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHNpemUgPSAtRVVDTEVBTjsKPj4+
ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIHJlbGVhc2U7Cj4+PiArICAgICAgICAgICAgIH0K
Pj4+ICsKPj4+ICAgICAgICAgICAgICAgIGlmIChjYW5fbGlzdChlYSkpCj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgIHNpemUgKz0gbmFtZV9zaXplKGVhKSArIDE7Cj4+PiAgICAgICAgfQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
