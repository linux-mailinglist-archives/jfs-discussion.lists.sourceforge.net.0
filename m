Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D113B1C92
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jun 2021 16:33:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lw3vw-0007kt-8A; Wed, 23 Jun 2021 14:32:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lw3vu-0007ka-0d
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WKKbL19LgTM8JEBYZQwWfrJy7ycEQhoEDb7hQ0kxAvo=; b=FRSiqmeaIOqReQOl03TRYLmwPW
 ZDADGyNNt9a3hJdPZ18xyxyn7D6HP8R746DD8zEIOXX0oVPfY/8mpP82T7j3zSNC7mkDxgMxvzhEG
 ThrImeyeiEgFZb5bVvcEwiyfchn7R/SHqf/g1VcfTqAhInpx4F3TqEeP8Fcu38GXFWWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WKKbL19LgTM8JEBYZQwWfrJy7ycEQhoEDb7hQ0kxAvo=; b=dgG3BFdkAcFFkP6XZgGSl6Vy9S
 Y1BO0NxGUfFnwow0584giq77wPOgbpO50WjUFGaWyVqSDjHOMhfx0lUnb/ojpZeuHy1JzYYrL+bZc
 XQXj4WFpeKtW/1JEwybMxjy/1M7hQJIRSIjqaKwRRydv/a9t8W2SZHbM3dNbLwQU9BOs=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lw3vs-009Jaj-9G
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 14:32:51 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NEVXF9015420; Wed, 23 Jun 2021 14:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=WKKbL19LgTM8JEBYZQwWfrJy7ycEQhoEDb7hQ0kxAvo=;
 b=l/uk8PaMHD2kjQzdybi/702V9xPLabOFO3ILTymJNRy2ApHseAOOy4caB9NUeq4rKA7Y
 4VdQto6GwPBFOpqlBLxi30haWn1dnAzf35vtKjP3Dowa/Unvz+nJUMN4gjmsnJ9whVrp
 muxHquCyx2xD/Cb9i+jIiSenLw6T/b5LGVUsolmzTb/cMGGXILN5Q5w5XFu2wCirQtKe
 IUwZsQxFceJt8c3dBcWnTIGW14Rgsfi/dY+vRfZPV4qhDCMXP80MsfBqc7RRG0YCvf6G
 kEf+OQj5Ha30eV2FIKXwuzEKzOC+P3wNQqAVcMD/GbzXgSWkFNBRofF/vRxneBIl0oTX oA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 39c634r4e1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:32:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15NEVVi0093442;
 Wed, 23 Jun 2021 14:32:41 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 by aserp3020.oracle.com with ESMTP id 3998d96rea-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 14:32:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fi3dtYrNHRtVhx6NkfypOyUnobgMm134pT+cExAVjRLJwbq34iSpCnFaPX5X8z3UEgqa07A6++NjRxk5hyyI/WYi1iMk9yUEfAiA68rxU9wo3GCOyzmyFyzxYd/I2Fsl3qI3KTuWda6zIXcRKGWWORb9gfS9gOTP8SIeVRkiBNW3nd714hz+ml2B2txFBj82Z44EzHr+gC3zs+M6anqn6ztz7PCFYZIjYrF/ymGwHEkASVvE3DaT90i+FC2LXg1UaSRfpWSd4UlCjanz8h3FN/zowctVYGCyVTmnAIwXiiYHoCfjpiIkJG5k6Ds8nb5G38BeC2tHhX9MvT+pWKgPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKKbL19LgTM8JEBYZQwWfrJy7ycEQhoEDb7hQ0kxAvo=;
 b=ldpVGE6ILOV42m3ZpdXjxb0TFjUfzkJJ8M7gNGjWg1cserd3YUFFVPR0BAdvCjyN3N8TjUIDqB2QevYD1q9qTrFWIq/yc1ab/b8shpu7+xNlzVLaUqPdIgOEkzAJhnRXt9fQb9rQTqSe+P2j8TgOllRRp4StRYHIdozx4fuWJZ0MX2iec4FGiLmLHFREBoVc0ADJ2rqmp350jVb5ntIxcktArQWX1GTI14WWCIIHw93kzbnIUtQerVpY+K9LBH3nQ59hyiw+XY4fEb+XAQDI6BnT07TWQLyhijm+pMi27a37L8GHXn/W4R8+1cmlHMJzCuCu1bCnfw9vMOcZH+HUGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKKbL19LgTM8JEBYZQwWfrJy7ycEQhoEDb7hQ0kxAvo=;
 b=InlxvtCF+4h3FNs2XrBvwTk/+subgnTyOmYYjlGyWQVM1MMFsofnl1dJO0jAnXGGRr4ohcIcXLxCI8Qp2EmHeyC5WV+sxN18Cpguy3r+ZAdLmaPFWJeQM9UQO/0ASWO/mAZrHvRHNg3/LmHRQDaxjjW+53XKfzc1LiEPxDBdGpM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4277.namprd10.prod.outlook.com (2603:10b6:610:7b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 14:32:38 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca%2]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 14:32:38 +0000
To: Kees Cook <keescook@chromium.org>
References: <20210621232322.1871799-1-keescook@chromium.org>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <c623e29a-a38d-c7f8-3035-61d1ad37f43b@oracle.com>
Date: Wed, 23 Jun 2021 09:32:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210621232322.1871799-1-keescook@chromium.org>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SA9PR13CA0028.namprd13.prod.outlook.com
 (2603:10b6:806:21::33) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA9PR13CA0028.namprd13.prod.outlook.com (2603:10b6:806:21::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.9 via Frontend Transport; Wed, 23 Jun 2021 14:32:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8958a4f5-2468-4053-a0c3-08d93653c053
X-MS-TrafficTypeDiagnostic: CH2PR10MB4277:
X-Microsoft-Antispam-PRVS: <CH2PR10MB4277F5BB592DF6398EE59D9487089@CH2PR10MB4277.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xV7f9lnih8eJ4tnI1G9uvEQmgyf/Eu5HsxnmrY0gCsbqgE2eLpf2fXdc5EBfnf9GJOQnsdut5/q3gad7sl2vdg3xHbLBPUhVZHd0xzsDTp3JokKjqsIidwIjOoz/fcvskO5lUcrqQ6j2AIryoODr65uRya8bItUM5WaCfcKIHiadUitlXVHyq0zj91j5uRrdui1845uxqA4l+ME6eh5KBDA/R1UeqH8JDIaVvt1SOwSd3uVoon4TUlHwUdck2sunrf71bo/k64GSf8v3vx5PZQMfgVAXRJtfwxTXJ4pNftYEkZWbbBYD7L8HWAsAfO0z/uc+0rkY/C4/Rs9C75cnN8P9Ewgj5auVuxo+QJGRsVzK/cmQrgC+qk5CSKS1iyLseczltb106pqlgQen1v9f4pc2BrYtNR6imwxuIem/+QHjvfaozlXD7x4HAM5/K7kjHvhKGUf9FdmBWp4QlIq1wQlyj1Tgc9L3pSR+ib819GemScHyTZGGZ7puOKpcM0DeTOYHiFHpwbdUnwAU+/e7aUHOl8UW0dsE9Y4whhWHbklxrwFOWJm81QSSUkRhmUNM1zEg/od9Xfx2RhlG3PZGiYQ8Ed9jzPjiOSrfZqcwwRTXtW5r72SmZDT6z3Rhufgza7fJJwYdwvqRbgvMfdQvUGKA1WHDrdJ1pAN6ipyyTaWTq3lm5jEmpicXP7yFmXEN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(346002)(396003)(39860400002)(86362001)(31686004)(31696002)(38100700002)(53546011)(186003)(36756003)(4326008)(16526019)(16576012)(6916009)(2906002)(478600001)(83380400001)(26005)(6486002)(316002)(44832011)(66556008)(66476007)(2616005)(956004)(66946007)(5660300002)(8676002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTZrNzUrNnNvR3dnak1ZRGJXK2VhMlVaT1phWVdEL3RQQ3FIcFFQOFJKYlRz?=
 =?utf-8?B?NDRlWml5d0RvRytwMkhYU1VCSnhqRHlGeDFSV0Zac0pkYThaakpmd2IwdEpj?=
 =?utf-8?B?RmVMR3Fab3hJUWkzMWRsZEo0NUNlUDI0Vis3NW1hak5rU1BCTWo4OFlwait6?=
 =?utf-8?B?L0dlN3hDZlQweWVXWnl1b0hIMitCeWlPNU1GTndFN1ltMTBBNkt6d0NlWjli?=
 =?utf-8?B?Q3ZmOVFmc1U5dDFjNFVMVHJxRUNNRVZicGk3dDdRSitlUm9UdzFCVnkwMDVj?=
 =?utf-8?B?ZzBnRWl2c0NxdzVJbWpTRlE1RmJ1bnpFYjZKSHE1RUpCMXBGZU9GT0FQYmxq?=
 =?utf-8?B?MjkvWEN1c2FPZnRMV1JDWFNQamtKcEhmSVFpamQxRVdwdXo0a0xOYWFVK0Np?=
 =?utf-8?B?MVk4TG9WTjN4QkNLc0Y3S0JoR2RDTkN5bnFkb2ZYSUJkd1FtNjhjMHA1OUVV?=
 =?utf-8?B?R1F5WUtJekpnd1d3eWRMMk5penUvRVhFUVJISTVpNTdkbXBadkR2ZUZJQ3dZ?=
 =?utf-8?B?VGlTbytkRGd2ci85Y2daZWFhd0IxeUNvT0VSL2d4ZkkzM0psQVFWbHNIcVFx?=
 =?utf-8?B?ak9aUVhQSUM2bDhrRFJCNDlaeVV1N2J6TXBVcGtZcElocHBpVVVUWTRhcW5M?=
 =?utf-8?B?eEkwY1BXTXgrMlhCNmRqYWRsVEk1VzREeGJNVjNHU1ZveGFmcUZWNlpxblU0?=
 =?utf-8?B?bXFBdWJvRE15bFJCYnV6ZFBWMGJXQUlZVG1RYXBBaUlpakp4MVRhZjF1MGdn?=
 =?utf-8?B?NllYQmVtckZzemt0OGVEajR3cElJNDVIMWw3S3VKVVpjd0Y2WWxkOVFaWkxs?=
 =?utf-8?B?WXdFY1lNcjJDNHBiZ2svRWNoYlZMa3hpbTV5ODB5UGt4MnEvRkVBSzF5aTUw?=
 =?utf-8?B?MnNTdTdGanAxN0NyUlMzM1U3SVpSeGNzeU1zazFCTWxLSVNET2U2ZmcxV3Zj?=
 =?utf-8?B?aS8yNFBtdi8xWnNyYlZzMDI0bEZRYVp0bGZ3Y1N2N0FFdHJqMWxZMlFRNU50?=
 =?utf-8?B?ZW1aRWlMZEppVEwrNEt1UDkzclB6VXVaaXh3WjBpVFVZTys5em8wRitQcWdh?=
 =?utf-8?B?L3FiTlJLZlFRaGJ2R3ZDRWtLWTVreVVsVEdNajA5b1YrckdKS1RWTlkrckg1?=
 =?utf-8?B?WEx3OTJrbnZiM01yZDNUZEU4cmxsUldRcW54cndnTDJXdnppREFQbk5zYUI3?=
 =?utf-8?B?Rk1CY2U3aXp6T244Zm85aHFKNGtYTnMvcXVzUEZMN3RDdnVLeTBQV2U2cFpL?=
 =?utf-8?B?K0JtUFJBTmdibGd1Njh1Tll1djcvcHBUZEo1MGxPT3BUZVhoeDlzT2czaThC?=
 =?utf-8?B?eDAxSDBRNTdtSnhkZDZqcW0vODl5N3lZL3NkZXA2dDN6RUhodnA1UHhMT214?=
 =?utf-8?B?RldIalJlQlUwa1dVVHJQbkdjb3RhVHMvL2ZFaFFQVEJQNGlTaHRPb2NiLzFY?=
 =?utf-8?B?aUN4b0Rmeno0T2FoQjlmd2luY1hHdEtvakEwcU4rZ1VZMWttdWNDUGozeEhl?=
 =?utf-8?B?czRiZTdpY2RUQzNZTG1Bajh5ay9IKzRGaDVGdXdPcXVRVEVKVG00TlNaRVEy?=
 =?utf-8?B?UlYzbFNaK3lUaURQZEZJVU1SdEpjUUdjKzFvSDVOS0k2ejZad3ovZndnV3JO?=
 =?utf-8?B?eHFQV242ZmE5ZndlR2JoWlllUjFxb2hmLzRub1hRanRVREZBUS9QRVBxWDJF?=
 =?utf-8?B?TjFtQXQxZStRS21FdGhaQ2ZDZFF2bkx0V1JXRjJyTUNsOXZlYXNnc2w3QzBz?=
 =?utf-8?Q?ejf9wICL69JF/IA8b05FPL4aaj8stpgGHe/Qt1+?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8958a4f5-2468-4053-a0c3-08d93653c053
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 14:32:38.8210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WxkFQq5GkQy8dQ4+WfFd6rQO31fgUlCDwYSNSq4SJ1+mKhwlho5SwSQgZ7OVTquZ8Y+AUnFeqa0EjMnIJ1jl7lQBc4r1Jf7vlzHn3AhTxHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4277
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10024
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230084
X-Proofpoint-ORIG-GUID: 9gUw4hbkUBgtvLTUcuMlBqziHeYY7-YM
X-Proofpoint-GUID: 9gUw4hbkUBgtvLTUcuMlBqziHeYY7-YM
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lw3vs-009Jaj-9G
Subject: Re: [Jfs-discussion] [PATCH] jfs: Avoid field-overflowing memcpy()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNi8yMS8yMSA2OjIzIFBNLCBLZWVzIENvb2sgd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gZm9y
IEZPUlRJRllfU09VUkNFIHBlcmZvcm1pbmcgY29tcGlsZS10aW1lIGFuZCBydW4tdGltZQo+IGZp
ZWxkIGFycmF5IGJvdW5kcyBjaGVja2luZyBmb3IgbWVtY3B5KCksIG1lbW1vdmUoKSwgYW5kIG1l
bXNldCgpLAo+IGF2b2lkIGludGVudGlvbmFsbHkgd3JpdGluZyBhY3Jvc3MgbmVpZ2hib3Jpbmcg
ZmllbGRzLgo+IAo+IEludHJvZHVjZSBtb3JlIHVuaW9ucyB0byBjb3ZlciB0aGUgZnVsbCBpbmxp
bmUgZGF0YSBzZWN0aW9uLCBzbyB0aGF0IHRoZQo+IGVudGlyZSAyNTYgYnl0ZXMgY2FuIGJlIGFk
ZHJlc3NlZCBieSBtZW1jcHkoKSB3aXRob3V0IHRoaW5raW5nIGl0IGlzCj4gY3Jvc3NpbmcgZmll
bGQgYm91bmRhcmllcy4gQWRkaXRpb25hbGx5IGFkanVzdHMgZGlyIG1lbWNweSgpIHRvIHVzZQo+
IGV4aXN0aW5nIHVuaW9uIG5hbWVzIHRvIGdldCB0aGUgc2FtZSBjb3ZlcmFnZS4KClRoaXMgYWxs
IG1ha2VzIHNlbnNlIGFuZCBsb29rcyByZWFzb25hYmxlLiBJJ2xsIHB1c2ggaXQgdG8gLW5leHQu
CgpUaGFua3MsClNoYWdneQoKPiAKPiBkaWZmb3Njb3BlIHNob3dzIHRoZXJlIGFyZSBubyBiaW5h
cnkgZGlmZmVyZW5jZXMgYmVmb3JlL2FmdGVyIGV4Y2VwdGluZwo+IHRoZSBuYW1lIG9mIHRoZSBp
bml0Y2FsbCwgd2hpY2ggaXMgbGluZSBudW1iZXIgYmFzZWQ6Cj4gCj4gJCBkaWZmb3Njb3BlIC0t
ZXhjbHVkZS1kaXJlY3RvcnktbWV0YWRhdGEgeWVzIGJlZm9yZS9mcyBhZnRlci9mcwo+IC0tLSBi
ZWZvcmUvZnMKPiArKysgYWZ0ZXIvZnMKPiDilIIgICAtLS0gYmVmb3JlL2ZzL2pmcwo+IOKUnOKU
gOKUgCArKysgYWZ0ZXIvZnMvamZzCj4g4pSCIOKUgiAgIC0tLSBiZWZvcmUvZnMvamZzL3N1cGVy
Lm8KPiDilIIg4pSc4pSA4pSAICsrKyBhZnRlci9mcy9qZnMvc3VwZXIubwo+IOKUgiDilIIg4pSc
4pSA4pSAIHJlYWRlbGYgLS13aWRlIC0tc3ltYm9scyB7fQo+IOKUgiDilIIg4pSCIEBAIC0yLDE1
ICsyLDE1IEBACj4g4pSCIOKUgiDilIIgIFN5bWJvbCB0YWJsZSAnLnN5bXRhYicgY29udGFpbnMg
MTU4IGVudHJpZXM6Cj4g4pSCIOKUgiDilIIgICAgIE51bTogICAgVmFsdWUgICAgICAgICAgU2l6
ZSBUeXBlICAgIEJpbmQgICBWaXMgICAgICBOZHggTmFtZQo+IC4uLgo+IOKUgiDilIIg4pSCIC0g
ICAgIDU6IDAwMDAwMDAwMDAwMDAwMDAgICAgIDAgTk9UWVBFICBMT0NBTCAgREVGQVVMVCAgICA2
IF9faW5pdGNhbGxfX2ttb2RfamZzX18zMTlfMTA0OV9pbmkKPiB0X2pmc19mczYKPiDilIIg4pSC
IOKUgiArICAgICA1OiAwMDAwMDAwMDAwMDAwMDAwICAgICAwIE5PVFlQRSAgTE9DQUwgIERFRkFV
TFQgICAgNiBfX2luaXRjYWxsX19rbW9kX2pmc19fMzE5XzEwNTBfaW5pCj4gdF9qZnNfZnM2Cj4g
Li4uCj4gCj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+
Cj4gLS0tCj4gICBmcy9qZnMvamZzX2Rpbm9kZS5oIHwgMTQgKysrKysrKysrKy0tLS0KPiAgIGZz
L2pmcy9qZnNfaW1hcC5jICAgfCAgNCArKy0tCj4gICBmcy9qZnMvamZzX2luY29yZS5oIHwgMTIg
KysrKysrKysrKy0tCj4gICBmcy9qZnMvc3VwZXIuYyAgICAgIHwgIDMgKystCj4gICA0IGZpbGVz
IGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2ZzL2pmcy9qZnNfZGlub2RlLmggYi9mcy9qZnMvamZzX2Rpbm9kZS5oCj4gaW5kZXggZDZh
Zjc5ZTk0MjYzLi42YjIzMWQwZDAwNzEgMTAwNjQ0Cj4gLS0tIGEvZnMvamZzL2pmc19kaW5vZGUu
aAo+ICsrKyBiL2ZzL2pmcy9qZnNfZGlub2RlLmgKPiBAQCAtMTAxLDcgKzEwMSw2IEBAIHN0cnVj
dCBkaW5vZGUgewo+ICAgCQkJCQl1OCB1bnVzZWRbMTZdOwkvKiAxNjogKi8KPiAgIAkJCQkJZHhk
X3QgX2R4ZDsJLyogMTY6ICovCj4gICAJCQkJCXVuaW9uIHsKPiAtCQkJCQkJX19sZTMyIF9yZGV2
OwkvKiA0OiAqLwo+ICAgCQkJCQkJLyoKPiAgIAkJCQkJCSAqIFRoZSBmYXN0IHN5bWxpbmsgYXJl
YQo+ICAgCQkJCQkJICogaXMgZXhwZWN0ZWQgdG8gb3ZlcmZsb3cKPiBAQCAtMTA5LDkgKzEwOCwx
NSBAQCBzdHJ1Y3QgZGlub2RlIHsKPiAgIAkJCQkJCSAqIG5lZWRlZCAod2hpY2ggd2lsbCBjbGVh
cgo+ICAgCQkJCQkJICogSU5MSU5FRUEpLgo+ICAgCQkJCQkJICovCj4gLQkJCQkJCXU4IF9mYXN0
c3ltbGlua1sxMjhdOwo+IC0JCQkJCX0gX3U7Cj4gLQkJCQkJdTggX2lubGluZWVhWzEyOF07Cj4g
KwkJCQkJCXN0cnVjdCB7Cj4gKwkJCQkJCQl1bmlvbiB7Cj4gKwkJCQkJCQkJX19sZTMyIF9yZGV2
OwkvKiA0OiAqLwo+ICsJCQkJCQkJCXU4IF9mYXN0c3ltbGlua1sxMjhdOwo+ICsJCQkJCQkJfSBf
dTsKPiArCQkJCQkJCXU4IF9pbmxpbmVlYVsxMjhdOwo+ICsJCQkJCQl9Owo+ICsJCQkJCQl1OCBf
aW5saW5lX2FsbFsyNTZdOwo+ICsJCQkJCX07Cj4gICAJCQkJfSBfc3BlY2lhbDsKPiAgIAkJCX0g
X3UyOwo+ICAgCQl9IF9maWxlOwo+IEBAIC0xMjIsNiArMTI3LDcgQEAgc3RydWN0IGRpbm9kZSB7
Cj4gICAjZGVmaW5lIGRpX3JkZXYJCXUuX2ZpbGUuX3UyLl9zcGVjaWFsLl91Ll9yZGV2Cj4gICAj
ZGVmaW5lIGRpX2Zhc3RzeW1saW5rCXUuX2ZpbGUuX3UyLl9zcGVjaWFsLl91Ll9mYXN0c3ltbGlu
awo+ICAgI2RlZmluZSBkaV9pbmxpbmVlYQl1Ll9maWxlLl91Mi5fc3BlY2lhbC5faW5saW5lZWEK
PiArI2RlZmluZSBkaV9pbmxpbmVfYWxsCXUuX2ZpbGUuX3UyLl9zcGVjaWFsLl9pbmxpbmVfYWxs
Cj4gICAJfSB1Owo+ICAgfTsKPiAgIAo+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2ltYXAuYyBi
L2ZzL2pmcy9qZnNfaW1hcC5jCj4gaW5kZXggOTM3Y2EwN2I1OGIxLi40ZGYzZjIyMmMzNWMgMTAw
NjQ0Cj4gLS0tIGEvZnMvamZzL2pmc19pbWFwLmMKPiArKysgYi9mcy9qZnMvamZzX2ltYXAuYwo+
IEBAIC03NjMsNyArNzYzLDcgQEAgaW50IGRpV3JpdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUg
KmlwKQo+ICAgCQlsdiA9ICYgZGlsaW5lbG9jay0+bHZbZGlsaW5lbG9jay0+aW5kZXhdOwo+ICAg
CQlsdi0+b2Zmc2V0ID0gKGRpb2Zmc2V0ICsgMiAqIDEyOCkgPj4gTDJJTk9ERVNMT1RTSVpFOwo+
ICAgCQlsdi0+bGVuZ3RoID0gMjsKPiAtCQltZW1jcHkoJmRwLT5kaV9mYXN0c3ltbGluaywgamZz
X2lwLT5pX2lubGluZSwgSURBVEFTSVpFKTsKPiArCQltZW1jcHkoJmRwLT5kaV9pbmxpbmVfYWxs
LCBqZnNfaXAtPmlfaW5saW5lX2FsbCwgSURBVEFTSVpFKTsKPiAgIAkJZGlsaW5lbG9jay0+aW5k
ZXgrKzsKPiAgIAl9Cj4gICAJLyoKPiBAQCAtMzA4NCw3ICszMDg0LDcgQEAgc3RhdGljIGludCBj
b3B5X2Zyb21fZGlub2RlKHN0cnVjdCBkaW5vZGUgKiBkaXAsIHN0cnVjdCBpbm9kZSAqaXApCj4g
ICAJfQo+ICAgCj4gICAJaWYgKFNfSVNESVIoaXAtPmlfbW9kZSkpIHsKPiAtCQltZW1jcHkoJmpm
c19pcC0+aV9kaXJ0YWJsZSwgJmRpcC0+ZGlfZGlydGFibGUsIDM4NCk7Cj4gKwkJbWVtY3B5KCZq
ZnNfaXAtPnUuZGlyLCAmZGlwLT51Ll9kaXIsIDM4NCk7Cj4gICAJfSBlbHNlIGlmIChTX0lTUkVH
KGlwLT5pX21vZGUpIHx8IFNfSVNMTksoaXAtPmlfbW9kZSkpIHsKPiAgIAkJbWVtY3B5KCZqZnNf
aXAtPmlfeHRyb290LCAmZGlwLT5kaV94dHJvb3QsIDI4OCk7Cj4gICAJfSBlbHNlCj4gZGlmZiAt
LWdpdCBhL2ZzL2pmcy9qZnNfaW5jb3JlLmggYi9mcy9qZnMvamZzX2luY29yZS5oCj4gaW5kZXgg
YTQ2NmVjNDFjZmJiLi43MjFkZWY2OWU3MzIgMTAwNjQ0Cj4gLS0tIGEvZnMvamZzL2pmc19pbmNv
cmUuaAo+ICsrKyBiL2ZzL2pmcy9qZnNfaW5jb3JlLmgKPiBAQCAtNzcsMTEgKzc3LDE4IEBAIHN0
cnVjdCBqZnNfaW5vZGVfaW5mbyB7Cj4gICAJCQl1bmNoYXIgX3VudXNlZFsxNl07CS8qIDE2OiAq
Lwo+ICAgCQkJZHhkX3QgX2R4ZDsJCS8qIDE2OiAqLwo+ICAgCQkJLyogX2lubGluZSBtYXkgb3Zl
cmZsb3cgaW50byBfaW5saW5lX2VhIHdoZW4gbmVlZGVkICovCj4gLQkJCXVuY2hhciBfaW5saW5l
WzEyOF07CS8qIDEyODogaW5saW5lIHN5bWxpbmsgKi8KPiAgIAkJCS8qIF9pbmxpbmVfZWEgbWF5
IG92ZXJsYXkgdGhlIGxhc3QgcGFydCBvZgo+ICAgCQkJICogZmlsZS5feHRyb290IGlmIG1heGVu
dHJ5ID0gWFRST09USU5JVFNMT1QKPiAgIAkJCSAqLwo+IC0JCQl1bmNoYXIgX2lubGluZV9lYVsx
MjhdOwkvKiAxMjg6IGlubGluZSBleHRlbmRlZCBhdHRyICovCj4gKwkJCXVuaW9uIHsKPiArCQkJ
CXN0cnVjdCB7Cj4gKwkJCQkJLyogMTI4OiBpbmxpbmUgc3ltbGluayAqLwo+ICsJCQkJCXVuY2hh
ciBfaW5saW5lWzEyOF07Cj4gKwkJCQkJLyogMTI4OiBpbmxpbmUgZXh0ZW5kZWQgYXR0ciAqLwo+
ICsJCQkJCXVuY2hhciBfaW5saW5lX2VhWzEyOF07Cj4gKwkJCQl9Owo+ICsJCQkJdW5jaGFyIF9p
bmxpbmVfYWxsWzI1Nl07Cj4gKwkJCX07Cj4gICAJCX0gbGluazsKPiAgIAl9IHU7Cj4gICAjaWZk
ZWYgQ09ORklHX1FVT1RBCj4gQEAgLTk2LDYgKzEwMyw3IEBAIHN0cnVjdCBqZnNfaW5vZGVfaW5m
byB7Cj4gICAjZGVmaW5lIGlfZHRyb290IHUuZGlyLl9kdHJvb3QKPiAgICNkZWZpbmUgaV9pbmxp
bmUgdS5saW5rLl9pbmxpbmUKPiAgICNkZWZpbmUgaV9pbmxpbmVfZWEgdS5saW5rLl9pbmxpbmVf
ZWEKPiArI2RlZmluZSBpX2lubGluZV9hbGwgdS5saW5rLl9pbmxpbmVfYWxsCj4gICAKPiAgICNk
ZWZpbmUgSVJFQURfTE9DSyhpcCwgc3ViY2xhc3MpIFwKPiAgIAlkb3duX3JlYWRfbmVzdGVkKCZK
RlNfSVAoaXApLT5yZHdybG9jaywgc3ViY2xhc3MpCj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9zdXBl
ci5jIGIvZnMvamZzL3N1cGVyLmMKPiBpbmRleCAxZjBmZmFiYmRlNTYuLjkwMzBhZWFmMGY4OCAx
MDA2NDQKPiAtLS0gYS9mcy9qZnMvc3VwZXIuYwo+ICsrKyBiL2ZzL2pmcy9zdXBlci5jCj4gQEAg
LTkzOSw3ICs5MzksOCBAQCBzdGF0aWMgaW50IF9faW5pdCBpbml0X2pmc19mcyh2b2lkKQo+ICAg
CWpmc19pbm9kZV9jYWNoZXAgPQo+ICAgCSAgICBrbWVtX2NhY2hlX2NyZWF0ZV91c2VyY29weSgi
amZzX2lwIiwgc2l6ZW9mKHN0cnVjdCBqZnNfaW5vZGVfaW5mbyksCj4gICAJCQkwLCBTTEFCX1JF
Q0xBSU1fQUNDT1VOVHxTTEFCX01FTV9TUFJFQUR8U0xBQl9BQ0NPVU5ULAo+IC0JCQlvZmZzZXRv
ZihzdHJ1Y3QgamZzX2lub2RlX2luZm8sIGlfaW5saW5lKSwgSURBVEFTSVpFLAo+ICsJCQlvZmZz
ZXRvZihzdHJ1Y3QgamZzX2lub2RlX2luZm8sIGlfaW5saW5lX2FsbCksCj4gKwkJCXNpemVvZl9m
aWVsZChzdHJ1Y3QgamZzX2lub2RlX2luZm8sIGlfaW5saW5lX2FsbCksCj4gICAJCQlpbml0X29u
Y2UpOwo+ICAgCWlmIChqZnNfaW5vZGVfY2FjaGVwID09IE5VTEwpCj4gICAJCXJldHVybiAtRU5P
TUVNOwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Ckpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZz
LWRpc2N1c3Npb24K
