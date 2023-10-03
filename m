Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DCA7B7562
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 01:44:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnp3R-00048T-BU;
	Tue, 03 Oct 2023 23:43:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qnp3Q-00048J-3l
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 23:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/ztq9Ynrpn97Q2IOcWkUP8VBhB6qr5qXH72migmDagk=; b=f8xG9WeBtVR2bgIegnhZutRU2i
 5tM1v5niZTdlNXigtdh/0JD3OkAsuQxvi5BAUPeOnPotrhDo/lP/yBDM42WzH2ciRRo5z1hZPUEUf
 hQbA27dwaTcX0uy7dh3SrC3tYrH5HZfY9lgYRJOvC9DlChGYSfVpWAMdEJyljqY6quGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/ztq9Ynrpn97Q2IOcWkUP8VBhB6qr5qXH72migmDagk=; b=C+imHW2S3ISb+T9gts0Q60vvfe
 Q28/Rt739Nh/Is1YLfp+MkTy6oJ1JmE1NufvPEbADcDjrRCgNVBO9tHz8lD4JsrRCehynott1iBvS
 4SbTFAR+6ldDXaWgJAceAx/4SIFROWJ95InTjg6QgaEXhpcRSZFfrrLmtPNDoNkfWWNs=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnp3L-000MnJ-NJ for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 23:43:52 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 393I4oBj014416; Tue, 3 Oct 2023 23:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=/ztq9Ynrpn97Q2IOcWkUP8VBhB6qr5qXH72migmDagk=;
 b=iC7UeHGO7VJP7Id4bdI6NIUgvqI8fbDSyLvTPzE4fER3XRvF62igIK6vvI1QJT0CBQFn
 n5psvxUr0VnLZ72jTMYsTp7+Z+5TZChRwplbnAwXySlYlMXGeNSHqIygsu5F76n85FhC
 XbUUVxiJJqXfT17bt+djbs96H9fW6flQUhOGdQfKBAszmnS1wFhmgkTZjZETYzk5orxg
 CqzxlEbtVqAgFo1BLfJThJRXGKaGaopC5xcJvBNGNEJU2NfBU3K8jeNoe5kgkmN3zgKi
 DhFxJiGUB5zsjAbL2pw9nVIDLsQ+LScTPIGRs4teH5ysMozS5vh/CAK+n+eDG+r1jqfn kw== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3tea925yed-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 23:43:31 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 393M0A6c003056; Tue, 3 Oct 2023 23:43:30 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2105.outbound.protection.outlook.com [104.47.70.105])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3tea46s313-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 23:43:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GeQEnxUW1CEqpbSS22bZ0iD5orvbqUVkuJ2eNYNPlyJjdeAvJTdcfvLdhCii3819qXmATShzA7/VO881QKpZhaYkZHL9ug0sR1Ds2MjVb3p8KfIksBDXf27vl4BZLjNYWKKLUDFZ6EHLdjMhD9cSHAVDsI4YiYVe9Ug/xzhcMLrjK345cohyWgwyexJ6Vm6gyN3RdKMOSIrxYgtrD2J08W4W0JpBTaN7VdZLaFhMrfrvmScz6XZVbYtX9alyzqmfiz14uHkIko5+CUcUKw26nmJnFMggA1AZwcyDWq07JZPmCFWkOq7g9T5ht8ufoh52YWADqUcSn9bFWJfK0srf7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ztq9Ynrpn97Q2IOcWkUP8VBhB6qr5qXH72migmDagk=;
 b=iq8/XsZ4Nq2cnZDtQOh0Ko4utD/kd3WjvVuxIsxR0m7lfUvrmgNskHazLqHiT3SdSYI8wimODeSZuTzioHialiTkGiMG7d2e7b89x5QRolPH+DAKvnqA4N+5TyiBC8xKmTft9l3lbE2rzRPGb7tg16kXG/sbzilwuHcclcOgfLWV2CZAULSOMRFCaNawoADX/VERDh6dNUkMwhf75N1D4HJqlPN7b++WyysBjoIVJx8nzk0XLPjgn6sDv1a7Lwi38CNJ5yX1Dx9qSvjrk6wl8Bcfwk1jYHYr2OBF8nQztFysVYIpCYxYyDnI6GROW+YQKff+L0zahJcB+kxceE+XWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ztq9Ynrpn97Q2IOcWkUP8VBhB6qr5qXH72migmDagk=;
 b=DbNnr6YB7eznRcKigwgkfoQRS9LZ789nmJlY59wptFyEjUBS3umagMPhIauOBzJlAYB+j2DaI8RBZnuU6g+WzncriUeaXQ03lYz01vyzgqtVQ6j4LZOdqNnPftvyZdmp7eqBTggYhMx/Y4K5TP0Ng3b2Gt5Wuersbit0xoPNIUY=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CY5PR10MB6191.namprd10.prod.outlook.com (2603:10b6:930:31::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 23:43:29 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6792.024; Tue, 3 Oct 2023
 23:43:29 +0000
Message-ID: <9e0a2e8e-6262-4faa-8948-0214b4062a60@oracle.com>
Date: Tue, 3 Oct 2023 18:43:25 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Juntong Deng <juntong.deng@outlook.com>, shaggy@kernel.org,
 liushixin2@huawei.com, yogi.kernel@gmail.com, andrew.kanner@gmail.com
References: <VI1P193MB0752B8FE593B2854914ED09F99C4A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P193MB0752B8FE593B2854914ED09F99C4A@VI1P193MB0752.EURP193.PROD.OUTLOOK.COM>
X-ClientProxiedBy: CH5PR02CA0010.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::22) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CY5PR10MB6191:EE_
X-MS-Office365-Filtering-Correlation-Id: b0b59e8a-e5cb-434a-037a-08dbc46a8b82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUIyd0E1ZzVyMUF6aE9JVEFXRkJ4VjVWbHVHbkFxY2dBb0lhbitjTXVBeFJE?=
 =?utf-8?B?a1NuMnZna0dXdk9RcWtPU3pwQUtNeFFHY25pK05xZlVDSlFIWGNmMzBQRldO?=
 =?utf-8?B?R0FaUzIrY2lBMytlTWFOS1E0MU1IZy95VWVGRFlBRDJBeWdOZkRaOUZmZkZt?=
 =?utf-8?B?VUEyODlxRG12bmNZazBGMDdra2lscG1mcGhsUHNnN2FkZFpxY3Z2V2tTcjB3?=
 =?utf-8?B?dFBwelFXZ1pwQWR6Z21DYmQ3U2xqWXFXYmw3ZEtQeHlpUk5KOE1sS1lUZGc5?=
 =?utf-8?B?NmU1UncvVVQzSk5FQVFXT3c0M2VyUU15bmhCdHhxVGxQeWlRTEpKMjh2NjNz?=
 =?utf-8?B?K1ZUbytPbk4wdndXTFBtK2Q4Y1ZkMVJTL0F3VUpORmhiZG05amFjU01RRHF4?=
 =?utf-8?B?WVM4RHU5T1pzdkxyN25vV243VGxQMExGWTJmV1JzR0dzSUdQYzNaL1dJQUpl?=
 =?utf-8?B?SERvd0pUeloxVjhFUzM2NGU1RFdoNmdVVE1HUWtaaU50eFMzVm15OUluU3B3?=
 =?utf-8?B?ODRSSjB0dHF3K2lwdGRUVjFQNk5TTHpJZDhjY2svbkhxTTFGVitpbUN6UVNL?=
 =?utf-8?B?d2UxYytSTVM5c056NFVGWXdIR245eVJYdlN0K1BMZVFnbXhBYkFwcDdkWGwz?=
 =?utf-8?B?TC91YXgyZ1d4QVpQY05ZVlJFZFFQbDZCdmRvSGFxV3A3dzhHbXRSS1U2YTR4?=
 =?utf-8?B?a3Q5QmRqM1ZNVkpTekNySmxJenpaMjR5djZaeWtSVnRrU0pzU3J6N3BpQXVh?=
 =?utf-8?B?ZnVCUExXUFZ1TkQwQnhsdVBQdjdQR2I3TVM2Q0ZYeUZyeS9UZDJhd29IQzkv?=
 =?utf-8?B?VkFXbDFReldqZVNna2lKa3dQRFh5NS9QWHFEdHlQc000NTV4cUQxenRMbHRM?=
 =?utf-8?B?amN5b3RGUVpzODI4MEVON0ZzUGhIVzNxYXRYVGpIVFVscDBpZSsvZnRFR1VS?=
 =?utf-8?B?czU5WHVRSm04MG9oQTFQZk5odzN4OXJOUWVadTBkbG5JOUlHaXd4VmZPQWJZ?=
 =?utf-8?B?VWxZR0FrVVNOUy9OZHhqNy9TT0FTMWl4UGVuWGFZaGtCeTJ5V2JrckxzTUow?=
 =?utf-8?B?Z285bWpGa2p2MWc4bGk4YWxMUGpzM3lzZ2ZaS29aR3I2aVkvNmEydDl5d2lp?=
 =?utf-8?B?SXR0c2ltYmF0VGM5TmhaMGRIak5laDh0ZE5xaVkwRFo3UWFlUVhRakFUNkRu?=
 =?utf-8?B?dTl0cWZXZWNJWEFLeTFINTFnbmpWOXhRR3IvOVoyVGNpdE90dmN2Vi9nUGkz?=
 =?utf-8?B?eXdxNld4NW43VlJKN0JTWWRYM2tZcGNrYlU1dkNoRGgzcjNRUUZFZ0ZzdWtE?=
 =?utf-8?Q?IVFAtNMgunZYQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(136003)(366004)(346002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(2906002)(31686004)(44832011)(5660300002)(4326008)(8936002)(8676002)(26005)(2616005)(41300700001)(66556008)(316002)(66946007)(66476007)(36756003)(6486002)(6666004)(83380400001)(478600001)(45080400002)(966005)(6506007)(6512007)(38100700002)(31696002)(86362001)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUpTakZwLzhNOHNUcFlBR0dHKzJLVVZ4dFBtd091c2ZhbWFlSUMwSlVMSTVu?=
 =?utf-8?B?YlhBaUd4STJFenV1b3pmc2pZcjJUL0tLSjNWQkswLzJIR1pEa2o0Q3lBQjZa?=
 =?utf-8?B?cHgwMGJQRnFqQkdQa0JaamlvL3NncktlLzdWRWN2bGpZRFdVZm0zS2xMTzlQ?=
 =?utf-8?B?V1FxR285YlduczVkeXBVTXFkTUtVdE1nd3p6ak5IOTgwMnFZMGZNUmFFaWRG?=
 =?utf-8?B?NFdCWVVZL3RoLzhmQ252U2lrem9HdmlVR0RhVjZLYVNSREFheXg5WXl1YlVj?=
 =?utf-8?B?SHJSYk9iYnZjL1VtQ2hXSWtXdENyRkNiRDhxMlMrQ1FQWGQ3Nzk3TysralAr?=
 =?utf-8?B?SzFpMHkwTVNEYUlWajhhbWtWcU9LY3RDZy9EZ3VvQm9wdUN3Wno5VzdRSlQ1?=
 =?utf-8?B?TlBKY2hYa3d1aGpSUERCQkhGSGp5bXVkeDdwZjRXWG1SQmRHY25XVWZ6YUI1?=
 =?utf-8?B?VmdBSitzTjk2YVU3MFJxcFRZWmx5K29OUVZwdCt0RGxaTUtoMFJOSVJNdGkw?=
 =?utf-8?B?V1JIaXc4ZHEyTXQ5SG85QWZtUGtKOFBtWjlCelYvbGVaMEhwR2dnWEJ0cGRa?=
 =?utf-8?B?TFpqeVk2RFhSNFkrMG15MjFlQWo2UUFEc2JxUkxHODRqL0FDNGZmNHRveEM1?=
 =?utf-8?B?UXJMRHdJbUs5cWQ2aDVQM2RwT3Z6SzVxeFEzb2p6b0pDRlladzEvWno0ZUI0?=
 =?utf-8?B?ZW5LVHl4aE01SUZ5NFh3WGNEVXB5eWdxQmZveG9uQ2JrRGxSM0RQV2MwcmZM?=
 =?utf-8?B?N1VISUZwSmRTbFlHYjRpeFdQK29TTUpJTXgzNzJiQVNsTEUvOHZXTEdoWTRx?=
 =?utf-8?B?SG5GcEFET3BNbUZ2bDYvMGxvL1RLTWpIcXgydFJGL0k3SWYveTdHa2xobHZO?=
 =?utf-8?B?V09oY29mN0FVMVZaaFZYQkJ1bm05VDlzWStIdzlyVUhtSXBPUCtveUZjNUh6?=
 =?utf-8?B?ajZZNE5DRkN2TWlicHc0NkpxMy8yYVptV1dLemR1TFJoZGlzRTBJOHQzQXRH?=
 =?utf-8?B?MGFHMk1sT3l3OVlvVkZNTWp5ME1YbFBteVNyREs5MlcrWHZKUllHeURDRjZB?=
 =?utf-8?B?cUFpalRtNjhpUTJvT0xBakVmdlVZWE1rd09NMHFpcUpzUUhhUWtVNlcxSlNx?=
 =?utf-8?B?SUNxZlpFTVZMWjVMN1lMUS9VeFhZWmFmVG93bjRXMmZjdk5rN3dvc3B1aE5F?=
 =?utf-8?B?eHFNdnRqQkpOc3hZNE5kWjIrRG5Sd1ZqWkVGb0ZlTlAyODRhWnFaeHVpWGo4?=
 =?utf-8?B?c0lqM2l1RGdVVmM5YzA3NUxjeEQ4RjRldUNlVkNEYUpRbkNjMkJ2N0t6bjly?=
 =?utf-8?B?MDM4OFdTQkt0QzNFa0p4MUNmZ1pzYUVkUnRrbzlGZHo3YnA5TE5IRFc1RS9j?=
 =?utf-8?B?RkhuNEJPcnJxaitmNzN5dWNaRXdjMUxmcjE1ZEV3VlVSTnQ0SEI1VXVqSGMz?=
 =?utf-8?B?Y2kzS0t4WlA5dU9RVVhqenhhM2U2dEhDMjBjTjAybGRpWXV4QU52RTl0bVZN?=
 =?utf-8?B?UHRsMHIzMldkYVY2VlNtbkl0V1V0dkdWTWxRZXMvYTI2V2tUUEJja0hudXlr?=
 =?utf-8?B?bE1oeVZOK0U3anAyTElkSDVURkFFalVreEt4YVlvOHlsVElyK2t1UlhUNllV?=
 =?utf-8?B?MlVEZ1FibDhHQnl3d0FuUmhBRE8ySE1xUlQ5NHU0OGFzOE9BRk1XUTRnWDNn?=
 =?utf-8?B?NHBLNXM3aDMvZVU2cFg2WU82WWFDTThzbkl6aWNCRnp5TVp5ZUtNbXBZanZh?=
 =?utf-8?B?RDdWdnFhTXY1Nkp6N0oxV21nNU1LbkRvMTI1dllQb2FGMHR2WlNqV211R3Vr?=
 =?utf-8?B?WFRacHVHZWw0SVBsS0hzZkpidHkvb1N6U3BRYmxhUEpCQnpZVE80YXlneCsv?=
 =?utf-8?B?ZUJaSFRySTVkMTR5R1NDcFh6Y0kzUkxIUElLMUYrYkJRQldXZmtmbUlxNi82?=
 =?utf-8?B?UWQ5UWZ5aFVEa0FRRUh4UkJYdXhHZUZHblFYdGhjdU5DU2JFZEtiR3ZKbHg2?=
 =?utf-8?B?aURrRVhRV1BwVFJBd0ExNWFDRW9aYldmeGxtV202K2FTSnJnYXE5cmdxSW1p?=
 =?utf-8?B?Z3RxOGNUMVVxdlVHZkxHU3Q2dnUxMmhrUjA3UXFDaUpiZ3ZmS0xqQVFHd1RW?=
 =?utf-8?B?L2FpdXBRaDNRak1kcUJXSUtINE1EaDlNSWdUK3ExK0JtNUpSTkhjYXVaUncw?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?ODVtRS8yTlRPVmZ5VTNwZlc5SWM0RTFqWmlMYTdrT0VvMXhpY0c1L0NBYm8y?=
 =?utf-8?B?VmFqQ2NaamtXNjUvak9qTTB4d2hEbUUxTU9xbmk1NitRQ0MrZmdrd21pbjE3?=
 =?utf-8?B?ZzhLVTFqQ0p1ajFUaGdqdEIrODE3N1AvMC9Fekg4Z0c4RHROWEh1U2RnK3Fu?=
 =?utf-8?B?Kzg3dGVYNW1DZmh0cHM0U3c3UElBK0FTc3k3UFhISWpJcHJVdUc3OGpObGRk?=
 =?utf-8?B?MHhBaWVxNTBHdFc5NzV2MW5BVlVZSTBVNm1rL2VNRnJWQUg4UHJSUGZ0Mkxn?=
 =?utf-8?B?c1pBRkNaVi9IQTFIMmQvRUNSNVFWOERxNVF4WHJvOWRVeE92MVZQekE3Z3Fz?=
 =?utf-8?B?MEVEbUhqVnRmYTY4UjNNV2VPZjJYL2pOQVNBaFFLdW1rWnBudFV6Zmd3dXBJ?=
 =?utf-8?B?Z3FEejJNV0lLeHZqM2dtOGdmUnkvRXVxaytrem13QnVnMy9Vb2wyQ3YvWGFz?=
 =?utf-8?B?UEtCRzVVK2oyOEoyYTBqWnNaQUNWSUliQmN4akFkZElTQlRHRDVPQWMyOWlM?=
 =?utf-8?B?d1NobkdCOHUyUGxwTm53d0orZHZwdDFPbTlGQURDWXVOdlBHQmFiSHQ5eU8r?=
 =?utf-8?B?OHdlMzJzU1JGQ3JacWFrVG9xQXl5OG01K2FvRDBINXVKTWJTbW9XMlNWZytx?=
 =?utf-8?B?c1RZVmJ0UGthOUszWVF0cGJQeFRFRHhJb1RzN0JvRXdOcDgreCs5Zmd5Tyto?=
 =?utf-8?B?ZlFpL1JEdFRUbWhvNWxWbUFQcGtJNHgrZ2c5Rk4rZHRzeTh5NG5ZT1h2L3Zs?=
 =?utf-8?B?SVFxQXNXMUx6UUVKSmw2MVozSWp1aFZidk9pbytJdlY0VEhMdEZaYkNHVllJ?=
 =?utf-8?B?KzdSeVp3MFpkTDA4NExLNWVkeTdONjZOUElUbm40bjBwbjZPajBYTzJmZGg0?=
 =?utf-8?B?Y0xvUGtwaUNNdS8wRkhFbTZIT3RFcmlMN2RZMkpDMmVDYW5ZcjcvaUIrdnp6?=
 =?utf-8?B?YUxSUkdYVEtKR2VHeXg0Sm9TK1QwNUtlWGphRk1lNUpCQTVjeWF3VXJkdWZY?=
 =?utf-8?B?UWs5UEwyb1NaM1JHU1RQcHpNR2kzL0dWWEZJUWNweGZWRWtsUFhsdWdRMjgv?=
 =?utf-8?B?dWtCYVBhbDN1bXRRUGFFT1hYSWE1ZG9GQkFsR2RxT1RCSzUvNTlEMnVGNHQy?=
 =?utf-8?B?RVVvenUxemVQUU12RnVNQ1ZucG5PdUREam0vMVdDcFpaTGsyRXpCQTJNQXUx?=
 =?utf-8?B?cFBuRU5hc0lOdzJXKzlQbmpCQXhBcmY1UHQ1cU1OME1kRWMvajArYUY1azRZ?=
 =?utf-8?B?MnJxK1NNa0wwYVlhWkYwREFkYWM1bXFnODI1KzRHM1lPUlJabmsvM25JNEF6?=
 =?utf-8?B?TnMvN3AyUXVHbStaMkUzbmZONGdPNzVWRTZXZGhNQ3ppVWNFQ0dBbzh4U2dF?=
 =?utf-8?B?Ny81bHRxN1pqTm9zRnNnSFk4eW5GQ1pRQk5OU2xTQTArY2dBNDRnRnQwNXVj?=
 =?utf-8?Q?AShwSPWz?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b59e8a-e5cb-434a-037a-08dbc46a8b82
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 23:43:29.0500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ebcI/7fGp2CJ6EsHmHPHSB/kNoUa+jYAH5FdrgOuBHXgeh+ELJXrdASxC69saBkGDhO+CpxD1QNhY64Su+KkhnglFftAQr9uSyKIt7R/Ar0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6191
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_18,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=970 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030180
X-Proofpoint-GUID: nbwWHZqKHkIpEYLOMaE4AsnxJqQJP9W6
X-Proofpoint-ORIG-GUID: nbwWHZqKHkIpEYLOMaE4AsnxJqQJP9W6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/3/23 1:06PM, Juntong Deng wrote: > Both db_maxag and
 db_agpref are used as the index of the > db_agfree array,
 but there is currently
 no validity check for > db_maxag and db_agpref, which can le [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qnp3L-000MnJ-NJ
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: Add validity check for
 db_maxag and db_agpref
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
Cc: syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/3/23 1:06PM, Juntong Deng wrote:
> Both db_maxag and db_agpref are used as the index of the
> db_agfree array, but there is currently no validity check for
> db_maxag and db_agpref, which can lead to errors.
> 
> The following is related bug reported by Syzbot:
> 
> UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:639:20
> index 7936 is out of range for type 'atomic_t[128]'
> 
> Add checking that the values of db_maxag and db_agpref are valid
> indexes for the db_agfree array.

Looks good. Applied.

Thanks,
Shaggy

> 
> Reported-by: syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=38e876a8aa44b7115c76
> Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
> ---
>   fs/jfs/jfs_dmap.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 3a1842348112..4d59373f9e6c 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -195,6 +195,12 @@ int dbMount(struct inode *ipbmap)
>   	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
>   	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
>   	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
> +	if (bmp->db_maxag >= MAXAG || bmp->db_maxag < 0 ||
> +		bmp->db_agpref >= MAXAG || bmp->db_agpref < 0) {
> +		err = -EINVAL;
> +		goto err_release_metapage;
> +	}
> +
>   	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
>   	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
>   	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
