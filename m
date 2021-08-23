Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4543F4E93
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 18:40:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mICzc-00007y-2j; Mon, 23 Aug 2021 16:40:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mICza-00007s-Rs
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 16:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=; b=eLO5EXq2sh8IUQmxU4/3MEXwhA
 E1FHFqMVHmHjbYFx3rep510Q5D+DT6g0Xw1qCjGhk6617bqMHzInkF4LYbbhhUuGW/lyJdfazEeTY
 Sp7o8oXChewHefuT4SOlXs8Sf3uqjLVuf56zln6V5nBbo8+EhEm447MJ0SWGaApebZ2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=; b=ZqgigJ/78CtDEy8FKkbWh5od8P
 2cuFiIcLa8shr8Ol2SFrXOeBUwH0c4EriWdMjXJMUSmxM6Zo40lpvQ5eSJQDgb5q+R/nouzTdizZN
 GNoEOBAAcayL55VncBmlepTvEzFyorC5RV5Ib+xxEUmoo+7prJ/PMGdP2Q+NyoCpeEYY=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mICzU-00FyYd-KH
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 16:40:10 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17NEYvZY008816;
 Mon, 23 Aug 2021 16:39:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=;
 b=w919Bql/swusY+1fUmuBHKnzNrCrvi3G9Dm27UvxWEcFOnn/M6wa4wFsCLm2ADWe7d5f
 7idqjf1sF4HlycTbVuu4sdQp/HXooZA2vDqTcWwTWJFcBF8ug62ZzIdqKrlQycD2DG+y
 ZW2M9z+8yjb2Thm/eVueFjUnwbzF2r1a+kJJPJGbkVWOyq+gh7dgk0ez77N6s/y7qfPL
 izBhDeDjl75fGjg7nFed8s4cgSIb6Q6QF7NQZPWTcKtuD+APoIpjAedpJwy0i6nyRs3H
 7TpV1S086gnojRilMrqNl7VvxAKy1kDaJv1l8IWofzUH1dWdbA50u/yZ1e+zNS+GyyX4 1A== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=;
 b=dXrwbcUgurYGXkwXdY9F+J+pLP2OdE8WtAkILnxitZNWkMS3aCmw+2ZEpl9hxRIayVid
 Y1371/V9evIFvhPKSSM/bgX7N9GtSH/+SJkQ4xgVHZjnyI+gHnWu9UodSovRXARNEE4C
 aJNTQS2su14jT4T4f6a5DEznQHfPDGMQtONyyo3uR+NKRpgeGF/5KHjg5z5IzV86OQ7M
 sY8ZdSC6+F4GqOupOux+FURedCp/Nm8dqjkfWukfyIbGiz0EOQOGq9rbu3cDIa0+XRKW
 94KJs41l0SlUDnyWVUG4fyh0GTzYPQ3P3wPkM8KXIYyNXXdKW4mXwADn8/5BV4dng5uT 2g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akw7na2mh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 16:39:56 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17NGVAqC096170;
 Mon, 23 Aug 2021 16:39:55 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
 by aserp3020.oracle.com with ESMTP id 3ajsa3n9kw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 16:39:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZdfcfnscVqrh7sohEksJtX1ZRKTDyVXl3Eo5atIO5RDdeH39vCT3iEoQRASu5sW97lK6hlTZbGQnzXDA5WakJnImhCICgFSIAtov58dhQn2mlYmDcdvMsAiKuGdN958LH2YFNkaGuu9h833e99oSQtFxlYZqGTd3xmbegeLeWlH2ruojWMH6+dwoeBF20FTXcF9hQo72WeuTlPYjupkfVcYrn5Wid6I5962EfTMMF8hbIm/Z1qJBlClJweXuwX8J6mAQCIEyulWToF5BCWjH5tMo6Z+0T/ZZHuw6b2Ps58QRh0Y6HOy7+CU1VbqmNASyJlACE2uLr8Rverv5YP1fDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=;
 b=nciIYmf0YB5cCLQpxJTxQdxyF269QFo+QWYwMjL5a6mSJPFNACj5BOiInlusTg5pIoEQ/R/zeBMFhyn03B+dzhzrcRo7pr7bpqTU1v+yygeyyNiUAreZMcx3XVa5YHIJJvW0wfxFZC5E+sbOxfg3VITnrRIIAkcP7/Wjz/XNFcaOg0q925gYxxOKYj1DCNSZpw8Sz3va+3qZC3yb6/gjXgPWBlIgij3OKxrHFP6u0rbVMCmdRlQgu6DB6glzVDc9U2I2/WmNiFcDkLd+6mYgF5FL/147qeqHvtfSJzKfOmyKGZRpi5nHdWhPK1LY1ImwpOZSrEqQjW97MnjTOL5Q5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pb8P1fjn3Zb8H0/FY1lsFynYeJaJ6E+493Iy4nUI80=;
 b=RqAtH16QvIa6WfXIzmXlZenx3O5758M8QOpaevsj4MYat8ZH4dc2v/qxBn9MnPseMxJnzcp2Ucg+GRwyleOYEDqcnCeunfYwOi7f7Qg5U+4LCzddtUX15pnI9hBrDNYyWDPPH8jRw9mosaPe/KZHJzPli7Fb8yTs901c2fx2yX0=
Authentication-Results: lists.SourceForge.net; dkim=none (message not signed)
 header.d=none; lists.SourceForge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SA1PR10MB5509.namprd10.prod.outlook.com (2603:10b6:806:1e4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 16:39:54 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6%4]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 16:39:54 +0000
To: Peter Grandi <pg@jfs.list.sabi.co.UK>,
 list Linux fs JFS <jfs-discussion@lists.SourceForge.net>
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <9869536d-b0f1-3480-0c41-3798381c97f6@oracle.com>
Date: Mon, 23 Aug 2021 11:37:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
Content-Language: en-US
X-ClientProxiedBy: SA0PR11CA0044.namprd11.prod.outlook.com
 (2603:10b6:806:d0::19) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA0PR11CA0044.namprd11.prod.outlook.com (2603:10b6:806:d0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 16:39:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a33edd6b-cf86-4588-5e1f-08d96654a26e
X-MS-TrafficTypeDiagnostic: SA1PR10MB5509:
X-Microsoft-Antispam-PRVS: <SA1PR10MB550930487FC2B02228B6EB5D87C49@SA1PR10MB5509.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8tVHgf9fAVusEN++4pj9H3qw8hWSfE2HxjeMKHhK9NLy6ZMnU/OZQieMQl6M0GeY/3C8w7ax7mnzbElT0E2tQ6n0BCwV1021c3cwismfoEwr6Sa5L31r6JWsCDUPf5gf/0J1LVfMRFY6UvK0o1EoMdREAyr8G7anenTQSA6Fh3RJJf368JMRUy9RQEF0MBmfDiyF0hLkM7Xsy7AeA3Ah1l7/9Rg/RJUEdFidRlX0laKq0aAKny/jLZm/m4O8nOE3Ux99S0qRa+jDIf1ZplK7hc0lx1t26hnSf9KqCbAE/+C/5UBipgvcd4CbsB+siNMuFDUULOJ5RtTZbeLH4qm8LVQSngbPrET/qVSCybi3EX846/QZ8zQtCFnTZnKpq6221jZnp8IGkdumqYAk46WrkHzfB5sjyUnlTT5lHlbhi5u19gwa827MJL/BNIPhYYt8ODhS04SQj+UzQkWMRIlTrqFNPxgnTrSfxGw0qG1dgD4C4Xn2KL/DglbMOEWXUx/UX63zh70VwG5vU6CPoJYIxxp0JTGYM2xyVaNmu0zy7hkFpDsCCCB9Qf3cLfrYug4MEzxP/CeQe7Pmicenmk6oC0Yr3i1INDOOh2g546ELKRIRtjPC6BNElY+jznlESMdkFAF45QE7XEunrb/+4Uxd/RBxB0gtBFgWAlR/VQKDVZ/TEaz3Am4cRes1FBnlnW9C0hXsWEgS013ZwVE+hhZ9SIE6U+zziNjnDWOve012WH0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(36756003)(2616005)(186003)(956004)(31686004)(44832011)(31696002)(316002)(66556008)(38100700002)(110136005)(16576012)(6486002)(6666004)(26005)(8676002)(66476007)(8936002)(508600001)(66946007)(53546011)(86362001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDlOTXAvT0hHbEFWYWs2cUlkYnR0cTFUM3RjTC9CTUVlaGo0S09qRzVjMzUw?=
 =?utf-8?B?MHVCQTR3MGlOand4SFBjTklCMmlhZURFRmFOM3RPcTl1M0pwMmVtcjVFSkg1?=
 =?utf-8?B?QlpheUV1WlM2ZWVZTlRkZmFHa2swaW54TGE3TERWYmt6SG85RUcxMHE3aGpF?=
 =?utf-8?B?b0g1QTNuVHc5YVhVcCtxcDVPYjRZaFk0bFJkeHR2MVZyYVhnSzFuamY2MjYy?=
 =?utf-8?B?M2RYUzM4a2pYVm5qSFlwOXRqTy84UWFYZE44SWl2MnJ0cGpKbmx3NVpHaGpS?=
 =?utf-8?B?bUZMTU84dkx4Y2hRU20wRFJKUGQ3RE93OExYVklJL1hHbDhkWEJwYVA1MGVJ?=
 =?utf-8?B?YTNYV0JZb2I2T3U5eTdlUkJ1TTZ6VjVTTk14THpzcWVpZHFsWVlRbHRsdXkv?=
 =?utf-8?B?VURYbHduMkFtRzRvdTZxNUkweGR0cTlEaWxSMzV1YUpJT0NFb0hsMlhJMWQ3?=
 =?utf-8?B?eWFFZ0dVOEdGVkhLbjlsSndocHo4WWVCMHlDdFdhNmNCWFd4ZTRBeW1nN1lu?=
 =?utf-8?B?d0YwSTM0UDBzUk9MQmRZVkRnU3ZLTGRxdjlGMmNBUUJoaWJ5VUhMM1lRY2RG?=
 =?utf-8?B?b2VYQXRNT3pETW1XYmtRdmowbmRmaUFzSTF3TkV3SjZoZzlUS0NPNSt0dFk2?=
 =?utf-8?B?VXJ5cUtsTHBET0YyOFJZVFhMWnkwZ1hVOE5TQ3c3M2ZhZWF1RkwxYlNlRlJa?=
 =?utf-8?B?cDR5dGVuZmlnT1M2OU8xWmVlck9OdnBIRUdCeG40dVlFTHU1WG9mTzd1SEhT?=
 =?utf-8?B?TkpnTkh0MlRPaUFmK3RZdnUxU2c5d28xQ2Q0VWp1ZENmZWdvclBkbW9YbFpC?=
 =?utf-8?B?RmZVZnl4ekZQL1ZmYkduWVozQ016ME1JcWVHL1hEV2w1aWxrNGQ3a2d4SlhM?=
 =?utf-8?B?anYzbG5lWmRTc3pDbUpIb0NpVFQzRFJVc2g5SFQ4bDlJSkdTUXZJMnpsbVk4?=
 =?utf-8?B?eStPQlYxNkd1WGpHcVYvSGNpWkhvL3pBd1NBUlRjclVlTkk1RzFGT1doRnlE?=
 =?utf-8?B?eUc1aWcxL3BvNy9qWGd5dHRUa3lvMW95L0xyVWtoamkvSTlSYnNDc0Yxemgr?=
 =?utf-8?B?OWx3VGFOcmYydUwxOHh3RTcxV3ErUXl1c3p0anJUU214ZitBOThDaUhQQkx2?=
 =?utf-8?B?MFZvdkp4eHhveXFWekV0R2JXcXp3NDJ4THN5V25NN2g3c2hscDN4Nk05eXpj?=
 =?utf-8?B?SXlLUmIxU1VHNWRQZG0wSVl5NFRZdHJqWU1pbGZVNWFIbGZCL0dVdHEza0Mz?=
 =?utf-8?B?U3NLMnFRY3BBVUE4MEdjMjc5ZG1BdUh1Y1dlRVFoVVRqdzRmYjJRaDRra2lZ?=
 =?utf-8?B?SUdkVmlmc1pnbmI1WjlOMFdoRTlWSkpWcDVjRW9QeHd0Qmk5L1F5dW0rbFE2?=
 =?utf-8?B?MUNRREVGRlNXc3kyYzl1ODZ5dldDU1NmNk85a0NWNkFkdnhXNkFNTG8rYko5?=
 =?utf-8?B?cWJHSnI0bWs0Y2RGbnpUUGFiK0Nzc1prcjY0YW81Z0FkTENXSUxGV2h4S1RV?=
 =?utf-8?B?eUxKcHdnenBLYVV1RHhhanVKL1FVZ2x1QWtGVnI3NXJXSWRTdGlFbjhmdW96?=
 =?utf-8?B?NktzWTVKTHNrdHRWK0JIa1NWeXZuQUdvK3NGaGtzazdtTG9keEN3UVhWYzRX?=
 =?utf-8?B?ZTVkYUtVVk90TXBIRlc4dS9FZEtRWkJYeXkyRzlaWTd6TVBxb2prSTFwcDNs?=
 =?utf-8?B?QytGZHZIeVo5dzFCQ0hiR0ZXc1FhL2xWYTdXbis2V2NJK1FoMTZzcEY0ZUhX?=
 =?utf-8?Q?OQLNyj5ZyEkUYH2r6rVdcqPwI6D9csZHEIKNYFx?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a33edd6b-cf86-4588-5e1f-08d96654a26e
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 16:39:53.9636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VC1tZG09RD0uBhtzhMmmtPKomItHXxXUkc4x6QkZKJykwPwEhG7nia70SV0tX21MReDvzSWvM3dPJkQ+bn1xVmHYRt+p5TMgeAX4UAAh83g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5509
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108230113
X-Proofpoint-GUID: uNOWjrQn080zp6h05BuwPt_xQlDUsxg-
X-Proofpoint-ORIG-GUID: uNOWjrQn080zp6h05BuwPt_xQlDUsxg-
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Sorry I'm posting this twice to the list. Thunderbird tricked
 me into "Reply list" rather than "Reply all" On 8/23/21 10:47 AM, Peter Grandi
 via Jfs-discussion wrote: > I seem to remeber that OS/2 JFS2 and thus Linux
 JFS2 have a > vestigial feature, that in theory their architecture support
 > multiple per- [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mICzU-00FyYd-KH
Subject: Re: [Jfs-discussion] historical detail: multiple filesystem
 instance roots?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Sorry I'm posting this twice to the list. Thunderbird tricked me into 
"Reply list" rather than "Reply all"

On 8/23/21 10:47 AM, Peter Grandi via Jfs-discussion wrote:
> I seem to remeber that OS/2 JFS2 and thus Linux JFS2 have a
> vestigial feature, that in theory their architecture support
> multiple per-filesystem instance root directories, which in
> theory could be mounted at different mount point paths, even if
> this feature is not supported or available. I guess that would
> mean multiple B-trees, but I am not sure.

Yeah. I'm not sure how hard it would be to support, but the JFS code 
actually has the infrastructure to support this. FILESYSTEM_I = 16 is 
the aggregate inode that describes the mountable filesystem. Each inode 
actually points to it with fileset or di_fileset member (which is always 
16).


> If this is true, were they designed so that the independent root
> directories would share the same device-id and i-number space or
> each would have a different device-id and a distinct i-number
> name space?

Each would have a distinct i-number space. They'd all reside on the same 
device, so there would be no distinction of device-id. I guess the 
rationale was they would allocate from the same free space. The design 
was done before any practical resizing was implemented, so it would give 
a degree of flexibility with file system sizes.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
