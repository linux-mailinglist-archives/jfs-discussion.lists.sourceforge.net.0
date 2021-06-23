Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 360493B1EF5
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jun 2021 18:46:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lw61Q-00068p-W2; Wed, 23 Jun 2021 16:46:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lw61P-00068P-0m
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 16:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GFl9nJSSlADjVyeg1XrbkNvr+x/RsQy/jln740L8B/4=; b=IaUFTlvHmedn9SCd2Mvtrpm8tm
 V4L3Jw9AwJJpKDfpxaO0cVf/LHsyoGDMy+SCnN1LFycwQdHe8gWU1XLixMKd/RCeP87UsiPtQsoXy
 gmbmxpkOFT20HHp5ZGpL9sxYLkVyay+Pw0vpdi/lkb2Y8STFvF9fvmHlkVf09yNm7WlQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GFl9nJSSlADjVyeg1XrbkNvr+x/RsQy/jln740L8B/4=; b=ValxlS08sxRv+Wirjj5lLWGAG9
 53xC+AzwOwIm4nbuqpDuWTeJNZ+4CTA4wNVlTot5qPMG3CNLQFndUpoCC4AIOBiMfayXaD+po1joo
 YSP2cSCIl6cSj2/pvr64y+Wx7dNv94nnx1IeoGiGrLzSJRuHWlQISElRGBRgYqJdll6k=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lw61K-009VHf-CI
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 16:46:40 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15NGZgUs000471; Wed, 23 Jun 2021 16:46:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=GFl9nJSSlADjVyeg1XrbkNvr+x/RsQy/jln740L8B/4=;
 b=MxALZmH/u1Y8modubhkVI/O4by8y0Eat5djNhl9f97fEdfnAohwL+4k1p/jvvCiBB3Da
 raWiatNAOXUcnCMqZIdWqJPkozTQOgnhBDPuC+H+cUTggXYPIE33Z3DVkJz9dsFFxemM
 QfyxWD7EuhKtkkMeGNLKZFNVojr/U9X1pkLs2gkmw0NN7ucCzqKcQBpzqmBxwW1VIsSu
 AoYRadITUgSxKw22oL11/UMvpbWpmCzNP9DQ00GGqOhCfwg046aJNNBE18Fv3NTLcUp3
 H8pdgbLgZRiK8MeCEHMFoqtAXY4JlW9MVlAkXk8GHhGekGV8vjXY0XAfp9tARq2FNsVr XA== 
Received: from oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 39byjyhe9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 16:46:23 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 15NGkMKM017000;
 Wed, 23 Jun 2021 16:46:22 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
 by aserp3020.oracle.com with ESMTP id 3998d9c76w-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Jun 2021 16:46:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4zkjItVHkAbN9sLrJJLNKJlqGEVGbw5VrNvcS3XfyrDH59ym/1O+1Gufl+MoM5alkwYWF6M5rCZ0eIemeW9LO6yYJMFS3fLK8jRVpBgU8liN2smsc5dFxlf71BmP4+gGnGbHaUrNPLnf2/oZm3wULDVrMc/rYWAch0xZwf8mSoulthc//IkTAK/HLVq9CUSvj4cXI1LBEeY59OVNKsmY8E9DJ3mYz9FXrthYUstMI30fFvWDqAIbsD/fs4qiGTFJQxNSf2/sPnSQCXImCVkkfIkaJ/sOMQw7Fcgcp1i4R67tTO6iIGesa2rmsugKsdv9sK5BQLwrxAMI28NNJYQfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFl9nJSSlADjVyeg1XrbkNvr+x/RsQy/jln740L8B/4=;
 b=bGo7gclZ+k5kzP9Upyd8J0dEsxhZcVTSdYatLHco87b+D+7F/1whJuTjq3B18bzQJ+/Tyaxid4qhbjKjoykoKtn42w+iLOkVU1xI7I/rfCUoPW9Zj2PfQzOi5SHKfzvB1KfOO0XsWEhqq9sOn6q45bCYezi6Gh0yrfmMv1RRs2effTHrFFQCrI8NeT1qUWsOOQox3TifRspzy5VzFTzKeUqp5qpMpDihIxbXY2+3j9r4gk/opu5j5MNkHkAr50y0WB6nUwqQeNZ3N8A5Klldydj5gfpyFRd8eDTfexZV7nWVLKRs9xIZ/ioywQ/zg1cpXrotlc4vtw3v8HW0AMozNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFl9nJSSlADjVyeg1XrbkNvr+x/RsQy/jln740L8B/4=;
 b=gzBio7paG/3a7PkGRFuBaUpQXFiNl1C7ZlFqG4oqdmf+60rMO2V6xXqMZZ+B6/mMZlZijVG2xMHNctY8boz43xvzYBE6QUpaPL9vMgtFJTRF56KOSq6IIkn/pxx2X4QccJydluiwJRZNUD/tJ9ysDANxEqB7LHsj1qdUbN+wq7w=
Authentication-Results: syzkaller.appspotmail.com; dkim=none (message not
 signed) header.d=none;syzkaller.appspotmail.com; dmarc=none action=none
 header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5225.namprd10.prod.outlook.com (2603:10b6:610:c5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Wed, 23 Jun
 2021 16:46:20 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::e8b2:b3ae:8523:98ca%2]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 16:46:19 +0000
To: Pavel Skripkin <paskripkin@gmail.com>
References: <20210606142405.31047-1-paskripkin@gmail.com>
 <319afbd1-afc0-bae3-c446-3530505e7b21@oracle.com>
 <20210623193842.5f164966@gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <b4aa3ebd-2f86-6d34-fd45-829324d279d7@oracle.com>
Date: Wed, 23 Jun 2021 11:46:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210623193842.5f164966@gmail.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SA0PR11CA0069.namprd11.prod.outlook.com
 (2603:10b6:806:d2::14) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA0PR11CA0069.namprd11.prod.outlook.com (2603:10b6:806:d2::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Wed, 23 Jun 2021 16:46:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5e62cc6-a2f9-41b6-2e60-08d936666d50
X-MS-TrafficTypeDiagnostic: CH0PR10MB5225:
X-Microsoft-Antispam-PRVS: <CH0PR10MB52253A28E5DD25898718FEA887089@CH0PR10MB5225.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/I0RmF/HHvhwrjCVXfqN/SUAm6ZGx2xwl99B9CK01/cvt8Pc+nA1FHdKIViAJi/LXWfAx7C6EVJQSZliUABByWtz6m9BYvQBhxr4s9Up5s29V1IeowdMBovPGQWEZIEl/nMREHKsfxnxEFnpTf0W8WZndpgyPkTUvPkwoERnncHrxlBhAbAhyhs5Cqag5rq4RG+ljahMJhnp6PtsZTTUMnrzDimyfAa7slkvWhbrhaDafuRTW75yETHP96tdYXfxjK5CxKUS2SCHZR56XCh4+0oDa8d1Js819d4tEQEUWtEHQiKW83NKgB83uwzhs33quYuT+fZowhzz5YQ4AK+fBbRrRv2EP+35LZfnjvu3yahsEjgLQto+kfkMMAUPTmhS1VNUSTPJYHr76l7bFqs06mW5SSEhZyAhZtyB87xvAcjbiptK4BR7AuALQZ7doPF2AQpUfPPmgeB2PMFCW4RgOwQjy6NVIsfIst2IVYXzRuY0/MiAx3Cwk1N3RBJ89bFreMfDmtXQGF9Nb1ACaZxbERlCOLi4qxU6QdHiXK9ApUSjmseHV3UBKO0aZQL8Or3RVrkkFXq3Doz27yUuChCYI/fqbsq+Cuk6kfmUcxh7RBcJE7J2tOZLwqn1RSXgB93FIdBesTZtkfImfxVb7uKuSbdlOlBmVJ6Gyk3FqMUhU5+WBvs4hYeHL7H7z7vBsPY/aChXV77Y8Rhd/MO4TDBfFH+qOjCmmfOMYLIsgpuCnY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(136003)(39860400002)(396003)(44832011)(86362001)(956004)(31696002)(5660300002)(38100700002)(16576012)(316002)(36756003)(4326008)(6486002)(26005)(8676002)(2616005)(53546011)(186003)(2906002)(8936002)(16526019)(66946007)(6916009)(478600001)(66556008)(66476007)(31686004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0NXTHMrcHQwVjV5TUdlY2k5TFBaZmtXYlpka0ZhUFUwUlcxK2ltZjZnSHRq?=
 =?utf-8?B?dDdNTnhXcGl4OHRGYkVQTmMydHF0cVcxWlBZclNPMWtLbkNtUmFKbUJiRGNT?=
 =?utf-8?B?RDdpSHV0c1pEYTJpQ2lsdnVkaEdmamFRWWplNDdGNDY1dlFDMUN0WXU5d2k5?=
 =?utf-8?B?V3JuM3pSL1VZNjl2c2FBaXRtRVhFNFFXeU96SEJadVIwdGVneVhGUU54NWRu?=
 =?utf-8?B?U2RLZXhKQzJ2NytjdzNLQjJCNTk2OGJJUzJDc3ByMVBPWkVUWWtCMXJFQVNM?=
 =?utf-8?B?dCtRaVJ3dWIvL2ZhVThUbWJOMWtnTDI5NHErQkpUM2x6QWQzajZTd2VDNHNO?=
 =?utf-8?B?QnBwdGRWbHRHT2s3NERJU3hSVVdEZDdva0Zzb00wK1p5MlVYZDJqTW9ZU1FJ?=
 =?utf-8?B?N1RsanVqNGk0RWJtR3hVaXp2TjRydW85Sk95VGJOdzUzWjRFMFNETWJmTkRi?=
 =?utf-8?B?ZzErM2Z3bUg2NFQ5eGtBV1BzaEIvclE1aGE2bEhJYkdJaEJTRmVibTJTR0Ur?=
 =?utf-8?B?bCswTVA0enJtbTFRZmZXSGd2QWJYbkdPbm9GVlhQcjlnY1VFWURIemFmaTN3?=
 =?utf-8?B?T1ZVd3lZVmJIcldldGt0RlZZM3VaYkhPK0o1MzRzU2dKemh0bUlIRW9oaGxB?=
 =?utf-8?B?QUhJMVY1Slk0cFEwR2FVVVRoa3JjM2pnNWdaaEtLN3dYbGZOaXg2ZGt1OG1T?=
 =?utf-8?B?TTJFMmJvdDVVQlJzWmVNdDVWS3IzMUQ1S0FoWWZRVUh5N1FzZkRiTjZRNWVn?=
 =?utf-8?B?QkpWb3JSMzdMU2Y5NGpUOVdjRDR6d3E1K0twVVM4NDkxem1DWk1RNTUwSHI0?=
 =?utf-8?B?a2hCanIvVS9GTWpqaDZHeFJKUGZvVTZCeXZOZ0ZzOEkwRnB0SnNqbTY1SG1l?=
 =?utf-8?B?UGpsbzFvaVhyOHM4RW40MTBCVHJVWkYvMyt5WGZzUHN1bkxqdFpsMW0rK2xX?=
 =?utf-8?B?eW9NZVp4dDN3c2tseG12KzRRZXBFOUxMQWswWmp0RFNTeXZ4OXBPNTNGdnFl?=
 =?utf-8?B?VUtUeXNnZ1ZXdTU3b2xOaFZNMVFxV0lrdzZSQjNCUDJGc1A4UVBtSDAydjJX?=
 =?utf-8?B?clpkallHWUUwL0UxaDB6MGtjWmNtUVJXbU01YWtreHNSaXVhQ1FzNnkxWm5G?=
 =?utf-8?B?enRYcXFnTEtiMC91WFV5K2xaMng0cDZoTFlUbitFMlpWanlEaGZQa0NKa0dM?=
 =?utf-8?B?aW15NVF2NUM5cW5raWFjTHlaMU9EUi9samZQVGRsK0U3UTdyTjZvRndka05n?=
 =?utf-8?B?VVZGNUh2dDRYYkM4S3lGRUo1d0V6bWI0MkI5dUpmM2ZqTzJpQm9XZlJFVnFV?=
 =?utf-8?B?L3Q1MkswUmZnd1ZLR1pkVlFWaWhvaEFKSmRueWV0VEVYYlV3MnFxV2NVVnBV?=
 =?utf-8?B?REprQjdYZjVGRjlqaFF2M2IrcUd2NkFQazByek96YTlwWmMrNm1LUFEzcWN4?=
 =?utf-8?B?dzNVdGV2YzVKYUN2S0FrckpicmRnT3NrQnZsMC8yS0lYTFVMSjBhWDNEdWJL?=
 =?utf-8?B?ZnlhcXZSOE03WldjN2tqT2dNL0s3b1Z4Uzlqd2ppdzVtc21wdEdSSkFzbHpJ?=
 =?utf-8?B?N1prelh6T3A0dkhWaGwxbFBWaE5VS004N2tucUl4Z3diRWsyLzFlQmxHVVpN?=
 =?utf-8?B?U0l2VmswSzVBNlpJTndkeWlBZi9ZYkVlVldkNGtUL3lnWGw5WkI4UmNhNytB?=
 =?utf-8?B?Vk1ROUdQVk1JWE80bzlJeStwYWNiYndwU0ZvRUdMekp2UWVxcU9hWW1ELzdn?=
 =?utf-8?Q?OFqhHxVLLbM4JxHGiR1p748m2RP6u6F9bvleiOu?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5e62cc6-a2f9-41b6-2e60-08d936666d50
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 16:46:19.9166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xyNoq9FnLxuGF8FlkbylGyOKbFRTZqfQQi372s/wkOtsC42EdvyBMgulDTTuI/kNa9duEIuRPYvNvGOsUFU3byrCdJn/MMOYGPpKldXY2r4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5225
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10024
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230097
X-Proofpoint-GUID: 4kFDZ2kVhqAknzR6jgilqB1IgezHBcB9
X-Proofpoint-ORIG-GUID: 4kFDZ2kVhqAknzR6jgilqB1IgezHBcB9
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lw61K-009VHf-CI
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix GPF in diFree
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
 syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/23/21 11:38 AM, Pavel Skripkin wrote:
> On Wed, 23 Jun 2021 09:13:07 -0500
> Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> 
>> On 6/6/21 9:24 AM, Pavel Skripkin wrote:
>>> Avoid passing inode with
>>> JFS_SBI(inode->i_sb)->ipimap == NULL to
>>> diFree()[1]. GFP will appear:
>>
>> I'm a little curious how we get as far as creating and freeing
>> non-special inodes if ipimap == NULL.
>>
>>>
>>> 	struct inode *ipimap = JFS_SBI(ip->i_sb)->ipimap;
>>> 	struct inomap *imap = JFS_IP(ipimap)->i_imap;
>>>
>>> JFS_IP() will return invalid pointer when ipimap == NULL
>>>
>>> Call Trace:
>>>    diFree+0x13d/0x2dc0 fs/jfs/jfs_imap.c:853 [1]
>>>    jfs_evict_inode+0x2c9/0x370 fs/jfs/inode.c:154
>>>    evict+0x2ed/0x750 fs/inode.c:578
>>>    iput_final fs/inode.c:1654 [inline]
>>>    iput.part.0+0x3fe/0x820 fs/inode.c:1680
>>>    iput+0x58/0x70 fs/inode.c:1670
>>
>> Is there more to the stack trace? Is this part of a failed mount()?
>>
> 
> Hi, Dave!
> 
> Yes, it was caused by mount fail. Log:
> 
> [  924.076873][ T8430] jfs_mount: diMount(ipaimap) failed w/rc = -5
> 
> So, it's errout21 label in jfs_mount(). I guess, It's early failure and
> some fields wasn't initialized properly. I don't really remember my
> debug results, because it was a long time ago, but I can do some debug
> work again if needed!

Thanks. I don't want to ask you to spend any more time on this. Sorry I 
didn't get back sooner. Thanks for the fix!

Shaggy

> 
> 
> Thanks for feedback!
> 
>>>
>>> Reported-and-tested-by:
>>> syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
>>> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>ipimap == NULL
>>
>> I don't doubt that this happened, so I'll apply the patch which is
>> obviously safe.
>>
>>> ---
>>>    fs/jfs/inode.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
>>> index 6f65bfa9f18d..b0eb9c85eea0 100644
>>> --- a/fs/jfs/inode.c
>>> +++ b/fs/jfs/inode.c
>>> @@ -151,7 +151,8 @@ void jfs_evict_inode(struct inode *inode)
>>>    			if (test_cflag(COMMIT_Freewmap, inode))
>>>    				jfs_free_zero_link(inode);
>>>    
>>> -			diFree(inode);
>>> +			if (JFS_SBI(inode->i_sb)->ipimap)
>>> +				diFree(inode);
>>>    
>>>    			/*
>>>    			 * Free the inode from the quota
>>> allocation.
>>>
> 
> 
> 
> 
> With regards,
> Pavel Skripkin
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
