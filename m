Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0506775A15D
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Jul 2023 00:07:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMFJs-0001Gt-7x;
	Wed, 19 Jul 2023 22:06:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qMFJr-0001Gn-Dq
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 22:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I0DvYO3AIUNdvfCMma4Vb1SFOKdrCdqHtKuaHNwq9mU=; b=Fg4LXLIni9wx9iGtQPzqeYQOr/
 C/vox5PNMBjfRAZChs69PY3nZzbPTbPwpmxen4WDuiFC9RIdrYKZRDpUNWHY1l9Ve0rQeeiapprY0
 M4a5SfxxdBgLbctR5606T45N9wvzEWf4ZbcOO3FchguXi1MQhKkO44yhkBP5ppreJdLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I0DvYO3AIUNdvfCMma4Vb1SFOKdrCdqHtKuaHNwq9mU=; b=jmTQZRD/KNEQr/efNgX3+tJh42
 YsWAKLuAh7eFlKigcMiVRtp15rwuJsguOsRjxaOc70DSMckMuS476G6VlvG5NEXTrw6SlkB2XjB85
 nbdwHgfwIt3ocaSuo5J4USU1Kh2jCgTICTKYPKubjqmKfb30vDK+09z/h5iRyIM4aV34=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMFJj-00DVkV-EP for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 22:06:51 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 36JFOiRE025954; Wed, 19 Jul 2023 22:06:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=I0DvYO3AIUNdvfCMma4Vb1SFOKdrCdqHtKuaHNwq9mU=;
 b=0jAH41B5JMo1+vE2KkQLIAmQrFLgh86lU2FMBaBsC1lXQUjo8tA4iqpXr+BX17LR+2LW
 WZfkS0Iaa+b9QYzSguQTnBxzlGkmdJezD6o8B+oyImqJKTIB50SOA0UxB7I4dJMtbjCE
 jd0D1tfFgQ3J6n+2yRLFE8RJ04x9PgTwyX6kcuZ0mL/tHWf+mhSmaoS4feQ+VEIxXm/k
 Yu1d/4rtfdwArN2YHSbK0lAVzCaDy6wOx0nNpxIuIyBVQhSgSQ2zcvq8Ok/WM1022TM8
 tXIk3AJZiltbLIQZQIWL3dsgHvsY2l9AtrO27WJDW9C4PJ4NVM2UEw/PH5FG4Bc9t4Mo ag== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3run770k5k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jul 2023 22:06:27 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 36JKnJDG023806; Wed, 19 Jul 2023 22:06:26 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3ruhw7uhwm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jul 2023 22:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GVtquQBHp7cjDnwbTOewUr049oIgVTM/rwbig9t0nMVwNU9ar9aywGXwtZaPJYiLCFm1MsotwS6ZwSEMkPSZ6AOAJz5XkbrqbleEoeXuAH6n7K0WEZeTxu7Dhu1ZhJ/DI3Rz7/bUipavl1vjYRZJk9rJMOCwbRcwv9eRFHheT4dDwCKMSieBVVw6akhlvXFbcZj53PAi7XWDdAkMXrOsd8FBJLFHXuUBvuIpt4U69lqFsFTA63aU9UsntlP8DEMJuICcscUzVyymtgoxBUQ/zs0jmNxaO1tsy64I5oMRmSrS9XB0NonCPleJpos/e+OjsH0sTKJ6KdcPnv48DJLkHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I0DvYO3AIUNdvfCMma4Vb1SFOKdrCdqHtKuaHNwq9mU=;
 b=lB2MDL127KMewvbt0dCBlgzxSLhnbfGCUD0Y+fiCLefgepoPSjqr6QXbYac3o1/TeUNiIkdOZmp/+kmPaUMbKerf2JL55JC1l+tE3odKmpR029JBlkg6QmfsJ7frRXFmv9W1TUWpRfk1bkefg6rvH1qhsqYyW7jo0w3HuZnTdpw+ZMfvaiFMzGaI/BMJFeSrVQDk1p+/6I9ukvxpSAkaS8rsHoQoq+AWr5KRHzILkjXtZZh9qKGZSAsvR9XI34reszNYcdqKRYceuQrl1XNBjc4PuVIClZR6Q8m7dLi0UhOzv1ICI4JulgWYd6/5NQx4n2+mWPt1t6T5xlZ4DS8djA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I0DvYO3AIUNdvfCMma4Vb1SFOKdrCdqHtKuaHNwq9mU=;
 b=RQHFFzB26FqZykPDrYvgCysG1WOgMpHuy+pAVgC+LRCBfBRRPwLOF3nrILWbYwRDX5J21D3JcmUXr2C1QBtf4bpdxavL/Cru0B/4hxvO7bARBtXxWi6kYR4r9Bzg1cdTs2/dTsJ87VgHM27iQEW4I46WW7j7xDjrBDRbFvQdib8=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CY5PR10MB6071.namprd10.prod.outlook.com (2603:10b6:930:39::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Wed, 19 Jul
 2023 22:06:24 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1ad9:6eeb:6c8d:27d3]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1ad9:6eeb:6c8d:27d3%6]) with mapi id 15.20.6565.028; Wed, 19 Jul 2023
 22:06:24 +0000
Message-ID: <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
Date: Wed, 19 Jul 2023 17:06:20 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Dr. David Alan Gilbert" <linux@treblig.org>,
 Steve French <smfrench@gmail.com>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
In-Reply-To: <ZLhchajZaWEVM6D7@gallifrey>
X-ClientProxiedBy: CH2PR14CA0026.namprd14.prod.outlook.com
 (2603:10b6:610:60::36) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CY5PR10MB6071:EE_
X-MS-Office365-Filtering-Correlation-Id: b5827e34-a402-4ad8-691e-08db88a46426
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MViLzsIRUTi5oJ4zNG4DlCZ51eOgE8fbDL3AiIBvmGeYR/bjsxpaDdKOQIqxZwxWfjhSxxl8UvaGS+hQGHapkWEtMwPNtkFGNElz+Mud22yuJRK3Iy/4rrQRM2Jmdew6DBcD6s8/gdzSRhojOk0ZdPYMpGi8V7I97O9rABGTPY5f3aD5r4WgzeAX9bW59HbaaxZGrZsuC5z8JSZp7aDpMdHhCbFQuY//DSwLY2F874va3WV/gQea4ykjvqdNcGXSqdcXmRZTpmZ2rusCufNqrpN50uG1+iOduBtVpXaF0oYtov/aFhnBq4bHVwm0qnipTgZzsQjLQhv0cqNwNLzv0dlHSuoPzzV5nryjEeWKL2o8sibMmxLwGKvR9Jiyraazdbaidyua/8H22cCFUdAy+uki2yxCr0ww583YCa5pOtWddPc6ZyT0OLWBPxtzQoq2nr1S285EL/zbu3JbLE9cOAKzAuFIekhPi/dPL11jaOWyld7RS6gYvgEPGBJGFoBzfbDWrvPpDR2UFW5Nzq7oXrC4Trk3+AOOk578m+uZx+3yQS8jODFl13Gz603eWD51wP5Xg2FvgoDFm81q7Rc+HgI2FhyBAPmxvWMkyK5ZoBjDSn31SrvFuKSjH9u7zKRjqi9A6MY2mxZac8AVlSC9dg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(346002)(396003)(366004)(451199021)(66556008)(66476007)(110136005)(86362001)(186003)(66946007)(4326008)(44832011)(966005)(478600001)(41300700001)(316002)(6512007)(6666004)(31686004)(6486002)(8676002)(8936002)(26005)(5660300002)(36756003)(2906002)(31696002)(53546011)(83380400001)(2616005)(6506007)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjJSV3k3SHVBTitEbWxFTXo3KzlNaUNtYkFHSzc1Z2FCZktSZWsrZWpPMUs5?=
 =?utf-8?B?MzBYd3JTSUpzbUMrMzArb29LUGgyb2d2cFlMVTF4VXJHWHAyM3JKZjhGOVh0?=
 =?utf-8?B?NHZQZ1NDYWYrSjJkWGpDS2FhVzBqSFdDM1gwdEluUEhKMXd6TGtaaWdLazVP?=
 =?utf-8?B?REZDb2F4WllRbEYwS1ArU3cvRmFVcUJkUEhqbDMwbElJdFF2RXIxSlJpTEVB?=
 =?utf-8?B?eTlhTStnTmFjbG1FdWtYa1drZ0E3RDJoS09tVXdKTjVDcjh2QnJaY1VYNU1Y?=
 =?utf-8?B?MTJONHk5bU0yYnVNZERvTUpRWkhMd3A4TTJDcW55RlBpVFRGL0RCc1JtVkJt?=
 =?utf-8?B?dm1lUXBLWDlsZi8zem1McWhSSHBjS3Ftb0crSGhkblZPemgraTd2L29pWGJt?=
 =?utf-8?B?VGV1RzhUZmFHaVRNRzJYZjJrZjlJSlB3MEZDdVRkdDdFRXAwNFp6cURJUGN6?=
 =?utf-8?B?WDh3M1luWGVkYlN0NG5tY0FBb3dCRHRlZjRKa3R0SHFqSUUxdHNFWjJGTmJR?=
 =?utf-8?B?NlJWR0Zybk5YWUtuZDNQeUdNN0lJNWI0cG5JWDRBT0tHYUtKSTNEa1AzNWVv?=
 =?utf-8?B?UlJaNS95Zlc2SEpLMHpXTlRjM1FaaTFacmcwRjZXdnNpL2k4MlR5cGczR1hx?=
 =?utf-8?B?bGRaSTdreXF0b3VpUWVWdkVmVGtMb0lVa3N3Rzd4dDAvVGEwcDhielVNSjlw?=
 =?utf-8?B?SWtUQlJabzdSVnUrdTl1TUNwNFhmZEZxaFFUeXdBWW9qTDFreUFBU2t2K0c3?=
 =?utf-8?B?NXdSblR3WDR0ZmlGRFFHOHhnandaeVBLaGJQYUtwcDZ4Q0QwYXExeUZLMUJG?=
 =?utf-8?B?ZWhwQTJyU2lDb2lBMG1vNzd4UUVGcWlhTHVEZlg5NFptTHEzTUUrUGl1c2hN?=
 =?utf-8?B?aFFkVEdJTEVwcmcyUnRNSWFQSk4yUVdhcU5vTmZVbmY2dk5RZU1Fa1VWakRM?=
 =?utf-8?B?ZCt2ZEcxaFRQQjhFUnByYXVzbkgxV2FIUlZLS25RRVg2aVdOTGxNbEhRc2Vv?=
 =?utf-8?B?T0M2WFp2QTNFd1JVTFFhMEdVWUdFN2ZoMytQYTZVc0RIK3dncXB6bnNJbVZ1?=
 =?utf-8?B?YTBOM0YxOWNMdFR3S2pYTldPcXRpSk9ROXVCbnYrRk5PQzQ3alc5NGVTV2VE?=
 =?utf-8?B?Qi9oclJuVVFmSlZSUVo4bi9EWmpqeFI4YmpDTjBSMW40WW4vWFdYWFJKR0l2?=
 =?utf-8?B?Qkh1ODhIdWpaalBTWjBNZ3U3RVM1RkhBNHB5N3RpUnUxK3EvMGxEZkk5Yng3?=
 =?utf-8?B?WFE1WERTL0hadFhWd3RSaExSK21pVU85UGs5UTN6T0R2dTVRRkNsQ1JPSzdr?=
 =?utf-8?B?ZWI3cm9VWFN4VURuNkJMK1h5d3pnNlI3UzdZbk4rdG5aWXpSOEZvOW05WkRS?=
 =?utf-8?B?ZW9JT1lzS0RNY1hnUzlEMlM2a0o0Ky9hTkZ1UlFxdS9lcmVWVzBITk15bENk?=
 =?utf-8?B?RzBpWVkzYWRlOWVoSm1kOGlSTFRKanZGd2dBc2RZdjJSVmJibWhLSjB5N2xC?=
 =?utf-8?B?aXYyZ3dJNzRUT0M5WElTMk1xTktnSzRDTUhnL3lKbWUwVkx4N05uZkF1bXZY?=
 =?utf-8?B?RXljSElKMDNHWUdnSUttajdqaVUzcjVyeUhPYzN0K1dtSUMrS1BZU2R4WXhQ?=
 =?utf-8?B?Y3VjMmtNazFka2RWanNaWHEwTFFaSWM4V28wa3dDNm00QnJBSER1emhyWlVG?=
 =?utf-8?B?bTlmOVZmRHVPdlRGbjhSUmNvajFwUEg5ODVIN1U5MnV6d3RUL1BaQVNzamlO?=
 =?utf-8?B?SXlEQzhNYzJLSUhNbzE3Z1FxUGRxZUcvMFRPNmx0REhyV2lIdGNnSTRaMkF6?=
 =?utf-8?B?SEJ6OTYxUTQ3UlhuZCtwbzh3MCtBM3d0RUphaEx3UDlnRkVOTnRwQzU1dlRK?=
 =?utf-8?B?VStxb0FaRjVyaU1rY0VBODdQSnVqUXh6VmQ2ZVlmSHNLZXdDQi9aY1V4aUp2?=
 =?utf-8?B?SVRZbUM0UjEvNVRraUtXbXJWTmtCamtpZGtJb2gzejlncHgzOEZPbGl3M05a?=
 =?utf-8?B?K09BeDc0ZTVnb3VzdFBBeTZQRWJ3S2pMY3RvbVllZ1dySlYvUXp4R1pzMGs3?=
 =?utf-8?B?S1JqcUlwcEJhTmpEOC90Q1BRMkcyaVh0NjFEdGNyVjVMMlpMeUd1M0R4K2NK?=
 =?utf-8?B?b2h5cDh6cTA4a2puQVdRT1pwY3plN1hnNWpvV2htZzBHYmN4V2lsa3I5QlhR?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?bWUxcU5GdnphN0tBMldXWlJUOFlFMmxNNXhqbXVsTXk0MWJpbVpyalZnMElE?=
 =?utf-8?B?TUNnc2h1UHd5dXdSblVzdG5qRTdLNnJ2TThIRVEzQjZrbjZEYjBEZlRqd0pB?=
 =?utf-8?B?bVl0alRXN2FXSGF5OWlRU2xQMjhROTRaaGhaOXQ2RXF2RW1QNUg2RndCVlVV?=
 =?utf-8?B?QUdwNDBwbFdhbzc1WXJoMXNaRTNFclBvS2RldHdzdFJLOE1RdXhZd1FPaDdz?=
 =?utf-8?B?aWFKV0NmZGtFbThOOTY3dGVKT1VzUVFiUEN1djdMUXkyRmxMZVdIQS9MaGM4?=
 =?utf-8?B?K1o2dTY1bEJJalVHSW05UUsycnZ2WkxjWTB6SXppUFpsSW5XUVcvTXZycVlw?=
 =?utf-8?B?elpGZHJBV0tjNXhIVWJ1di9YdW1mOTA5d0FBdFoxS1B3YVoxbFRScDlLQktH?=
 =?utf-8?B?dkk1UHdTeUwwZXV3eTBiSHNKbzM2MDlVUVJtTVY5aStpTGpaU3JvSkxzZUll?=
 =?utf-8?B?TGRwUi9DRDQ1R0cxMEliN0dFdTZSZHVXeUJZb0VaY253OGRrQURLYklpQk1n?=
 =?utf-8?B?WUlvQXBhM2pCR05tSndpZDFPeXVWZUQ3ZWFPT2VNUW5VOGdiYjQ4cjU3TUZZ?=
 =?utf-8?B?V3Y5UU1GdVArdTE3UG9rajFkNDY4SW5WU1dON2owMjFTVWpXQVJhSDB2eFJQ?=
 =?utf-8?B?RmNnamFoNjZ6UDkwVmZEMmIxQ1l1WHVQMDVhQnplK3hpRXdOUzRIeVR2cWZH?=
 =?utf-8?B?NkwyZjl6a3k3WXhZZC8vUU1TQm11SHA4RmxZTngrRUp0TlVKQy94S0t1NURX?=
 =?utf-8?B?MVVQcEZOY3R2NnJITkwzcmlzUThjaVZHb0JJZkhzaEw0WnRPSFZmMVd4bjQz?=
 =?utf-8?B?SWpFMm8yekx5MnJ5SEJPWU1hc29uOFNCVjZhZGFQTkJYNTkyQXlObm5DQ1I0?=
 =?utf-8?B?WkpDMGlGNzEybGNxcHRScUE3L2xWV0piODd1QTY2bUdMU2d1Nlg1VW5WbkZ0?=
 =?utf-8?B?cWFibEp1V1FhTHpaSjNJMml2bUxPdGNhNWJPY0wvZG9SaVJxT2dhb2dEQytM?=
 =?utf-8?B?WlZvWWJDWnRJRFh6aVVqOXA3VkpzRlBtZ3d2UWt4aXB2SG9QdE0zWlIzVmVI?=
 =?utf-8?B?SWtOZDFzSGxBVzFmRHQyQkFLTVB6UjNLQ2ZnMktkbE90UU8yUU9oS3VFSXdw?=
 =?utf-8?B?aXZJU2FyaThYWWNXKzNTU2lsRUYrOHNUV1RPem4xbS9ZeENsYWFpaGZPNUVx?=
 =?utf-8?B?MnJ5VWJBZUoyNWJCSC9NQ1dTa0d2dEhLTWxsRHBTZ3dxMHhlTzdTNVNMMjFN?=
 =?utf-8?B?VmJBUHpUdlFsWFF5WTR4dFBabm5Ya3NCMFlEU0lmcnNTWWIxWkdFVklndVJN?=
 =?utf-8?Q?HtFNMdmQurNi8=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5827e34-a402-4ad8-691e-08db88a46426
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 22:06:24.1003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hae41QiRAmE/4QS8OJGU+1zTHxMaVKQv1hucQlmnL92FNCF1nhYcQ1E9SFZaIp5Jvl6DkyaPyy+KVNI2NMqygSfDrzroZxrMuFW6MRPBJfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6071
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-19_16,2023-07-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 mlxscore=0
 bulkscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2307190199
X-Proofpoint-GUID: plAYbgTfIOPGOb4wvEOGgyqjqWqr6z_D
X-Proofpoint-ORIG-GUID: plAYbgTfIOPGOb4wvEOGgyqjqWqr6z_D
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/19/23 4:58PM, Dr. David Alan Gilbert wrote: > * Steve
 French (smfrench@gmail.com) wrote: >> The related question is which tree
 to send it from, if no problems >> reported (presumably mine since i [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qMFJj-00DVkV-EP
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org, tom@talpey.com,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNy8xOS8yMyA0OjU4UE0sIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgd3JvdGU6Cj4gKiBTdGV2
ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNvbSkgd3JvdGU6Cj4+IFRoZSByZWxhdGVkIHF1ZXN0
aW9uIGlzIHdoaWNoIHRyZWUgdG8gc2VuZCBpdCBmcm9tLCBpZiBubyBwcm9ibGVtcwo+PiByZXBv
cnRlZCAocHJlc3VtYWJseSBtaW5lIHNpbmNlIGl0IG1vc3RseSBhZmZlY3QgY2lmcy5rbyBhbmQg
a3NtYmQua28sCj4+IGFuZCBiZWNhdXNlIHRoZXJlIGhhc24ndCBiZWVuIGFjdGl2aXR5IGluIGZz
L25scyBmb3IgeWVhcnMpCj4gCj4gVGhhdCB3YXMgbXkgaG9wZSwgZ2l2ZW4gdGhhdCB+aGFsZiBv
ZiB0aGUgcGF0Y2hlcyBhcmUgZGlyZWN0bHkgb24gdGhhdAo+IGNvZGUsIGFuZCBpdCdzIHRoZSBv
bmx5IHZlcnkgYWN0aXZlIHRyZWUgdGhpcyB0b3VjaGVzIGFzIGZhciBhcyBJIGNhbgo+IHRlbGwu
Cj4gCj4+IE9uIFdlZCwgSnVsIDE5LCAyMDIzIGF0IDEyOjU24oCvUE0gU3RldmUgRnJlbmNoIDxz
bWZyZW5jaEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+IE5vIG9iamVjdGlvbnMgdG8gdGhpcyBv
biBteSBwYXJ0LiAgSWYgU2hhZ2d5IGlzIG9rIHdpdGggdGhlIEpGUwo+Pj4gY2hhbmdlLCB3ZSBj
b3VsZCB0YXJnZXQgaXQgZm9yIDYuNi1yYzEgaWYgaXQgdGVzdHMgb3V0IG9rCgpGb3IgdGhlIHNl
cmllczoKUmV2aWV3ZWQtYnk6IERhdmUgS2xlaWthbXAgPGRhdmUua2xlaWthbXBAb3JhY2xlLmNv
bT4KClN0ZXZlLApGZWVsIGZyZWUgdG8gcHVsbCBpbiBldmVuIHRoZSA0dGggcGF0Y2ggaW50byB5
b3VyIHRyZWUgd2l0aCBteSBjb25zZW50LiAKT3IgaWYgeW91J3JlIG1vcmUgY29tZm9ydGFibGUs
IEkgY291bGQgc3VibWl0IGl0IGFmdGVyIHlvdXJzIGhpdHMgbWFpbmxpbmUuCgpTaGFnZ3kKCj4g
Cj4gVGhhbmtzLgo+IAo+IERhdmUKPiAKPj4+IE9uIFdlZCwgSnVsIDEyLCAyMDIzIGF0IDY6Mjji
gK9QTSBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IDxkYXZlQHRyZWJsaWcub3JnPiB3cm90ZToKPj4+
Pgo+Pj4+ICogbGludXhAdHJlYmxpZy5vcmcgKGxpbnV4QHRyZWJsaWcub3JnKSB3cm90ZToKPj4+
Pj4gRnJvbTogIkRyLiBEYXZpZCBBbGFuIEdpbGJlcnQiIDxsaW51eEB0cmVibGlnLm9yZz4KPj4+
Pj4KPj4+Pj4gVGhlIHNtYiBjbGllbnQgYW5kIHNlcnZlciBjb2RlIGhhdmUgKG1vc3RseSkgZHVw
bGljYXRlZCBjb2RlCj4+Pj4+IGZvciB1bmljb2RlIG1hbmlwdWxhdGlvbiwgaW4gcGFydGljdWxh
ciB1cHBlciBjYXNlIGhhbmRsaW5nLgo+Pj4+Pgo+Pj4+PiBGbGF0dGVuIHRoaXMgbG90IGludG8g
c2hhcmVkIGNvZGUuCj4+Pj4KPj4+PiBHZW50bGUgdHdvIHdlZWsgcGluZyBvbiB0aGlzIHBsZWFz
ZS4KPj4+Pgo+Pj4+IERhdmUKPj4+Pgo+Pj4+IChBcG9sb2dpZXMgdG8gdGhlIDMgb2YgeW91IHdo
byBhbHJlYWR5IGdvdCBhIGNvcHkgb2YgdGhpcyBwaW5nLAo+Pj4+IHJlY2VudCBkdWUgdG8gYSBt
aXNzaW5nIGhlYWRlciAnLCcgKQo+Pj4+Cj4+Pj4+IFRoZXJlJ3Mgc29tZSBjb2RlIHRoYXQncyBz
bGlnaHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQKPj4+Pj4gSSd2ZSBub3QgYXR0
ZW1wdGVkIHRvIHNoYXJlIHRoYXQgLSB0aGlzIHNob3VsZCBiZSBzdHJpY3RseSBhIG5vCj4+Pj4+
IGJlaGF2aW91ciBjaGFuZ2Ugc2V0Lgo+Pj4+Pgo+Pj4+PiBJbiBhZGRpdGlvbiwgdGhlIHNhbWUg
dGFibGVzIGFuZCBjb2RlIGFyZSBzaGFyZWQgaW4gamZzLCBob3dldmVyCj4+Pj4+IHRoZXJlJ3Mg
dmVyeSBsaXR0bGUgdGVzdGluZyBhdmFpbGFibGUgZm9yIHRoZSB1bmljb2RlIGluIHRoZXJlLAo+
Pj4+PiBzbyBqdXN0IHNoYXJlIHRoZSByYXcgZGF0YSB0YWJsZXMuCj4+Pj4+Cj4+Pj4+IEkgc3Vz
cGVjdCB0aGVyZSdzIG1vcmUgVUNTLTIgY29kZSB0aGF0IGNhbiBiZSBzaGFyZWQsIGluIHRoZSBO
TFMgY29kZQo+Pj4+PiBhbmQgaW4gdGhlIFVDUy0yIGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVy
ZmFjZXMuCj4+Pj4+Cj4+Pj4+IExpZ2h0bHkgdGVzdGVkIHdpdGggYSBtb2R1bGUgYW5kIGEgbW9u
b2xpdGhpYyBidWlsZCwgYW5kIGp1c3QgbW91bnRpbmcKPj4+Pj4gaXRzZWxmLgo+Pj4+Pgo+Pj4+
PiBUaGlzIGR1cGUgd2FzIGZvdW5kIHVzaW5nIFBNRDoKPj4+Pj4gICAgaHR0cHM6Ly9wbWQuZ2l0
aHViLmlvL3BtZC9wbWRfdXNlcmRvY3NfY3BkLmh0bWwKPj4+Pj4KPj4+Pj4gRGF2ZQo+Pj4+Pgo+
Pj4+PiBWZXJzaW9uIDIKPj4+Pj4gICAgTW92ZWQgdGhlIHNoYXJlZCBjb2RlIHRvIGZzL25scyBh
ZnRlciB2MSBmZWVkYmFjay4KPj4+Pj4gICAgUmVuYW1lZCBzaGFyZWQgdGFibGVzIGZyb20gU21i
IHRvIE5scyBwcmVmaXgKPj4+Pj4gICAgTW92ZSBVbmlTdHJjYXQgYXMgd2VsbAo+Pj4+PiAgICBT
aGFyZSB0aGUgSkZTIHRhYmxlcwo+Pj4+Pgo+Pj4+PiBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICg0
KToKPj4+Pj4gICAgZnMvc21iOiBSZW1vdmUgdW5pY29kZSAnbG93ZXInIHRhYmxlcwo+Pj4+PiAg
ICBmcy9zbWI6IFN3aW5nIHVuaWNvZGUgY29tbW9uIGNvZGUgZnJvbSBzbWItPk5MUwo+Pj4+PiAg
ICBmcy9zbWIvY2xpZW50OiBVc2UgY29tbW9uIGNvZGUgaW4gY2xpZW50Cj4+Pj4+ICAgIGZzL2pm
czogVXNlIGNvbW1vbiB1Y3MyIHVwcGVyIGNhc2UgdGFibGUKPj4+Pj4KPj4+Pj4gICBmcy9qZnMv
S2NvbmZpZyAgICAgICAgICAgICAgIHwgICAxICsKPj4+Pj4gICBmcy9qZnMvTWFrZWZpbGUgICAg
ICAgICAgICAgIHwgICAyICstCj4+Pj4+ICAgZnMvamZzL2pmc191bmljb2RlLmggICAgICAgICB8
ICAxNyArLQo+Pj4+PiAgIGZzL2pmcy9qZnNfdW5pdXByLmMgICAgICAgICAgfCAxMjEgLS0tLS0t
LS0tLS0tLQo+Pj4+PiAgIGZzL25scy9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDggKwo+Pj4+
PiAgIGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDEgKwo+Pj4+PiAgIGZzL25scy9u
bHNfdWNzMl9kYXRhLmggICAgICAgfCAgMTUgKysKPj4+Pj4gICBmcy9ubHMvbmxzX3VjczJfdXRp
bHMuYyAgICAgIHwgMTQ0ICsrKysrKysrKysrKysrKwo+Pj4+PiAgIGZzL25scy9ubHNfdWNzMl91
dGlscy5oICAgICAgfCAyODUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4+ICAg
ZnMvc21iL2NsaWVudC9LY29uZmlnICAgICAgICB8ICAgMSArCj4+Pj4+ICAgZnMvc21iL2NsaWVu
dC9jaWZzX3VuaWNvZGUuYyB8ICAgMSAtCj4+Pj4+ICAgZnMvc21iL2NsaWVudC9jaWZzX3VuaWNv
ZGUuaCB8IDMzMCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+PiAgIGZz
L3NtYi9jbGllbnQvY2lmc191bml1cHIuaCAgfCAyMzkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+Pj4+PiAgIGZzL3NtYi9zZXJ2ZXIvS2NvbmZpZyAgICAgICAgfCAgIDEgKwo+Pj4+PiAgIGZz
L3NtYi9zZXJ2ZXIvdW5pY29kZS5jICAgICAgfCAgIDEgLQo+Pj4+PiAgIGZzL3NtYi9zZXJ2ZXIv
dW5pY29kZS5oICAgICAgfCAzMjUgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
Pj4+PiAgIGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmggICAgICAgfCAyNjggLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4+PiAgIDE3IGZpbGVzIGNoYW5nZWQsIDQ2NyBpbnNlcnRpb25zKCsp
LCAxMjkzIGRlbGV0aW9ucygtKQo+Pj4+PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9qZnMvamZz
X3VuaXVwci5jCj4+Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL25scy9ubHNfdWNzMl9kYXRh
LmgKPj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmMKPj4+
Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191Y3MyX3V0aWxzLmgKPj4+Pj4gICBk
ZWxldGUgbW9kZSAxMDA2NDQgZnMvc21iL2NsaWVudC9jaWZzX3VuaXVwci5oCj4+Pj4+ICAgZGVs
ZXRlIG1vZGUgMTAwNjQ0IGZzL3NtYi9zZXJ2ZXIvdW5pdXByLmgKPj4+Pj4KPj4+Pj4gLS0KPj4+
Pj4gMi40MS4wCj4+Pj4+Cj4+Pj4gLS0KPj4+PiAgIC0tLS0tT3BlbiB1cCB5b3VyIGV5ZXMsIG9w
ZW4gdXAgeW91ciBtaW5kLCBvcGVuIHVwIHlvdXIgY29kZSAtLS0tLS0tCj4+Pj4gLyBEci4gRGF2
aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAgUnVubmluZyBHTlUvTGludXggICAgICAgfCBIYXBw
eSAgXAo+Pj4+IFwgICAgICAgIGRhdmUgQCB0cmVibGlnLm9yZyB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgSW4gSGV4IC8KPj4+PiAgIFwgX19fX19fX19fX19fX19fX19fX19fX19f
X3xfX19fXyBodHRwOi8vd3d3LnRyZWJsaWcub3JnICAgfF9fX19fX18vCj4+Pgo+Pj4KPj4+Cj4+
PiAtLQo+Pj4gVGhhbmtzLAo+Pj4KPj4+IFN0ZXZlCj4+Cj4+Cj4+Cj4+IC0tCj4+IFRoYW5rcywK
Pj4KPj4gU3RldmUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2pmcy1kaXNjdXNzaW9uCg==
