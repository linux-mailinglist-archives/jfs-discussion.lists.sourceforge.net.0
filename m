Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A0A95D51A
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Aug 2024 20:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1shYpx-0000tt-3Y;
	Fri, 23 Aug 2024 18:16:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1shYpu-0000tl-WD
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 18:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JQkB74/arftAXq2vMU8VSXL3N3c4dod9qord3uMEiuI=; b=X9e5vu4PzQY+Og33vujtvAWsD2
 4h8lMTWAJCfYGOQG7vXYVEzi+txPPIgpbqEyhkLdnvf88bFVD4pITCnakKSatSYBMcBl5akR9YZNB
 Foxk7pJSYmoZMKtriMOH9xTwt+RdOs2MT79NBMOUWB6vYzsQYnFvxb6eMYx/NhsqIlFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JQkB74/arftAXq2vMU8VSXL3N3c4dod9qord3uMEiuI=; b=ap9UhYUqM2HvMWNOOIXVsmJ6U+
 MvQCdQUNrfQP1Dwi9/UI9bDFFcvjPQ2SyDodiNFVQpVZHOJV4lE4Qx/f/ZaFkTR1QPJT61jKvTx+Y
 iytrjvmomQOBLuB0N6RkkZbmhbVNBcYKNntrmTnAZ8hmJ38sgTG4Rr941N5C8/BrVvIc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shYpt-0006s0-Q5 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 18:16:34 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47NH0Vh3002327;
 Fri, 23 Aug 2024 18:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=JQkB74/arftAXq2vMU8VSXL3N3c4dod9qord3uMEiuI=; b=
 lyq8lwQwi6toUA9+ok/HoVpxa8jkH1JX7aBZBPajBdujM2HRMJ6urQRdgHEyBaph
 90YwA2z+TAxkKMhQbhsu+LzT5390pxvuSTQ+yUEtianFEgLwv92R6A8jfdHC6Ul5
 YVa8KXGiHBVOyCX6THc6nwHR7Wm4HCifGUcIfSgV6xJE50vApi0I1o21r+6lAgvX
 QrRr+VW+E9e7fIHFAMnX2+yfSospcydU9c/ByyMPTspf2e+vtHFN3kJP7UVVSI4p
 laNs+TKYtJqs8HZzSUsjtUcgHCSmPSxNQO5B1WR7JE1tkDJ7HAJ5Gvd4/nMcCuXG
 30RK6TQK9rfKUZN/rBbBXg==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 412m67mugf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 18:16:25 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 47NHsRs8005894; Fri, 23 Aug 2024 18:16:24 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2048.outbound.protection.outlook.com [104.47.74.48])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 416ws44kd0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 18:16:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WCVMaM2Il6jiveBgakdxfAvl71AuKJ8JTS//lrJe95n2hQpo8+mj1PWcmudUoraizFsT07q7DeNaHG4XlhE1XA0HcFFGE7bPDLUS1Y/IO8ei6RSTe2biLUz5ZtgDzAQ4NCngj+DGJDZttLMEUsCJLsN4a9P9t9ft1FewNXruzVM/FCH6+2rDxo4BkpIj3SIBubrv4Z4iH6t6tlmBazl+kb+P3AdwzA8AdA3H/VZJyoPoLSOlkGcvfXrduvq3rxrM0+PbJlqUJgUeu2c9JY/LCZMpyGrOu23hCdxEBiaWrOutzDblcfsXAkHn52SYqaO6vBzkx8jALIQtqn0XO000OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQkB74/arftAXq2vMU8VSXL3N3c4dod9qord3uMEiuI=;
 b=ucLGXQzxKROGgjmMb8eg6FaXQI5V1osHYidcGXyoQ3vCab8caDk5lOCGHrXVXLMO+3HnhSrdR2dJ/Z18nV3NdPAuGrB2H8L0kGPBmY2XRvIo3x+YAOuMjBuumHYkCb0/927hopw1fEW6B38HdUZJ4IHnZgPV5osDgVbEjHY3h48wk4HH1Oqdbfc1GvvxRGcN/WtRkkUiwRHDZGK+g9wMJz759WMPd0W9Fx/yjKSV4JSWlo871BQcweTaX33eWZBx7g8jEWU/ICUy5FBUA4FHhNztagMQkjZeGlJhJv2iUswW23CJ0NqSYEonw0Y23Ilgobsmhpzy5om/TJLvombeRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQkB74/arftAXq2vMU8VSXL3N3c4dod9qord3uMEiuI=;
 b=QO6byAxO2gazUd4LfAAFI3d+3k9SNnNy/0DgxYW00wDOrzcUtqZez1f74EtMtqZ7+tvBGZRGG5i0iKNdzNKFa1A08HjAsgQidoS1DzNuW06Te/68FknO1fne+OokNCTnIYXGHvEGRjV+DTLjh9NQPvMaYzmuzfQegIlAjWGjfeQ=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM4PR10MB7392.namprd10.prod.outlook.com (2603:10b6:8:10c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.18; Fri, 23 Aug
 2024 18:16:21 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%4]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 18:16:21 +0000
Message-ID: <278bfe19-4a79-4969-950a-28f9fa2fdb82@oracle.com>
Date: Fri, 23 Aug 2024 13:16:19 -0500
User-Agent: Mozilla Thunderbird
To: Remington Brasga <rbrasga@uci.edu>, Manas Ghandat <ghandatmanas@gmail.com>,
 Juntong Deng <juntong.deng@outlook.com>,
 Andrew Kanner <andrew.kanner@gmail.com>, Osama Muhammad
 <osmtendev@gmail.com>, Shuah Khan <skhan@linuxfoundation.org>
References: <20240710001244.2707-1-rbrasga@uci.edu>
Content-Language: en-US
In-Reply-To: <20240710001244.2707-1-rbrasga@uci.edu>
X-ClientProxiedBy: CH0PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:610:b0::8) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM4PR10MB7392:EE_
X-MS-Office365-Filtering-Correlation-Id: 48f5104c-c00e-4bac-8a1a-08dcc39fb106
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFNKZEpzVnVIU2QwdEpFOFlWZkw5MEZnbWx0ZjlqSEUwR21EbEZFK0dLS3Ra?=
 =?utf-8?B?KzluaUZJa2puTG1LcWpjV1ZBTmZGZUx1Z1RXeVJ3V2RIamFJaGgyQW9IQm9J?=
 =?utf-8?B?dkQrNXpsaHVKbDNRaUM0ZktZVFNaRjc5T2JkeHVmK0NSejdpWGpyMTdaN0lw?=
 =?utf-8?B?aytJdVZRTWNibldNSzZNajQ5Z3Jxc1J6bHVrbTFnckZtdEpYVGdzL1ZxenMx?=
 =?utf-8?B?T0RHQXBPUFBWTDZwY0ZocHgzS04yUnBaL1FCZEFvNFFPZ280ZTVNeEVkeGdS?=
 =?utf-8?B?a1N1UE8zOCtjRVQ3VUZNSmkzZC9BZVFNdzd5WWlYR1FnWXZTcFlkajQrajJO?=
 =?utf-8?B?VElSNnNCeHlocTMzajNhUEY0SUE3T2dQRWNBWThkV0pWdCtGaVUvby91WU50?=
 =?utf-8?B?NXBCTUQrUTVsUmRNSHdGRnRDb0xTR3pLd3lXOUJzT3VVRTlsQ2FHdm5MQzlv?=
 =?utf-8?B?QWhiQVRUVXQ5WklDWUZhNmlzQlkrcDVocHZOYzhHdkt3RzJCVEl6cktsdEk0?=
 =?utf-8?B?ZFhEQkRXczBJOHJDajkzdHBGY1FYeXhLTVZob0lhVXBUek8zU3pyS2dpVWZj?=
 =?utf-8?B?ck91VDFabkhNVFlnR2JPWmRwNWpYTkM0OWFpMDc3REFHTE8rZi9XcVZFRDRu?=
 =?utf-8?B?OVd4VEN6am05TUYxRUZpWUlBNDBRajVodDBJalNPLysvOEFUaVRPNVlFNjRI?=
 =?utf-8?B?S1h0a3dObzFMaVMvc0s5TDlHcURIZTB1ZCsrbG1pcmQ2bFdjUncyOFYvbmtt?=
 =?utf-8?B?S2hVZ21pNjNxVndNL3g2S01NeHR4YmFwd2tHSUpMK3ZDb2xWUkVIek9PZUpU?=
 =?utf-8?B?WlNlLzR3aTFXSFpwdnRYTm5JN2E3SWZxWkEvNURnazViWExuRUNlWFMwaVVP?=
 =?utf-8?B?QktPZkhXenk5UFRrVmFCMDRTS2xWaERzU3J6eUE1bUVmbGl0NVFjc3pWZEx1?=
 =?utf-8?B?UVVBYjFPdFI0SXJKTnlNOCs5Z2txeDk4SVNUWVBwWngrOUdmVG1IdUE4VWxa?=
 =?utf-8?B?djRva1p1RU4yMDZBdW9ER2RjRW9YWHozTGI3dGhORFZaM3RBYy9PRlRldVJC?=
 =?utf-8?B?L2dzMDJZZVpsY0UvQU9uYlN6STdzWkFEelp3cllUaE04YkkrSTYxbXlFbTFh?=
 =?utf-8?B?T042SXMxdktvY056cklVWG14QzBFL0RFakY4em9xdW5XbllMVDQzdFdKQ2tu?=
 =?utf-8?B?dTg5eFRYTUNZclk4WTBHRVlrRXNncUd0WUZmbWNNN2tSMjlseUZQWDR0SWh2?=
 =?utf-8?B?dzN6R01zV3hQNkRuSWVnSmxNTytzK2l0V0Z1cW1zbDlzcXllSXM3b0doYldw?=
 =?utf-8?B?QjN6eGFDZDF0Rno3aUNiMHhFdGp6bWRYTktoeFZtcXRmZnArWUZNMkNra1ht?=
 =?utf-8?B?Ym5DNDVaSHV6Vy9EaDYrRElwd2czdkJaY1YyV0E2ZHV0dGMrdkFHT3kyWGg1?=
 =?utf-8?B?QkZXS053eWRpcGNJa1Z2S3UvQlJIMUpWZ09XVlNtWXp4MVVkWjZjanFwWU5v?=
 =?utf-8?B?eEsvS1M4S2JMY3FRL29vYTRXSkliYnhrYUtIc25IVzJ1dzJzbjgwTWJkTDZh?=
 =?utf-8?B?ZFNwNnlyVjJCN0lQT1E0S1Q5MjhzbVlQd1huUXdtcjF1VEdQY1RHUXFxeU5h?=
 =?utf-8?B?K29qaEtsRU81SDgzQi9uUy9mZ0plT2NsRmwvQ0x1R1U2eHdleFRGVG1HT1A4?=
 =?utf-8?B?Q3FVVzhwY0pGMXo5cm9SSVNtald5OTMzRXZXRytXcWozVkdpY3lwck9BdHdl?=
 =?utf-8?Q?dybMjiWKmu03xfradM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDRuWE9KdHE1OEs5ZUp3dWZPNkc2YUpwS3MrbDlNOGhyY1VjaTRsVk51TzBu?=
 =?utf-8?B?SXNmVW53RG52NGZIY0dCaFRyYXVFTmhLaDdQZ0NTQTNKNnYvdmRVYzFRRjE5?=
 =?utf-8?B?WlgrcjVtTW5OMlppV1d4Q05qalpiVVQvY0d1bE9aaWQ0anZqOTFyL0c3MnRP?=
 =?utf-8?B?MGx2OURjY0hRSXZQR016eG9rNzFTNFpoZ0pUMDhTZU5tT0VCSTFYSnhWNy9u?=
 =?utf-8?B?OU1udVpyOFhpWTVuUlhoYklqZkVkYy9xeDQvb25BQktLd0lLZlpoMFJWMWRB?=
 =?utf-8?B?OHN5ZjkvYTRJcUJkQ1JiODYxZHNWQzcwbEk4M2U2bjViTTJOSjJQakJkVjVl?=
 =?utf-8?B?SmYwUVBkNUtWM28vMUVvRDdQUElvSVpVQjR2TlZwWHA0R2hKd2JOdldDdlFV?=
 =?utf-8?B?NFlYa3pSK2lzdVBIUTBvTFRTZHQ2UElWRVhTbVZNcStQVkwvU1ByNmtWNmRh?=
 =?utf-8?B?dzlzZDZTM25jQWJsMjNIVTRzN0tjeUVIY2FrdEd5ZTFQMXpwNGlGMFB2Q1V1?=
 =?utf-8?B?QTVEZExzRXFjZ0JuYVB0clB3RXFwMGpRRWZLa2ZrSzZhbWxNbUVIdnUvMTZk?=
 =?utf-8?B?ZTY5VWpJcnYxeDJiWHRDM0s3ZmlENE5PdW9jelh4T0c2ZWl3U0ZLQVZ5ZlN1?=
 =?utf-8?B?VDVuQ0hVMng3WjlNZXlsb201Mk9SNlMzeTF3VEpPbk5jUlJNcnBNbkhZOHB2?=
 =?utf-8?B?bG92c3lQZkYxQWFyWDdIeVJJK2k4VENEWUFiaTZsaFdwZVJVWGxiSnF5NlVw?=
 =?utf-8?B?NEMwVUtvdHRFUFpva01md1NYaUU0Y0F3OHY1T3FuYnhpTW1GVDZhcXVMaE96?=
 =?utf-8?B?RXNObnB0MVJncm1ESTBQUEt0ZXdkU3JNckpVVlVQNXNDcWVVc251Rnc5bi9t?=
 =?utf-8?B?T0Fhb0dONitYSFRJNE9RdEdVdENmV3BjWTlUNFNCTXU3WjJ0K2lyb1JBL0Zn?=
 =?utf-8?B?U2NxUmRvUVNTU2xybjZ4MGl5N2lEeXJOSDFvb0lBNHM3UU1yMGFvSDMyeUpP?=
 =?utf-8?B?Y2Fud0IxYjg2Ti92bnRRdU5pZUFXUm1yTU5SOWFkbWgwNGFzS09JZ0xQN21u?=
 =?utf-8?B?RW1IMHd5S3kvUzNKOW1Cd2kwNnFmc2Z6dTlnb2tuRTBWYi8rYVp0MXZDcTJs?=
 =?utf-8?B?RW14R3h4VDI3RmpTc054dzEyc0VKNEpyY0VWQ2NZTitEVWQwRytRYXJFNVVN?=
 =?utf-8?B?enZmNVdmVHlKVHFvN1RGMTlSNkl2WEhzREU1Z3A3YnZoNGlMTXhJOGdPWnNl?=
 =?utf-8?B?a0JjVCs4MHNwNGg1d1Z5WlVabU5HRWFiUFVtaGN2ZVB1QnFTN3BWbmNIeTgw?=
 =?utf-8?B?MDF2d205V3YwMFhxUVpXcHJXVFBYK0s3blBNWUJtcDU2SDRWY3ZMUHJMdkFQ?=
 =?utf-8?B?TFlLRHp4VWxCbmtzOXFZdXVLdjk3R1hXNnRRTVF3STBYbDZDcWxOdGtPZmtM?=
 =?utf-8?B?MDg4aEM4NTJBbDJPT0h3YnR6V2l3cnlhM2oxcmQra1MxRk0zelNpcllmMVU2?=
 =?utf-8?B?clBicHZlV0pBTkdCc0NCdFJrSVNDY3dSeW1BbU9vekdWcnE3dmZHRnd6VG8y?=
 =?utf-8?B?SHZnT1dOc0Q4eTdGditRRXlCaGhPSmFjb3NRWUgydUxONGErUkpsNElMYXFq?=
 =?utf-8?B?ZDFySFpmenRHWGJNaXAwZUZ6ekQ4SGFCWkMxR2hhV1lIb0dCOXE1VGZUUHJT?=
 =?utf-8?B?SVBRa0RpbG1kQ3FidVNza3RUMENrWUIvWW8rTSs2MkhxOWFGTnpwOGs3VlNq?=
 =?utf-8?B?NjF4T2Vzd2dVVEJmTzgwWjBRc0xIQlJxQ05MVDVUNlFiUmtlU01KR3FNS3Na?=
 =?utf-8?B?YmV5djArYmMxNUZlSWZvM1EvWWpLYW01bUVyaHc5TjllS3FDUElYU1pBZXJH?=
 =?utf-8?B?M0d4Z2hTK1NENlJUUlBIV2NId3FsVUlPNWVwSmdmVHNjTWtTRlo2QmhYRS9n?=
 =?utf-8?B?S2ZSNW1vSUNPWmtQMlJuM296dmhMWk8rRVBZQjNPc0ZCVVdzeWlrV0NBeTMz?=
 =?utf-8?B?d0JYaDYxanBSL0JjcnV2aGlVNW40YWNMYkFZQ1YrOGErbHcrRU5OY25xTEtj?=
 =?utf-8?B?NVFSU3JTRnI2SXdwTWVoYTJtNkMwd0I3TVpQK2FDalVkMHJhRlEwcjU3a29i?=
 =?utf-8?B?ei9UdCtKSEtHTnM3ZHFZNGMwUng1NkdnN1RFVDZLMlZOVmpvaXJSUGVIdlEz?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: RhDfoDf6aH9OhmpHXzBTBu2oQXxUpJ1mk8urUGJE+HcOQyhRXTJuL8FrwZOLJtI7PvWpqg1zP5Vrit56PuVtl7BND/+8lzm28WnPZ9bTpF9H5M/slfJCusmy2oft+vsS/UXyi5giwTcSTSRzDLfen4WnmiP1uhqSHh0K0FlgRWfBgASd3DyRpeCWiul3MnWOfTgkf3ETZ1VPJnyzKAjQ/qjMOEoSUqAOIQgFz3/ls0dTUJ22MgPzUBmIF9H8L+a0W8rnJ4nO6619S5T0yMnO8lVYDhc2jibPXXf5+uNXZMdET4jzk7dzL6gHDrN5ooF9gBGzcb88s/MfGvwXkpIljkG4qxAmLEF+9echuYKI5HCbLKLW6Ejq/YpQTP5VX0uE8Bm0opH/HnaV2qVFv98IH3daNDe/GfV4oJVLuftWD4IUmO+LCnzmmrEk01W2AUfBqsDlh1VPmf7AW1zxeRyAuNc9zEcPfJl73ADDvOhk576117WInm5sLz4uE3Yf4HcoyK1861zQ7FaoYd1YqGbhWQUBMUlbcu69HJMNKVgl/SHgXDySsTVw7MGd0/xYYqghQcqqpaDexR94uWThbw7T9KTTW4+jgXDl6RhlZsQNwAA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f5104c-c00e-4bac-8a1a-08dcc39fb106
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 18:16:21.8675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 30vab1zTnhpcz1WdLc10vUqrgmQg/M2pt/7tDHWsybywU12TEWY+jmRK37T4qdAV/hjmPDz7sKfVZ67wbEG5Yk9nVQXZi721yymfrdlzZbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB7392
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-23_14,2024-08-22_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=954
 phishscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408230134
X-Proofpoint-ORIG-GUID: PsMgzHmXDd2x6CEltmHwPv-Ry1JNqWDN
X-Proofpoint-GUID: PsMgzHmXDd2x6CEltmHwPv-Ry1JNqWDN
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/9/24 7:12PM, Remington Brasga wrote: > Fix issue with
 UBSAN throwing shift-out-of-bounds warning. > > Reported-by:
 syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com
 > Signed-off-by: Remington [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1shYpt-0006s0-Q5
Subject: Re: [Jfs-discussion] [PATCH] jfs: UBSAN: shift-out-of-bounds in
 dbFindBits
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
Cc: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/9/24 7:12PM, Remington Brasga wrote:
> Fix issue with UBSAN throwing shift-out-of-bounds warning.
> 
> Reported-by: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com
> Signed-off-by: Remington Brasga <rbrasga@uci.edu>
> ---
> When nb = 32, `mask = mask >> nb` or shorthand `mask >>= nb` throws
> shift-out-of-bounds warning.
> `mask = (mask >> nb)` removes that warning.

Looks good. Applied.

Shaggy

> 
> Link to the syzbot bug report: https://lore.kernel.org/all/0000000000006fc563061cbc7f9c@google.com/T/
> 
>   fs/jfs/jfs_dmap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index cb3cda1390ad..636aae946e84 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -3020,7 +3020,7 @@ static int dbFindBits(u32 word, int l2nb)
>   
>   	/* scan the word for nb free bits at nb alignments.
>   	 */
> -	for (bitno = 0; mask != 0; bitno += nb, mask >>= nb) {
> +	for (bitno = 0; mask != 0; bitno += nb, mask = (mask >> nb)) {
>   		if ((mask & word) == mask)
>   			break;
>   	}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
