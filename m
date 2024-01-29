Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F72484151C
	for <lists+jfs-discussion@lfdr.de>; Mon, 29 Jan 2024 22:23:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUZ6H-0001uW-DP;
	Mon, 29 Jan 2024 21:23:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rUZ6F-0001uQ-LT
 for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 21:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yHI+gDpmurc7ro089XBDIjssN9FYlRYXifNMMQm6pOc=; b=P7iAbO/ObV+tdPOJs9Qm4QLmJg
 ryUciyL0Hv8kcBuAW/gFzHJ8Efmrv3I5Oml6W/FBTkcokstP1CN6sh3at/9U5yM/zVgvfis7Jj+0+
 LLA8HYpi7C+gOYN8bKrMogTNDJlY7+UOPmu3TT9JJ82RFuHL190YfPdRL2tMAoq2WkNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yHI+gDpmurc7ro089XBDIjssN9FYlRYXifNMMQm6pOc=; b=H
 VvUXCTilTxUpzVQ35DMfUHTLZNRTTAOJO7QhgRAu67sBghT7b+oqGatNjCac0XI3SCs/KxcksvF03
 1GkLrxOYJ9rDOxIwnfbpv+/bFhJGDdGBwQcPKyvcfGbE/Zu42LZFbEeOfSMGKV4DV8wUbS+t2H+e1
 NUNtOySXtotdEtpI=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUZ6C-0002ee-TB for jfs-discussion@lists.sourceforge.net;
 Mon, 29 Jan 2024 21:23:27 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40TJidUK030879; Mon, 29 Jan 2024 21:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 to : cc : subject : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=yHI+gDpmurc7ro089XBDIjssN9FYlRYXifNMMQm6pOc=;
 b=SbnHgyujjlb/dMwXTD5Lor93FbLnWwC6dbDATR7nrA+fNf0f1Q1fGu6y9IasGxAKc1TX
 ehpIJr5KtPBlvUvKPcx68zoh9JbkH0ebPpPqvO2mo+nPU4Gk04J0oe0XMqtAupctsb1B
 K5I8fDoCtny53EKDRnONCcxMYf/UpTlk/QvVR7rtrqcJiGAQyuD1FvTIspjhUdz2HlNk
 qJlio8K3TWPmWyM/wQKn9/SPUlmtre6ivuNP17Xoheuk21qeFd9Abg530Pv/zvE+RZDk
 KDqnzsTlD6kQCoxQRT0HNfgUzgzOqZ1Nhe3sJPGhuShqfjuEap/qwiFVwfc7XBpLcLq7 8Q== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3vvrrcd3um-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Jan 2024 21:23:12 +0000
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 40TKodkD015394; Mon, 29 Jan 2024 21:23:10 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3vvr9cg2cs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Jan 2024 21:23:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljGMBiH6CPKGv5Jg+q4bCcXoQ6nNJCKm7xNqDJ0oEtzbOKzrIF7xvY/TZzG8hFJ0DQwC8hdVsOxbd19SrKp6DBYN7hmA/9lXf6nhDALGxJMV4uslWAnnVu3p7nhqM5ylUWZYiuKzUpFMcISPQs0cynAWinIDAqW55oPjqGCJOwWrhy7YTolBEmgaGC7Z2DkCxcmJFCEjL86oKVxuieoxN/Gpy3XjoyZ6pyAT3exE2MgGYu+JkusJ+WKM5DxeRFlOKLRsv+JqucnUaQfzToIsOt14DheOseg/LIZOUm2ZALIes9akvja90mQDbY7MU+xKQRs3VTOw3qDXky/WWfBNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yHI+gDpmurc7ro089XBDIjssN9FYlRYXifNMMQm6pOc=;
 b=UkbOmz8RM3Pszd9GhX9xAY4lr7ruAJeHkHjOouC0fGMctzOVSniifIZU9ajYRxIM9QUgTDVTy5F3GpuGK28JJy5+7JAZyB2AMd1ErpIPelwfLIvsPNyaq7WUQHvTEhujN9Y4klDW02UTt8cahbl5QqLsNVrZK4m08v8nhSXn/YUzKlukQEprvvrOgXP4YAfIVhLYcOkk2labGRkx0sMwT7hGzq+Vg1EUlZRuuacYS4oTqYB8zHtZzxOfNXw8JdU2u12MFyJVFizKf0djfj2B4QN0mEcMLhCUjK3J1fflb9eagBFQA9YCnFgX9gWzz6Stp/s+NURIwiZf/CD6nsPFzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yHI+gDpmurc7ro089XBDIjssN9FYlRYXifNMMQm6pOc=;
 b=R3vtnuWKIgTMd6PLvX7lkwFoDpSgPbWKlWn76W/AfHoQpEYyR9ZUtscL3K2RtMHoHi+4uUCDFA78KkiZij/MQObsuIgEKQ6QAw1pdMd8kTShJ0I3djSfCQNd4lxoyMyNlg2eErHYPx0YqUhY2IP2itLdKS9ajDNnovrj5cRq/TU=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM4PR10MB6184.namprd10.prod.outlook.com (2603:10b6:8:8c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 21:23:05 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::bd88:5306:d287:afb0%6]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 21:23:05 +0000
Message-ID: <09ec99b3-f2f8-489c-9f96-48f727326ee3@oracle.com>
Date: Mon, 29 Jan 2024 15:23:03 -0600
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:610:38::21) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM4PR10MB6184:EE_
X-MS-Office365-Filtering-Correlation-Id: 1117f4dd-2e5a-48a6-e958-08dc21107b77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wdtQjw3XkG8Gh6PEKimBh6PXyOY+RnMI8TPOflxJxMsMYOVUKPc4bOJOOcRZEdabQ/4vqxHovFXEEbwp5fkVYWhc/b94D1CMoZ2ZsGhb4X+oYxveN0AHPQnkJngywCZGMVaUu3jCaNmkqC7ZeRQl7isOjttKtHA5JlQX7V3bKz1JskWVoi91A1mLHs8wUfdX/8TxX309JkqOAIh7cfPPO6TNEziUJORqyRvHS6PLbYk1qxhRRlTGL3RRmYUFegJR4ACP78cXrx+Ghsp5Umm/r9hD14eDZk9W8evGisLrMAf7kAzAH1vMoTJisI3UrPHpX7NWkWwa3IltK/4vL4rw0f5GAMlUumRb4Rdl1Hpc3fGORQnTIJHC2gPw32XOjvbRaL9mLB642T7RjmnTKepl5oM5hYKfuqdLokCBmDvdoOH7D/qfLcb+szwoLqNNxVQl8nzCQcHYL+ubPqYORadx+0yFglBdfBbG5Gxia2qmAn688Xm3VUYtbp4OWQa3J/vEvLn42E9eheplAUpJWw9uYhpxR83qtRZogy2gFqCtd3TCzAdxf9atSbSYrtXfI/WmL00TpwSIdL21DXU1aEL3hMGWEyjKPEBR7+IZwkioH3FqEtpX+ZYol+kDbJvUEUoPSEyyEiU6ly1OeD7crZ5OWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(136003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(6486002)(478600001)(26005)(44832011)(8676002)(4326008)(31696002)(5660300002)(83380400001)(86362001)(38100700002)(41300700001)(36756003)(8936002)(2616005)(2906002)(31686004)(4744005)(6506007)(6512007)(6916009)(66476007)(66946007)(66556008)(316002)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UitkN0htdXlGL2QxZEhIUER5cDBHZTBuelpJa2RWcTlVRnNzNXhLWS9LNTBQ?=
 =?utf-8?B?KzdHMTVKSEp6MW1xR1RYUHczeXFIRkhHT09CY0RHVDRSaTBKeTRVdHlkUUxR?=
 =?utf-8?B?R3pxMFJFS2Y5dFhIaTVnZVVNSS9jYkJEdzlGQ1JxWHFreHBIRXdoampycUt0?=
 =?utf-8?B?SzJVQ0JLbnFleVhsNWQ0S2NBRHlZRVNHQjdVMkpBRHBjRHE3RmFoVUxEeWU3?=
 =?utf-8?B?NTEySnBjYlViRVpPZTNsN2pKbk1ESlpQVEhFL0ljZTMxdFkyNkFJbmRiUlZZ?=
 =?utf-8?B?WWpTeGFOVUpjVloxN1dEckcwTFR4UEo2MHU3ZVJUdzZwM01CVVdrNjd1Zk9B?=
 =?utf-8?B?Wk9ZeWNuV1pYQ0kzazFNNWxwUVlGYnlkSjExMlpMUG5MRTJQUUpzNEgxYkFa?=
 =?utf-8?B?dWh5NzJNOHhQTDJjUk5LOFVUcFlONldMZjdkRU1tSG5sdjFqU0pQUFgvbDI5?=
 =?utf-8?B?Z1I0SUF5alJ4MGZ5eTFpR1F3bGdoN2pZMGV0MS9HMmY5V1NUcTRFeDZtcmRZ?=
 =?utf-8?B?NkJVbkhPa3MwcHgxSGRJREJwYW0xUTNJcXJFRzN3OXBtUG4wbXU1T29EMEtm?=
 =?utf-8?B?L2t6b0YrVW9PT2xYeGdrLzdEZGZCdVdiY3hhb2g2aHFtcnI2RGNjMjNDOGxq?=
 =?utf-8?B?alJXUDcvcGYxUUY3aDFXclNMUjlGZm0vREprZjQzVTAzYU1xSDNkK2h6T1RT?=
 =?utf-8?B?NGtQUUttOU80blJCa1I2WlB1V1Bleldwb2N5VlpFQ1NYV1hLT3VLRnh2c3Fp?=
 =?utf-8?B?d25IZzBwVHRFVzhGSnBZVm9nMExXdUZQLzZGaFpkWVAreUswaEswbk9lUXVn?=
 =?utf-8?B?VmpCY2MvMnZrYjdkWThqMWprWmxRMGp4cjlUNjFXWGhCdEkxeitlNGQ5b0RR?=
 =?utf-8?B?bTRyVjNobm9MTjZDbVJTcmpkQ1dIM1hpWms0UUM4bGwxc2RCc2dQc09kZzFB?=
 =?utf-8?B?eDRNY2ZyM3JzV0NZbnVGTXBDc3RmbXNFd1hkOHBiRHVuNSszaDdOVGd4dHY0?=
 =?utf-8?B?b2o2NGd0bHQ0WCtzcUpvQzZUdnFuZDNpaEs3OHVvdzVWZHBlbXlwWk5sQmtU?=
 =?utf-8?B?V2s5STNDaURGQy8zZHJPY2dweDdWY3VzY1Q0Vm10OWpCemdQM1RVek5CbE1D?=
 =?utf-8?B?ZCtnTEd3SWEwOGxHWGZmS3ZNSGZNZ3VRNmhvZXJhTlRPMUtnTTdrNXBDc0ZE?=
 =?utf-8?B?YUYxT2FmRnBxaTJyT3RZL3ZSQkVFTWlVSmYrR1pRdzRZdFB6ZFVHb05reVA2?=
 =?utf-8?B?ZU5mdmpLOUtTanRCUnVsL0JJSjF6U0g1eFg2dThuTTlvNHZDQk5PN0ZJMEFo?=
 =?utf-8?B?dTNNZ2hXQjBad3BLZ1pxakhZWkRGblROUmdXZlQ4V0pOVEtJQUd1UnBDRy9Y?=
 =?utf-8?B?SkQrY0lIVWMzcExFZzdiK2RtUVFsMWxUN1ZZMEtqUU1tNXVrWElpekFscGJ2?=
 =?utf-8?B?aDdWM2FQSStkVHFjREF6Tk5iUjBjMG0vRWh5Sy84Wks1T0FnZjZkWTZFeStF?=
 =?utf-8?B?ZzFrdVNCOGtBQzBKSTUxc1BJbzBmdG5JZ2RHR2dsQ0hnOUpwc2RhS3Zxd25O?=
 =?utf-8?B?N0tCL0RhWHFaQTZHV3JrQVh2b0VuanhCZGRwZEU3L1NuYnh1RFFGZUV3bGpG?=
 =?utf-8?B?ZDNKQVp4dEJGeXJVZGJxeVIzVGZMWWxvd2N3ckdZNzRkY3o5WkVWMmlGRlJw?=
 =?utf-8?B?Tm1aa0k5S1VaU0QwZGsrZUEwOTlZMlNsUmk5LzBsdkYrVDVBL3BFazhxUVhw?=
 =?utf-8?B?cUthbkRVVVovcDZzNU5sRVFGRzk3Slc0c0JpTVN6TTBqVGRNcWRsYUhNS2Nt?=
 =?utf-8?B?TE45VGVpRFlwRi84dGpVSk1DREQzWVdMYldBdnVEckJ0a1RROU9YWGhJblha?=
 =?utf-8?B?eGoxdWNYcXJETmdQNjFydVgzc1BwelVXb0FZektyMUFJUklzT1lOS3poMmc1?=
 =?utf-8?B?amJTMFBsT2pkSHltS1I5U2FBcThoVk54dUQ0ZzdjSm9aT1puRzJuc1E1SWJh?=
 =?utf-8?B?dzhUV0FpTS9TK1IxTENUdmRLTHpBTk5IaitEWm9nbjk5dXVjQ05jVnIvc0ZX?=
 =?utf-8?B?UzJsMDFab1ZoekdQb3RNUHJhUVVRcHFLZjBKeVdiVk1rblp2RFBkTUo5RldZ?=
 =?utf-8?B?SXB4Q21yQjFTcld0VU5lZDF6OFIyMkEwd2VqMUFJL2dhNEtvOUVxeGF3V05i?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3N95lRFFVXw4Wo5MVESaGdG2TA+3sCQSt8AD1B8ndyGE2g1snFrm6E9MyBvOCWUzc78Z1LTPTYeeYuXZCEmYjyGvXx8pn9MIdunJQkpz1WTyc61c5iYl/q66qUq/vGTwZsaqE3rGnfrIcPn4frwaMx/CuDFBeFkl8wd+D88ggdkexZ/hjktqdUpALXRT0kMz7wMFhki0meeq8nQlf91g5HmgfLlcShFUsOU+Fqu0gwp/L4ALSo2L/LlvhxHfPFpDjDssgjJ8UaEepvz5w8gLbKeX9ewt+w5WeFArZs7n98DtfClOs0zavUXwcJCujPjnPSJuit+t3A2opJoAHdFhMTUAwPhKNQEV+nZR6ViagwYbBsAqqCbun6L/I7OnsDvp/uXgTBeCih8d08+ExZVWbyqbSj+JCv/692pOl3D6gC4vOY2Ug2Zek4aFcDtjHWeMMDLpKXaAuuVfrzQo6FhH15NJfW/B/w4O7+4v/3liW9cHmet4Jnt6r9cnDFcuwl/Q9AsfVhIH1d9BhOpuusTF3bDoVXYd1zdfz30v9ICkxQaliGxkQ2PX89bDJ81wMoKsbAg9ExL7N+7x6EC5vL0qxWUdKOpf/36VrSYKzZa2qNQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1117f4dd-2e5a-48a6-e958-08dc21107b77
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 21:23:05.6211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5xyGPRAFrTcOe29lA8pkKPKcuTZIiVRADHyYqaSDv7DWm9FpL9uMfu7sS13XdKL8vwef/pdGYMx9PDBsrobK6Fm9CDOknthJeMI9gs4MLYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6184
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-29_14,2024-01-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=958
 adultscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401290158
X-Proofpoint-ORIG-GUID: BJHR6D8aUMrrmuw5Pni_9mtfX-DHVCcN
X-Proofpoint-GUID: BJHR6D8aUMrrmuw5Pni_9mtfX-DHVCcN
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 41bccc98fb7931d63d03f326a746ac4d429c1dd3:
 Linux 6.8-rc2 (2024-01-28 17:01:12 -0800) are available in the Git repository
 at: Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rUZ6C-0002ee-TB
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.8-rc3
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
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit 41bccc98fb7931d63d03f326a746ac4d429c1dd3:

   Linux 6.8-rc2 (2024-01-28 17:01:12 -0800)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8-rc3

for you to fetch changes up to e42e29cc442395d62f1a8963ec2dfb700ba6a5d7:

   Revert "jfs: fix shift-out-of-bounds in dbJoin" (2024-01-29 08:45:10 -0600)

----------------------------------------------------------------
Reverts a bad sanity check

----------------------------------------------------------------
Dave Kleikamp (1):
       Revert "jfs: fix shift-out-of-bounds in dbJoin"

  fs/jfs/jfs_dmap.c | 8 +-------
  1 file changed, 1 insertion(+), 7 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
