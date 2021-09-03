Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6E8400798
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Sep 2021 23:51:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMH65-0002gj-F4; Fri, 03 Sep 2021 21:51:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mMH60-0002gY-Ha
 for jfs-discussion@lists.sourceforge.net; Fri, 03 Sep 2021 21:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=; b=Mik4NemAPn06QmYFzKIvwO1Qpw
 QSE466k3REHXsZA9tAGg6HlBZEWaDxBZ9OPZUH4MZUh1VKEGCscxrezPMEFgUoxJ7C4+Io7YYnrBX
 mj8i2iB55rFrxUxjFwo/ycENhQLeP0YcZmOwvQlCPjr/lQ+n3uxjIO7LWbgWr/z/xe8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=; b=EnV3V96GUPXBnmfMUVEhiFtBHs
 3x5uBB/xuLTLZmtQJbL2xm3xbyEb3Fs/wfQ6feda6gWPQwqvKGnIVk95d9bIiPjc73hdbxCmKnfGc
 oFvNHQlN3yVAf4TwiW3a1XQ1l/sO0P5e2fpjfjqELU0/2KotmUN9TGtrt3c6O7TVdJbs=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMH5z-00DcSS-6Y
 for jfs-discussion@lists.sourceforge.net; Fri, 03 Sep 2021 21:51:36 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 183IwwAZ017863; 
 Fri, 3 Sep 2021 21:51:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=;
 b=UOiduFMB56y97VI8WSwOk7v5DSddQxTmAGL7zru2yok4i+RFn2BZu4ESiPiNfl2U6/rs
 8UNq9fIA3cv6p0xqc1uzW5C590KaOgZueIub5CJgIDQvF3Jo8GAtBY3jaeMdDqI9ZEm4
 a1tj/ky7OuKx0c8nqvbuTxcswsYujKS3DqU5t9m6XT44rfc104CxabloOoopoqRubBUC
 xWIk2CK4zK/CBc7iVmEiSELMmpfartHn8JYESvkdscFNW0RuVgpvlfK/GmpjS5Ahd5wv
 tTiAt3U6fweOoJWMWSdQfSO6NUIa5Z1wnaXL4fn88OGp0s7yq3UMqNBXT24QyaUvsVJP kA== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=;
 b=ZbVrB2gEC2OxUXwcDY1OubG+oz2eJqOl18LVB5M1Gm52hzWhO+JBTScB8z6CWREnxRtM
 8RePMzNqav442VDKujlKygT/LHK0Klg4ZZAXxItLsWxmOb9IIiAZ7s86b57unawBEDTm
 5fPRUvgexp7YIUczvdHYjem+67rBkix+gSNX/hSyhTgR0sH+BUCupX98qfQiyKvzDY8J
 5LYpR5PtEnONcCYTuUulnVeYpbM1ogXAIPLe7Mmb6LgEbQifzqtzD7Pg5jddETiWw66l
 2iMstawsyN4fc9rs8CaPXhw7PT8okw0NNpGb6Yy7Cgg28qAdeyYGQVK1tQO/tGMtx8Qd Vw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3aufj7a5rp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Sep 2021 21:51:24 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 183Lo1Pb009938;
 Fri, 3 Sep 2021 21:51:23 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2175.outbound.protection.outlook.com [104.47.73.175])
 by userp3020.oracle.com with ESMTP id 3ate023xm8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Sep 2021 21:51:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FNM5tI78I1qU9wPEvDgFis+k0nYGvzsaLahQWNJJm9cAX2sdxVmVW2w9GL323zgy5lFIikp2hyWehFdLBO3vWEm7iN61pJTAaVuR3HIM0/qWggXzE5VevM4UagmHiGgSzTOOPm6A4otjude6U1y4Fn4PzaulQDL41BQxyxlwAeQGg2KFy48nnHzn6rlQ3qSyyfeZHVbnYr+swyb8NK6ah8zHmIpA1qs1FkFiHebDggIKcJ9w4gtDYANYHFx5WuQ/rZEhHsOZS5wMRTRpCp9DKNAEMjPEloRzCwkRvbmPTB9awJFXajeiOgvD7TQFZeeu2V/EJGzbuzGW08U6W096Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=;
 b=oL9InCDpVR3SL8M7FYe++UDjmK78wPWKKlkEmeLi/hAPqX3ZhNHzQZsfvR4l/hO9+8BSLKr3OB9Ik1d6IVFi8+l8rO0weafG3tnkmS8Z0/f1m59z1Lw5owxfi8BPq4pJQTTh/tFpfErcH8Zgxu6SyUZroxBGm1jSslBdzz7T4Z46R+R7p4uLZauXHNtQzLSKt+cLWdljNwkPHU12ZvgDp09Wc3D9eZs4S2U19IN8ZmHj3AzS7uMomn2ffrhWEz8fAxwM68eaOk3RmMZtAXl18gNDVdfyt0AJa2nIqnQygVdeZtPgL+Lf5SMaXQDKkmSujOb0LJusX2csJ41uMum7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nkqRa25wbZl2vC2dhgFFK2GqSE2+X5cBEdwWFnexsg4=;
 b=JHgCkmBVwtEwg4W17LiA5i5AfoT6U9zhcFoooRV/d3P0KLYccn/ix7d4JgYxaGXo0zh7CchhfFHVDpCZAl+fLeJCGEnEm9ZTg9DhSg06H2tmA1ghuyJnpWcChixVjdwUYhp17ixYcijK+E5HyExFwC9pwl5Z8P71P5rjDFUmKmA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SA2PR10MB4793.namprd10.prod.outlook.com (2603:10b6:806:110::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Fri, 3 Sep
 2021 21:51:21 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94%3]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 21:51:21 +0000
To: Dongliang Mu <mudongliangabcd@gmail.com>
References: <20210818102612.864127-1-mudongliangabcd@gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <fc1dae76-eac1-e6f4-2ba6-f49e15ad0b46@oracle.com>
Date: Fri, 3 Sep 2021 16:51:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210818102612.864127-1-mudongliangabcd@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: SN4PR0801CA0013.namprd08.prod.outlook.com
 (2603:10b6:803:29::23) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
Received: from [192.168.0.190] (68.201.65.98) by
 SN4PR0801CA0013.namprd08.prod.outlook.com (2603:10b6:803:29::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend
 Transport; Fri, 3 Sep 2021 21:51:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e0c8d097-66d2-4158-702b-08d96f24f74c
X-MS-TrafficTypeDiagnostic: SA2PR10MB4793:
X-Microsoft-Antispam-PRVS: <SA2PR10MB47936EA982F781B4C7AE12D487CF9@SA2PR10MB4793.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GMIOVrVLHdy07zOLAeMJAo1BdhRtlPLNaJoItGa6II7UE7nVHC54FXEo4NZ1gGTpH4+WcYTiEYCDNUXUKbm0FfZiTL/Eg95RROm6DAXXsyDViMCjdLaCtA9MCKTDYLSplJYvykvKH6uPnN0ZmqOLm8EBe5xmisypIsGkP98VHXVsckgAqrRwdg9kETyamDS2AoxtOhd8fmLJFnxGFCjgKBS5MgSJlRlSg/qwmw80UEUdQ4GLkrdP2FG0mgVhbZ8gxButaaTxjgfNMFppgEdsqbKWLWLmkfKNYKFfRpr8THUOXNgoT384cxJuqCf9UcnTa7Wzr4hh6RYki24s7dg9LrGToONZxxtuCv8wLT+/Rc8LBKvdCZrsPdshWLUwhKH9T1YACqt1O1wP7rpdf1UQZJWnnWUynwUH2vlHQIo4DQtR3Lqr9J42X9kbroDuA8XOKFbpI08viIWlYxN4oGOrzlNKqvq3MY3GmymhNLOdFF69ny+6JBDcNwudIqyGVhWEJHGE7/gPqP2xr26deOBb/NA3P5tGO8iwy0zV9D51nbKgAGOk6HSJ3gkQwg1KJJC0L2t2tuUVxcIIVt8eNYkdhg6gWjRalpV7B6Ej/G046R9m6AJ51F79x5CMfqzpGBIsku/whsmSS7x7LMNcC2V5Rrz9MSCniB5AwGakwQKp14I6ytzbJR0i7t0u/l6Ebm3wd+XnBZsIuXvqRhbUsvmSMcVT/4k4/UrUhKxRPaAyy7s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(136003)(346002)(39860400002)(366004)(31696002)(44832011)(6486002)(2906002)(36756003)(66476007)(86362001)(8676002)(66556008)(26005)(53546011)(2616005)(6916009)(66946007)(5660300002)(16576012)(316002)(956004)(8936002)(4326008)(31686004)(38100700002)(186003)(83380400001)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0dnUTg5VjF6c1BvNkcvWkFWaU5NQUpaS28vUHl6SUMxN0xTWEl4WFFZZmhl?=
 =?utf-8?B?eXhsNEpHZGRpL2N6dGJSSHZ4NzYxN09IakdoSzNGcS9VMGY0TGN0Z1RHSVlJ?=
 =?utf-8?B?akVBdGZVWk9RQzNpYmlMMWw5TzUwRXlFL3Iydld2b2ZjZ2I3V0VFT3YzTUQx?=
 =?utf-8?B?eEp5TkcwNno1TVlpOGRLTm8xWmZVR2VvZGJJU0hDN3lVQ1hCWTRLWGlDVS8r?=
 =?utf-8?B?NEtQSFNwSnI4TDdiQU14clBHeVBvZWdIZDlPL0hsMWdhaVRpTVExMmdXSUlH?=
 =?utf-8?B?T3Q5U0hvOWl4N1F1R3dMYURlSCsvL1JaS0drVDREU29PRlF2RGUySUtLSGZ4?=
 =?utf-8?B?RTZoS0FmYVp4clVVcWZxcjd2dU1HYzh1RVZSWmFtb0ptMndYNkJuSmx5elhE?=
 =?utf-8?B?Y1pQdWVPZDU3U004RDRIdU5PaGFOQlR3OEdpSTJ0NGFYVWdzaEN2VkdIcGJX?=
 =?utf-8?B?anN5cmlhL3JLU1dvWnc0TjBSYTlXdHowUkxZWVh0S3lCM2QySkg2UnArN0hM?=
 =?utf-8?B?S3oySjZRZ1JIbElmK09lUEd5c0Q1ajN5dkRucmRodFU4MjcrZzNJWjNzcEVw?=
 =?utf-8?B?QmJBRmlMbUhBS3RJYi9mVUxXdDJpOFBKejVpaDExRUdVUlFkZnpsOWFOWU1a?=
 =?utf-8?B?Qm5lNWk3WWxzcTRzOGdYRkVtR1ZORUFmcnA1eE9ZNE5US1JQb21ZcnlxN0pH?=
 =?utf-8?B?ZkxjOHlYZzA4aXFLRzIxUHdCUjMzam4waVp1QTVyTEhmV3FqKzlRRTlUQVRn?=
 =?utf-8?B?TFMwdjBEUVJ1blhTdGdvNDlUblM2aDNZVThlKzZ2WkNlamNWbFA0L3dEOXZI?=
 =?utf-8?B?Z21aQzlTV25LOE9ZN1JocFE4WVlOMm9ZVXRyUWlqSjRZMXV3aTdkWkxib3NG?=
 =?utf-8?B?WTNwd2gvMVJkaFdLaVlxbFBmMWFuWGNaSUo4ay94bTBiRW5LZHN6RFpORERP?=
 =?utf-8?B?MG12UnlxVGFlcldYbC81eFFZdXAyQUlFaTlEL3RTcktZMS9xbDhDWTRhZW9j?=
 =?utf-8?B?bTAxaWV5U2pGU2RaZnBSRktnVTZBS0RoaUF0dU9aK2t0SkxXK1ZXazlkRFp0?=
 =?utf-8?B?aDZaMUNLQWxXZFRNQ2hNYWp6ckJlaXI5UUg0ZFVoQ2RRTk9SYTIzcFdVdGdm?=
 =?utf-8?B?OWxaRjdyZFEwekRaeDFkVDhLZktZbkNBZHNZdmlsQVR6T3I2TjM2VXR5OXM2?=
 =?utf-8?B?WGE3cDhDU3Eyb3JjUkprVTBtQTZid2R4elE4OG9DUXo2aytpaVhtTHJXb3gw?=
 =?utf-8?B?cWVOUDFUZTRzYm1QMjNnanZ6T0I4cForZTdXU1hZaTk3bFgzUGZqR0xlM1NH?=
 =?utf-8?B?UWJvUVM5ODZ4dVMvRjlHU0VxZkZFSTUvWVh1TkhoSHV4NEtXbWRaVVVxWXd2?=
 =?utf-8?B?WFZIVHpmTU9EU0tzemZqNVViM01TcVdXYzEwV0lGcUhMMktOaTlwOGJqbU8x?=
 =?utf-8?B?NXZaT1ZTSmtkakZDN1RjVldBQ2RNYUNjQk1yWmIxOVFqTjdFU3c4WU1iTzFa?=
 =?utf-8?B?ZVpPUzRjY25DT2Faano3M1dpc1h1RThSc0R6NEMxYUt0ckg0OElYZC9BeGhO?=
 =?utf-8?B?aDhqQ2xzelpEdXllTkxaQ1N3TVQzcjg3QjRzS0VZb3E2ZjlnbzF2ZC9kWnNW?=
 =?utf-8?B?MVN1VEJtMDQyQ2FzR3dmOTNXU0MrUExVYkN0QTRvZUtxczNKWjJkc002MDNZ?=
 =?utf-8?B?KzNPNmp1UTVnUXh3V0trK2hEc0J2ZkRMaWJQd3Y1MHdOV05wdjBzdUprRGg4?=
 =?utf-8?Q?dxg3fSqJdsRWXBtBAeV8/ZchLhYLl6EdyIAALc+?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0c8d097-66d2-4158-702b-08d96f24f74c
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 21:51:20.9537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AfkDC0E6/m5z6bVqTiwl8Ckv6YU1cvhk12MbKNrWO9N7eUeyxdLYGREG9bitqLSBzwAk0DWcpJcus2i6Gs7wdruYnHkbUzpY4Pw2Ow0DjZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4793
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10096
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=999 mlxscore=0 suspectscore=0 spamscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2108310000 definitions=main-2109030128
X-Proofpoint-ORIG-GUID: D8P4Wt3L-Emq0kl_4d_o54pYJZ2hKHfk
X-Proofpoint-GUID: D8P4Wt3L-Emq0kl_4d_o54pYJZ2hKHfk
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for waiting. I have just a couple comments, but this
 looks good. I appreciate the clean up. On 8/18/21 5:25 AM, Dongliang Mu wrote:
 > In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
 > the following code does not free ipaimap2 allocated by diReadSpecial. >
 > Fix this [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
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
X-Headers-End: 1mMH5z-00DcSS-6Y
Subject: Re: [Jfs-discussion] [PATCH] JFS: fix memleak in jfs_mount
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Thanks for waiting. I have just a couple comments, but this looks good. 
I appreciate the clean up.

On 8/18/21 5:25 AM, Dongliang Mu wrote:
> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> the following code does not free ipaimap2 allocated by diReadSpecial.
> 
> Fix this by refactoring the error handling code of jfs_mount. To be
> specific, modify the lable name and free ipaimap2 when the above error
> ocurrs.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
>   fs/jfs/jfs_mount.c | 53 +++++++++++++++++++---------------------------
>   1 file changed, 22 insertions(+), 31 deletions(-)
> 
> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> index 5d7d7170c03c..638a4ecc4069 100644
> --- a/fs/jfs/jfs_mount.c
> +++ b/fs/jfs/jfs_mount.c
> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
>   	 * (initialize mount inode from the superblock)
>   	 */
>   	if ((rc = chkSuper(sb))) {
> -		goto errout20;
> +		return rc;

This may have been intentional, but it isn't mentioned in the patch header.

If chkSuper fails, we will no longer call
	jfs_err("Mount JFS Failure: %d", rc);

I don't necessarily see this as a bad thing. In many cases, chkSuper 
prints a more helpful message. In the case where it silently fails, it's 
not even recognizing the superblock as a supported version of JFS and 
this message isn't particularly helpful. In fact this jfs_err() 
statement might be best deleted in its entirety.

>   	}
>   
>   	ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
>   	if (ipaimap == NULL) {
>   		jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>   		rc = -EIO;
> -		goto errout20;
> +		goto out;
>   	}
>   	sbi->ipaimap = ipaimap;
>   
> @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
>   	 */
>   	if ((rc = diMount(ipaimap))) {
>   		jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
> -		goto errout21;
> +		goto err_ipaimap;
>   	}
>   
>   	/*
> @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
>   	ipbmap = diReadSpecial(sb, BMAP_I, 0);
>   	if (ipbmap == NULL) {
>   		rc = -EIO;
> -		goto errout22;
> +		goto err_umount_ipaimap;
>   	}
>   
>   	jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
> @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
>   	 */
>   	if ((rc = dbMount(ipbmap))) {
>   		jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
> -		goto errout22;
> +		goto err_ipbmap;
>   	}
>   
>   	/*
> @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
>   		if (!ipaimap2) {
>   			jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>   			rc = -EIO;
> -			goto errout35;
> +			goto err_umount_ipbmap;
>   		}
>   		sbi->ipaimap2 = ipaimap2;
>   
> @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
>   		if ((rc = diMount(ipaimap2))) {
>   			jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
>   				rc);
> -			goto errout35;
> +			goto err_ipaimap2;
>   		}
>   	} else
>   		/* Secondary aggregate inode table is not valid */
> @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
>   		jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
>   		/* open fileset secondary inode allocation map */
>   		rc = -EIO;
> -		goto errout40;
> +		goto err_umount_ipaimap2;
>   	}
>   	jfs_info("jfs_mount: ipimap:0x%p", ipimap);
>   
> @@ -178,41 +178,32 @@ int jfs_mount(struct super_block *sb)
>   	/* initialize fileset inode allocation map */
>   	if ((rc = diMount(ipimap))) {
>   		jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
> -		goto errout41;
> +		goto err_ipimap;
>   	}
>   
> -	goto out;
> +	return rc;
>   
>   	/*
>   	 *	unwind on error
>   	 */
> -      errout41:		/* close fileset inode allocation map inode */
> +err_ipimap:
> +	/* close fileset inode allocation map inode */
>   	diFreeSpecial(ipimap);
> -
> -      errout40:		/* fileset closed */
> -
> +err_umount_ipaimap2:
>   	/* close secondary aggregate inode allocation map */
> -	if (ipaimap2) {
> -		diUnmount(ipaimap2, 1);
> -		diFreeSpecial(ipaimap2);
> -	}
> -
> -      errout35:
> -
> -	/* close aggregate block allocation map */
> +	if (ipaimap2) diUnmount(ipaimap2, 1);

Coding style: this should be split between two lines:
	if (ipaimap2)
		diUnmount(ipaimap2, 1);

> +err_ipaimap2:
> +	/* close aggregate inodes */
> +	if (ipaimap2) diFreeSpecial(ipaimap2);

Same here.

> +err_umount_ipbmap:	/* close aggregate block allocation map */
>   	dbUnmount(ipbmap, 1);
> +err_ipbmap:		/* close aggregate inodes */
>   	diFreeSpecial(ipbmap);
> -
> -      errout22:		/* close aggregate inode allocation map */
> -
> +err_umount_ipaimap:	/* close aggregate inode allocation map */
>   	diUnmount(ipaimap, 1);
> -
> -      errout21:		/* close aggregate inodes */
> +err_ipaimap:		/* close aggregate inodes */
>   	diFreeSpecial(ipaimap);
> -      errout20:		/* aggregate closed */
> -
> -      out:
> -
> +out:
>   	if (rc)
>   		jfs_err("Mount JFS Failure: %d", rc);
>   
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
