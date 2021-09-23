Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2241617B
	for <lists+jfs-discussion@lfdr.de>; Thu, 23 Sep 2021 16:55:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mTQ7e-0002EF-Hf; Thu, 23 Sep 2021 14:54:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1mTQ7d-0002E9-I8
 for jfs-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 14:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cR9agXYf1NRUVCcMv4OXYHqv4p/TiIyjkmGmYWDLsR0=; b=dppRTiNLVpoCm6iIii2XMLV8BT
 O9+opXEfJqJLGjg90OUzlizSH1ryx+b7BsiV2cl74V9yJQ5V2BgKBE21eAAnhd4QTUBYr7FSoM/BS
 z/NrdIZz46YX70cTZD8/7KvJ8/XDaBW2XiFVcxroxoVSbI6igUI1eEgwr6tf3fhWGGOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cR9agXYf1NRUVCcMv4OXYHqv4p/TiIyjkmGmYWDLsR0=; b=AR/Ilo9zPPu6nrNB1DmIld9D5+
 BJ/sV2U/efHM7/fgLbotGlBR/c9S/kN8StLlAeZtBpTySLGbddXTXsEKYioYSfxzF8GBe9eeG/vgl
 eY0lFhkXobi/r2l+zsHbgufNibdX68FrKwWs9YOUDpNV2nHHZfrNAUdPZiDUfFkycHGc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTQ7c-002nqt-IH
 for jfs-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 14:54:49 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18NEro6w007037; 
 Thu, 23 Sep 2021 14:54:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=cR9agXYf1NRUVCcMv4OXYHqv4p/TiIyjkmGmYWDLsR0=;
 b=DyN9E2ZjLv5GpD9ukjqJuKKnWgwxvQfC8zxqiYxvpETbZ2v7B+evDy1AfjAnzWhtdI8b
 r7cTcl2HPmJp7I8hyIL5QihG8epjaaoa2d6fDMIKLO68DHMYvnsnoLrtjRW8M/kj512t
 0EgfZ4lvc8Nd3b13lBxCLTP9Y/KAEUO5ElLKGhBsXxMzJaIuwgnuHzhm3DXntAg09C/7
 1dhI9FJMWxH5qWZjwzoJGNamiz34MxYxnkhFXijDp1Ar+rTyDU4zQ3GNsrMRW88ANXHi
 2OXCIhReDCEpgJOMQ3KcrCuiwGhwdFysD8JL4D9UlEWyosICNx0c9Sx2zaES0aUaFM/2 xQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3b8neb2qxj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Sep 2021 14:54:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18NEo832105625;
 Thu, 23 Sep 2021 14:54:32 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by userp3020.oracle.com with ESMTP id 3b7q5xxvyq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Sep 2021 14:54:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IB8vYQQCLjbEMJAfhRX4egmFEdRVnN528lhmUAeYk1uhHTxlePWfpusSvejTiQadIj3WMQ2TSCZo541IVdSOEUXPBV/8klPJdgJsXyHGi4Am398s3f1ANlhLnUnFnj3eovtPgkH2hAebaoUtG/3LcHTTvCGeCykOZZC5IZ3LrfirMET6Azd8uOBaDzUsd/3qHJbSbRC+wZb/Qyh152eRT7mR2JF/QZ5Wu9QcwAs1SUJpWaWd1H643E2UyFvhPqHvnZ4pKCGnkaNG4cyF40i3Cd4DwWUCPapR0k//+jfT1/EvnlsrvxZru6xVyRl5+mzlkxV21nJ1+oQcieqv6mapXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=cR9agXYf1NRUVCcMv4OXYHqv4p/TiIyjkmGmYWDLsR0=;
 b=B9X2a1k1tBV7c8BLEjNbilaG4JL+bbmy1KHyRJORtYf4PCUqDsG8UcZ/4klYuw4y5OOClixoLyKVP+aWvwdyMV9aeMfoKCCG7MOCEtBHHLKN1/qupQZinfEZ5Ojj3MbSDQo91wy2U4H/UnO9JrC8ctnF9u3/i/0KNLQ98VJfZCQkKoQFK4DQ2fZXcWDMSDoWal27phm2ioZwanWbnxX8v7I0YJ3e7E4QL6sbDyQWY8ZXrDEdWl77iR6tmKk46FbH3XQeMtBGk2K3DZaflDEc7/qA5xLMYBpRlTx/0VS+CqV2SSB/VmjN6pKeR6YfMqlVrETCB1aqtkWgce9m2L9Qxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cR9agXYf1NRUVCcMv4OXYHqv4p/TiIyjkmGmYWDLsR0=;
 b=iGhD/A6jqvSNJ9krW/yeSZJkaJUQ+tuJTYaJzob7o2byyG0oUyTG9TUJhwTN7D+RiMcC674CGTTyDfiYUgO7uQKmfMTrzJ0inJiwF5fAfyCfyNnEKzSsCEZNbczmjI2NQPQD50DENM6LJb2Wf4dI/013V/g24DYbrsfwqXOvjbY=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=oracle.com;
Received: from SA2PR10MB4665.namprd10.prod.outlook.com (2603:10b6:806:fb::17)
 by SA2PR10MB4556.namprd10.prod.outlook.com (2603:10b6:806:119::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Thu, 23 Sep
 2021 14:54:30 +0000
Received: from SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94]) by SA2PR10MB4665.namprd10.prod.outlook.com
 ([fe80::c12a:cfad:520a:2c94%3]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 14:54:30 +0000
Message-ID: <5678317c-9fd2-4557-6e28-984a8b74b99c@oracle.com>
Date: Thu, 23 Sep 2021 09:54:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Content-Language: en-US
To: Dongliang Mu <mudongliangabcd@gmail.com>
References: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
 <CAD-N9QV5OMe0ryEKaUYkwmNyOtu+Sgi7h2B0JFSK5Jj9bbQPQQ@mail.gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <CAD-N9QV5OMe0ryEKaUYkwmNyOtu+Sgi7h2B0JFSK5Jj9bbQPQQ@mail.gmail.com>
X-ClientProxiedBy: SN6PR08CA0036.namprd08.prod.outlook.com
 (2603:10b6:805:66::49) To SA2PR10MB4665.namprd10.prod.outlook.com
 (2603:10b6:806:fb::17)
MIME-Version: 1.0
Received: from [192.168.0.162] (68.201.65.98) by
 SN6PR08CA0036.namprd08.prod.outlook.com (2603:10b6:805:66::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Thu, 23 Sep 2021 14:54:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 961a0ca9-6dd1-460b-34d5-08d97ea20c05
X-MS-TrafficTypeDiagnostic: SA2PR10MB4556:
X-Microsoft-Antispam-PRVS: <SA2PR10MB455674625FFD1D660C63A56487A39@SA2PR10MB4556.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7b1B/FneRG+VWRFWUNOnXPXNy5vE5tH12usnNNydlcEzIhQM9GsngWz4J1GscML5Rz2xDlWk5k4hGUep3lMtERaBO66dafjDtqLKbPEaE0YFa2UCHd2EVWej4BQ6OWy0MFMytgFIQJSpG9L6Y5j9ZmVKmXC79asQVMox/Wa/ZbkDpj2VkzOOcgz6E2YmjfNEkDQFbrK4PjhWk+l0BGsL9dDZh4YaGYfUS0HjWC3LbYxZxJziHym5/Uk96s1t5YoqgnQlsSqRechGVaiC5rwWq2bUC6MLOPVncr6wbb+h5NTra4Nyhq79eTuL5knZ3yWG2HIglZUkBguT0adDmiEiBbH6ZgmxUeOOFyQDiwg2ZhzuZ+eflN2prQtorr4JqYsqKtc/2x0iTwoXQm6PEnalm/S+5oTngGJ5AfgNxls4TXMRZF7q/r0Zmbm1f7jyc/0RBVb/iR+0LjhT9D16D0wMJ46VMj0jwSS66oWmKKexAs3jalSFr+gvSF2hK2dTrbegPeAXRoN6EoooJ6xCR0gy2O18MuBZXRXeJXgO1W6xERnAGdTyNLUrUPdnkgVPJ4/UXKykYv3ec2ZJSHVePRhMQtAqnpRTBlen9LCMvuwRsPSuhYrF4sxgjklQpJNLMmG+WCfmigwzSy+NuGXifAh3y6DxMXGO03nw10ntoO0T/9EamH8U7bh7/Yj+sfJkk4bXklK2glDiIJ3WbQ1dwcrTB+u+oe6t6P6v2v0FTuJ0rnQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR10MB4665.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(38100700002)(8936002)(83380400001)(186003)(4326008)(8676002)(31696002)(31686004)(6666004)(53546011)(16576012)(26005)(5660300002)(2906002)(6916009)(86362001)(6486002)(66556008)(66476007)(2616005)(316002)(66946007)(36756003)(44832011)(956004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGtSOXRiZ2xRNjE4Sk10c0FnMGpLUXU0eXdZR21CSXhETEYvQXBOWWtpRE4y?=
 =?utf-8?B?Z2dDN09tV2xpYjk2VklBWmFQVGNjdnRZVWZBeWp5Q21PS2wyTXRkOXV3OENV?=
 =?utf-8?B?T0lOVjJYTDRWWWduUW0zQkFYVWxYUitvcDdVS01zQlZib2JNVnRkQ0VuMlhu?=
 =?utf-8?B?WGtUVFBiZXQzMTBoTlNaQ1RXcU9SdUNyTzdUWUl4WUZWSTBIUE91Q1g3MEFW?=
 =?utf-8?B?cUdGZWlKaWpqS0I2alYyWnFGeU9sUS9VenZYZ2Z6dFRYNG02L3AwNzN1dHAw?=
 =?utf-8?B?V2p6TlVoMUV3UjY1bUtlaVVUWm01ODB5UTUzcElLcjNvbHZpM3J6ajNaSUF1?=
 =?utf-8?B?YjVOaUJZemowN2ZNMTV5N3ZNRVdXaGppQjFmeGgxNkdHRGFGWC95Z0tNM0lE?=
 =?utf-8?B?VmdINHZwTFFTQkthVklILzl0ZlpYMFRYYVd4L3JnSWtKZ3lQUVdaV1loUTB3?=
 =?utf-8?B?UFYzZHRlNEZPeXNYdWlqK1pVYmlRNDVtUFo4cDMrY2kxQUhZeXlpK2lrT3I4?=
 =?utf-8?B?VkRjUGF6YVRuWWQ0YXZ2bGtWckJuMWcyQ2FtRi9BcmwwS3Rsb2VlQ0tWaDFm?=
 =?utf-8?B?UGlTdTBEM0xJMlRzZVI3NmJVQnFCcmh1N216Z3hCZWNCTVJNTXkzMkxVd1ZN?=
 =?utf-8?B?a2xkbDRjSUUycWlMWnh6MHdUNVRGNmduUWlVOXZ3WU12NUpkUkppY3E3S2ND?=
 =?utf-8?B?Wk1xV0lwamMxMkZHbkw4SW9GMkZxNExGZ1NHeFZSdDNzV3dya3FaTE5mSGZj?=
 =?utf-8?B?Q1lPczM1a1B1Y1F1OFNhMzcyUXB3VDZhdU13dmxvMjhSbGpCaXA1a1RVbzBQ?=
 =?utf-8?B?NXMrUHdFTWJ1M2dpU1Jud21vc3hTcENNbFFTU3JFZWlBOUYwTCtPUXpFYzUr?=
 =?utf-8?B?aXFEWDZ3UkgvNGpleEZZU01sOXZJNTdYb3NMTG1rTlFvaTFxVTNqOC9jdFJl?=
 =?utf-8?B?aXMyZWx4Rk02VC8yU0V2L2pPb090SzFsdEZHdnpmbTkwbGdFbTJod3RsZGtz?=
 =?utf-8?B?RDJKUDNST1hHekFXMy9hZUVmdHZTRDgrdWdESnAvQjhCRk5SeEQ4aTZHUU9o?=
 =?utf-8?B?VDNXSHBpV2wyTUtUQ092U3gzQUM2WXhkOElrLzIrbFVNaEhYVDJObjZhY0xp?=
 =?utf-8?B?RDRtWG1nUnpvaE9zTzR0RVBLUTV2cDJpd3JEbTExZDFGOU54NERXaDJ1NG5s?=
 =?utf-8?B?TUFaMHp0SnFvR05oTVZvQy9FNUNndGFueUlvZkdZeStPR0ZsMGwweEo5dnBw?=
 =?utf-8?B?Nk1Pbk9CSUs0T2RJNXc2bEM2d0IzamJOc2Zob0Y2b2RkWnpTelpMSE5Vem5N?=
 =?utf-8?B?em1oR0JvdndJVSswd0pwUEdLakxITHcvVUJsem5FMFZKdjJWaUFNajAxUnUx?=
 =?utf-8?B?T0dWaTFEbjdPdlpVTW1UbkRocTV3NDNkV0w4RjIvQktaUmJjcUFFTHVvOVRi?=
 =?utf-8?B?eVo1L3hxa1BXV1RCbUd4VmpkRHMrMUQ2Tm9zL2cxWTFZSEUxMXpPcmVGZmNF?=
 =?utf-8?B?djlFT2JvbU16QzAzbFdDWFZ4bEFWTjMxbm1lS3lGS0JNeWlEZ3NndTB4M0R0?=
 =?utf-8?B?REUxd2tvSWFvMXpoU2ZsQUFkVGZGMHM4TVdxYXRZdGg0L3VrNG03aWRSZDFr?=
 =?utf-8?B?ZFJyaHAreWpaZFhZUi9wVlhKRWV6bGx6bmE2VjFJK2dQWlQ1T3NFN3M0MnQ1?=
 =?utf-8?B?OUl4bCtyYmx5UnBMV2JBZFpNSEFnVkpqT2RyUWRVc2I1ZDMwTFNlRFBFQnUw?=
 =?utf-8?Q?A6UOfjP3Y/WielwkRfr1ARVaEd0p4nbrtKLiAfI?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961a0ca9-6dd1-460b-34d5-08d97ea20c05
X-MS-Exchange-CrossTenant-AuthSource: SA2PR10MB4665.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 14:54:30.3086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e3bUDm1dCM1Nl10qEsDtDxGoQV2gZ7rxHNBl9UsmEAtvKfAKkNd/cJ8jTDgwIcy8yGch/n7nwDljAzUBQDEWeeEQJwqypbVmiyAq5zutORs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4556
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10116
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109200000
 definitions=main-2109230094
X-Proofpoint-GUID: 8A4FS_UBHZhMAhbaCp_BUaBR9P-UXjn2
X-Proofpoint-ORIG-GUID: 8A4FS_UBHZhMAhbaCp_BUaBR9P-UXjn2
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/22/21 19:53, Dongliang Mu wrote: > Any update on this
 thread? Sorry for taking this long to get back to it. The patch looks good.
 It should show up in linux-next shortly. Shaggy 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mTQ7c-002nqt-IH
Subject: Re: [Jfs-discussion] [PATCH v2] JFS: fix memleak in jfs_mount
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 9/22/21 19:53, Dongliang Mu wrote:
> Any update on this thread?

Sorry for taking this long to get back to it. The patch looks good. It 
should show up in linux-next shortly.

Shaggy

> 
> On Sat, Sep 4, 2021 at 10:38 AM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
>>
>> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
>> the following code does not free ipaimap2 allocated by diReadSpecial.
>>
>> Fix this by refactoring the error handling code of jfs_mount. To be
>> specific, modify the lable name and free ipaimap2 when the above error
>> ocurrs.
>>
>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
>> ---
>> v1->v2: change "return rc" to "goto out"; fix one coding style
>>   fs/jfs/jfs_mount.c | 51 ++++++++++++++++++++--------------------------
>>   1 file changed, 22 insertions(+), 29 deletions(-)
>>
>> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
>> index 5d7d7170c03c..aa4ff7bcaff2 100644
>> --- a/fs/jfs/jfs_mount.c
>> +++ b/fs/jfs/jfs_mount.c
>> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
>>           * (initialize mount inode from the superblock)
>>           */
>>          if ((rc = chkSuper(sb))) {
>> -               goto errout20;
>> +               goto out;
>>          }
>>
>>          ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
>>          if (ipaimap == NULL) {
>>                  jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>>                  rc = -EIO;
>> -               goto errout20;
>> +               goto out;
>>          }
>>          sbi->ipaimap = ipaimap;
>>
>> @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
>>           */
>>          if ((rc = diMount(ipaimap))) {
>>                  jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
>> -               goto errout21;
>> +               goto err_ipaimap;
>>          }
>>
>>          /*
>> @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
>>          ipbmap = diReadSpecial(sb, BMAP_I, 0);
>>          if (ipbmap == NULL) {
>>                  rc = -EIO;
>> -               goto errout22;
>> +               goto err_umount_ipaimap;
>>          }
>>
>>          jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
>> @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
>>           */
>>          if ((rc = dbMount(ipbmap))) {
>>                  jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
>> -               goto errout22;
>> +               goto err_ipbmap;
>>          }
>>
>>          /*
>> @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
>>                  if (!ipaimap2) {
>>                          jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>>                          rc = -EIO;
>> -                       goto errout35;
>> +                       goto err_umount_ipbmap;
>>                  }
>>                  sbi->ipaimap2 = ipaimap2;
>>
>> @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
>>                  if ((rc = diMount(ipaimap2))) {
>>                          jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
>>                                  rc);
>> -                       goto errout35;
>> +                       goto err_ipaimap2;
>>                  }
>>          } else
>>                  /* Secondary aggregate inode table is not valid */
>> @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
>>                  jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
>>                  /* open fileset secondary inode allocation map */
>>                  rc = -EIO;
>> -               goto errout40;
>> +               goto err_umount_ipaimap2;
>>          }
>>          jfs_info("jfs_mount: ipimap:0x%p", ipimap);
>>
>> @@ -178,41 +178,34 @@ int jfs_mount(struct super_block *sb)
>>          /* initialize fileset inode allocation map */
>>          if ((rc = diMount(ipimap))) {
>>                  jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
>> -               goto errout41;
>> +               goto err_ipimap;
>>          }
>>
>> -       goto out;
>> +       return rc;
>>
>>          /*
>>           *      unwind on error
>>           */
>> -      errout41:                /* close fileset inode allocation map inode */
>> +err_ipimap:
>> +       /* close fileset inode allocation map inode */
>>          diFreeSpecial(ipimap);
>> -
>> -      errout40:                /* fileset closed */
>> -
>> +err_umount_ipaimap2:
>>          /* close secondary aggregate inode allocation map */
>> -       if (ipaimap2) {
>> +       if (ipaimap2)
>>                  diUnmount(ipaimap2, 1);
>> +err_ipaimap2:
>> +       /* close aggregate inodes */
>> +       if (ipaimap2)
>>                  diFreeSpecial(ipaimap2);
>> -       }
>> -
>> -      errout35:
>> -
>> -       /* close aggregate block allocation map */
>> +err_umount_ipbmap:     /* close aggregate block allocation map */
>>          dbUnmount(ipbmap, 1);
>> +err_ipbmap:            /* close aggregate inodes */
>>          diFreeSpecial(ipbmap);
>> -
>> -      errout22:                /* close aggregate inode allocation map */
>> -
>> +err_umount_ipaimap:    /* close aggregate inode allocation map */
>>          diUnmount(ipaimap, 1);
>> -
>> -      errout21:                /* close aggregate inodes */
>> +err_ipaimap:           /* close aggregate inodes */
>>          diFreeSpecial(ipaimap);
>> -      errout20:                /* aggregate closed */
>> -
>> -      out:
>> -
>> +out:
>>          if (rc)
>>                  jfs_err("Mount JFS Failure: %d", rc);
>>
>> --
>> 2.25.1
>>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
