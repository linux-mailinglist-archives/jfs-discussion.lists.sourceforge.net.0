Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E22C3F51CC
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 22:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mIGJI-0004Os-SR; Mon, 23 Aug 2021 20:12:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mIGJH-0004Om-Mx
 for jfs-discussion@lists.sourceforge.net; Mon, 23 Aug 2021 20:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=; b=Cafd0OdBNAABQmAM6Riez86tuo
 qNo2A+ZO2R8LUA/e3avg+XLlpr9yqPG3vxE0g5PozfCG2EEEreSkZtdBpKKiWJMfNWxpcfNUIJ6tD
 wrpn2McyR2Zl2CWilhLR6Wt3d9LVnZR7k+XUsYZmOTV/gm7z8m1wPl9RuFGpiQngUO84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=; b=GiM7PWF0G7LHrAUDlz83jPJNwW
 Bog/xkABIP7l53WYlQYnxgCqSwHzf7QBkKob1CoNVKu2AbKMbZqWiMBoBdCxSJ2GL17XeTGxoGjGD
 hA1A08QuhbiRzCLt+YgtJHRMOs8qhNPAOo2WgIIwW2x1TeriWnBdLx0HQUlJAiUCNsoY=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIGJC-00G8Jt-AB
 for jfs-discussion@lists.sourceforge.net; Mon, 23 Aug 2021 20:12:43 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17NH7W7u005562
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 20:12:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=;
 b=oS3MqFvjpqPlzBPqY16a3+9hre4AXlkfb8TKUYCLnftEju726EM7kGZk4AjQIU2nPquy
 cEIWcXT+9QtN690TYguf9cLNa7306Y1plhiRhii9p2pJOuRS/p9o+WHu6boOKfoTs3ZW
 Cz6gR/gZZ+KE8AAU7RoP7RaBF/W7U72y6T5ialz5GvSZD8UMyk6cKW9Mre5QsNqsB58b
 yH3NmoabIscCNMEn2avl9Cze3KOqn4iGfMTj2y3U1w+oFNYG1ALGjUDtfDvgFHIZlNSO
 d2vf6C0pDRFHKruBTInwWc78fDjuuJjxCNIUnB4qz0f5XTHwRaQ8m43ZFhx7U68kVOQY Ug== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=;
 b=otG0c9uN2zwB8NqvE5EDsPtQzN0XbT2hsnhFA2UI/ZhuWoxH/qJ44ComvoJiRg+nJStF
 0ebkwFZa2aa6UKqYvychyrz25Ti1DfG1C4fywh/Rg4ad1WqvcG7jPShEpONT+3fYUFdK
 59URkxIp5+6ja89o3D7gW5BwYFnt3MpG07qzjUurSiDx0AXn6lRuf1C061nYQgkslL1F
 AKcar131nTPtJLPza1Y69TbqFiR7FR29Fh3zT7HeExOMn+LDeJsGhtTGoerqrq787wKt
 xJI3KA6bkkNwaWe0xkCsVypv3rQorpZqKTg/UXd5mfR28Yd9guB+7/yyK2VfD1pdI+/g Pw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akuswjmry-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 20:12:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17NKBI4R187463
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 20:12:31 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
 by aserp3030.oracle.com with ESMTP id 3ajqhd9g1d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Mon, 23 Aug 2021 20:12:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+YUxfga+dlfQhnD5Wb3cdrr7m9cFvfcCX8rf7mRJv8JYxOgeZ9E3oB83ysbwlDcWqbb1on3XJdp35emtOnLfc8SKAorzEBBDrpsPkLaRz4FIKptyiLNsU/8L2K+QUQsWsIpNKF7Hv4JaURIPNuWlNDHeKa/PDmZhjTMNHE2Mi2Wc1eC5hOQPu2VFpz2evfDcShaHgc2MXzZEJ/S1C/yQYfHwJq1eHlcBUu84R6roSfGtFBhqgYgJLIkr/SWpXYhVVfvXdx3IvIPI9GNRWE/JSVGpRyKpHSC3PDLxG2hJd0ZHJMjKBzc5jbM/a59h/rMim9lIv2kY+qc8+ATDf2SZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=;
 b=AlIsftzsy9r6+rvIXOG8Ix0vru/6LhcyGIqwBmxgbMkV1dzHqcFNjScLR+mUBRIlQQ4kHjFtUfiNMzLbFoFmIsJKll2fd52TealWBrScGtqYto5PY9L+aWpZnqBoqn197DSXT+hKUR2rxLGAx2TwoS3ua9DsYDQfnyxXTazgzx7H7KhgGT9bK8WrZv9WjaD5WW/5kv3/QSauuPtqvbtBiXt4m7Nd/t6rMGfRHt7T+xgTX06X1+euZ7qftCyCrujis37BhpHhCwYtWn/S8RlsjXiV/xemf0eAqSjC0dhI9fRYtMT1yCnYRFUa2n8UG3B6PuHlP9+tGLVNxWHmhlpELg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVM6LOxKkQcfr5BwnEVMatDvjaaN6+MzfNdkXH1uuTQ=;
 b=se2SU0I71lAzaSAmPXBsfpv/qnggAtz/RmVeV9UDjvQpovAi87MSd1dBH3YW5EeGSnbidRKPuLUoUq4oQ2Isf/Cs/GURkTcf2ZJIo/S3gJ6HlO4MtRGzTdE+T3i/KLMsH5R7fiR0mefIc4YcEu5geA3XQsvI5Lv080rdAO7FME0=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SN4PR10MB5543.namprd10.prod.outlook.com (2603:10b6:806:1ea::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 20:12:28 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::9ef:6fd1:7968:f7d6%4]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 20:12:26 +0000
To: jfs-discussion@lists.sourceforge.net
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
 <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
 <24867.59883.813604.12280@cyme.ty.sabi.co.uk>
 <5c37d98a-f830-579f-6094-bb0330c5a032@oracle.com>
 <24867.64162.83642.728478@cyme.ty.sabi.co.uk>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <fce67518-4e66-e19a-4ed6-fda037b4c354@oracle.com>
Date: Mon, 23 Aug 2021 15:12:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <24867.64162.83642.728478@cyme.ty.sabi.co.uk>
Content-Language: en-US
X-ClientProxiedBy: SN7PR04CA0070.namprd04.prod.outlook.com
 (2603:10b6:806:121::15) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN7PR04CA0070.namprd04.prod.outlook.com (2603:10b6:806:121::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Mon, 23 Aug 2021 20:12:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a82573d-e633-44de-67ab-08d96672537a
X-MS-TrafficTypeDiagnostic: SN4PR10MB5543:
X-Microsoft-Antispam-PRVS: <SN4PR10MB5543B9C8705CFAC854B2967287C49@SN4PR10MB5543.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TE09l5+fWLe996FJ3HKVpiHnlRVZEizPdI8UL8nLjfFBAObBDIekOS4qXzE6aoySoWzyl0ppIAm2x0tP2zKp2oGbcyKFGclGJUSQKQid0ShMA8bSFydkNrtVIT4kgHpoqVXDINQnEs2j9k4FOzTfGSegjIdVP7J0cooGAEtMY3DZkLJCqord4kSvTp6bClq78gE7wduQqG/Rtxfh43KYeVhMyhgyNhjY0fhJCb7WIGldw8eClBsNEjO1anvKJNOSMeVJ7xqrW2napUnamxtMxIiz78Ypp0bxHQ1BVuzJ4btfp8ruaPwYeNr0hJ8p17CYMtnaXt1TuBtIA2k/n9/bJ9vSk0j6L+dSP+cDZBy+NO7+X16R2jQhw56p7sfcyGy4vYmFNrkYMtOXLVQcqUcG5g8YuunlF/21wImpvI4Q+ZTJ7APqDzKnRecyERDCbEBpy5kuoJrc8y0YdUhChZJDU/5taUKi4louRTfND+8cNwhSWRQZ+VaDYcVZAvjYX4XcGle9FghHVPaWZMN4/quvFM2n5+k1Z7/olkR++Es98KxlOVhraMAjwIFjuXvDk3mM4ZGtDTu/FgKmO5eJ0DZh3CqwbGfoEwfaWdALeQgugxTLXxeX07gT7OH3CHX7KINbCiThvH3XQmbDyffhcJHZaw0gze1O9XWahbp8CYWSXODLH50nxvKVcV5vn6h3bOcoG5pcF19OB1wgob2qF5jXBO0IOwThmViZiut3vrh694s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(39860400002)(346002)(376002)(66946007)(31696002)(6486002)(4744005)(31686004)(66476007)(8936002)(478600001)(6916009)(26005)(36756003)(66556008)(86362001)(186003)(44832011)(5660300002)(53546011)(38100700002)(956004)(2906002)(2616005)(16576012)(316002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3dBbVpJaUM1Z3NvNWJBQmF1bW9JWnpaZTAwME1lTmpOMDJyNlJjU1VqbzE2?=
 =?utf-8?B?UkRmbjVkRXM0Vk5QLzdSdDhqLzhGcGxPZmtGdTErRnJ1bkQ2SmhjMVR2S2t6?=
 =?utf-8?B?NURsNmNkaTNSRGFXa1VuUlJHNzVzYXM4aHp5Tzh6dUJocmFDUHJ5eEhSQWZs?=
 =?utf-8?B?bndEZlhzeHQxQjdmS3lTL1RibDRKdy9QSmNzRnFuSXhSM2QxNVRjRiswUVZ5?=
 =?utf-8?B?QlVrRlFFd2lqbmNXbFdaaDBqa1p2RjR0ZmU0N3dnWE9NLzlkc0MvSENxUTJF?=
 =?utf-8?B?eExoYmk1dXppdnFSZUlxOENGdlNyZzlRdmxIcjQzd2hkSUhrWDhibVZOQjV4?=
 =?utf-8?B?ODY3b0VkL2M3ekxRZmlVTU9YRzZzdW1DRHVmR3NBZ2JjbUFxODJ3MW1WM1pE?=
 =?utf-8?B?WGxSMm9ZUmNoTEVWVm5KYXFRTk5rYys1RERYL0NNdDV1YmRRRjYwMTJqVzlu?=
 =?utf-8?B?cTFscFYwdnlKOGxBaGJkblZURFdRRzdFcHpGOW8yQWVXcEdLZ21oOGdUUWVD?=
 =?utf-8?B?bzdTN05MN2hVKzhOaDFmRzJST0U0THY2QWx1dGYvb0paKzlsTi9aMmVYWEF6?=
 =?utf-8?B?K1l1Ulkwa3lFaTRGWXBwOGlvS05YazE4cGpGbHcrK01QMjdWZWU0a1k0RG40?=
 =?utf-8?B?VVc1SEVrMkhiVnlGSDByVWp1RGRqRE1DODd6RytnTk4rTHh6d25VMjdoakxJ?=
 =?utf-8?B?TWxuRTRWMWtHOG44U3lPSGZoRWJ1MStWYWZLeXhhN0pnWG5SUGE2YWVUQndF?=
 =?utf-8?B?TGsxKy9WRVVVVmlPcHVCVHNjcXZ1UVkxem1QOG8rVGZSYm1HS0pPL1FRbUhQ?=
 =?utf-8?B?WTh0cjNsb1lBMGI1MXo3L0ZmSWJFNlJHVm1LR2RJVjYyemNiOHFLTzJoOE9Q?=
 =?utf-8?B?dEVVWm53WldyVWZ1VzI0UmZDUkpqQ3VCR01NaWdkS2NFSThpU0MzUmhUbkt3?=
 =?utf-8?B?MXlXQndYOVAya1VmcmV2emVWZkxFM1A3M3JQWjhGVDVwRHhZaGk1VEp6RkN2?=
 =?utf-8?B?ZUlBL3FJd0d3ZGxOc2w0bGhkZDRYQS83SmxKQkNIcFc5THhMdXNoeTZTTTRY?=
 =?utf-8?B?RzJDUWVKRTVNMWxxM2NlVVVGQXFnUnhIT2c2ZE0vYzlwVjNzbVdTQkhjY0RS?=
 =?utf-8?B?SDhMcUF3ajRwaW0wZW9EZEpieWVyQm5HMmdabTF5NDBnaGFMcnJHNjdkRTNF?=
 =?utf-8?B?Q0RqVE5rTHdWdHFaKzBYWkxMRXBnREdoY3Rtb01YOUpKRkp6QTlYOW4wR2hu?=
 =?utf-8?B?bWxweng5OUxtZ2ZtQkN5b0dTdjJPOE9HTUJUYndxc3VLQndDd0VSLzhnQk5u?=
 =?utf-8?B?ZHEzTCt3VUFxcERML0k1V0cxSURTYUt2alNXMFNaalpsbW1kekY5SXY0d0Rp?=
 =?utf-8?B?R3RZN0ZTMWlTbDV0by94VUxkUWFJN2JnNjJVVmo2WFIwdWlDV1JXdWxuNlF2?=
 =?utf-8?B?WkQrMXRmYWl5S1d4TDBqMjJGSHROYnhZREJ0L2RsendSa1Ntb2dRc0pmQmRy?=
 =?utf-8?B?UWx6RC9TSFp4eXBrUXhHU01pbWdPbE5kNHFYR1J4K1dNdFd3YmNFL1hvZVF2?=
 =?utf-8?B?T0tyYnl2Qk11U2dORThzeHV4L3hoMHVTaHpSdGxQSWFkVU0yMno2ZFN4OU1q?=
 =?utf-8?B?Z0pndTVPOWNhRVRvaDNjM1V3ZnlXQkk0SGRTT0k0cjhyTWEwYndiSFovR0h2?=
 =?utf-8?B?a292VXRmUEloTStMTVRLTmg4TXFaVUN4VkhkWmo5RHltUWdFaytCSVhPS0tI?=
 =?utf-8?Q?aeMjlEFzZyV+Jz01Aa5M9DmxK4XFQ6FXZrlRfgG?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a82573d-e633-44de-67ab-08d96672537a
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 20:12:26.3576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: on8nmQzSg5BIkttKZ4/YmkLt1GWV6QAXJ8YVGvPaRUN40EZqmbpeW5EnM4YwGY9e18J8jY8qtoca/D25yzNEE+RixQ6fk4uClrarbVK2jSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5543
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108230138
X-Proofpoint-ORIG-GUID: oC9EJX3CKl8fzrGX_htZf2-l9sPqqpyI
X-Proofpoint-GUID: oC9EJX3CKl8fzrGX_htZf2-l9sPqqpyI
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/23/21 2:44 PM, Peter Grandi via Jfs-discussion wrote:
 >> I've never given any thought to that since I've never expected >> to enable
 a second fileset. > > I am happy with JFS with a single fileset. :-) But
 if one day > someone is given time by IBM to hav [...] 
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
X-Headers-End: 1mIGJC-00G8Jt-AB
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

On 8/23/21 2:44 PM, Peter Grandi via Jfs-discussion wrote:

>> I've never given any thought to that since I've never expected
>> to enable a second fileset.
> 
> I am happy with JFS with a single fileset. :-) But if one day
> someone is given time by IBM to have multiple filesets on Linux
> it would be a neat feature (e.g. potentially faster 'fsck' too),
> and I suspect it would not add many lines of code. :-)

As far as I know, IBM lost all interest in Linux's JFS when I left the 
company over 10 years ago. In fact, I spend very little time on it and 
nobody else seems interested in being a maintainer.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
