Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A08473AE3D
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jun 2023 03:15:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qCVOU-0007my-BR;
	Fri, 23 Jun 2023 01:15:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qCLvW-0004rc-0c
 for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 15:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:From:References:Cc:To:
 Subject:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qHo6HD6IQpDmGKNE3TcdJa8nh2PcQNGbpHYeW1kK60Y=; b=bqXcXM/XktYUdxhPAYoWtNd7tA
 qVbAMLmXAqVAN0eo2eiT1Y8p1ufJB6Km4DXiCGhsJ5lh3UKiUTX5HRYxGpmu02KVfh8eiM+K6JrVk
 z+oKp/KH/z9tfqYDPhS9KnB3c1d5PP5jo50G5BDRi6YTLhYx9RdbZLupv3J+mM35nT/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qHo6HD6IQpDmGKNE3TcdJa8nh2PcQNGbpHYeW1kK60Y=; b=WaY0GZg1iuyxmSCmQFVXZjJLhL
 UW7hY0fOOSaI/jAqpPYszMtxLPKJ8vsdybmyBvzqVMdWMEiJZxAg7vUXxd5A5y8yOqqKkOWYXTMNS
 p5TqzBtNND2WCQx0PWVV9LrTRoU+A4dFnNY4t4Y2UL88Gsnr7/ciCnSiwyP0leXZjc/g=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCLvO-00Bafc-23 for jfs-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 15:08:50 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 35M7pvm3019606; Thu, 22 Jun 2023 15:08:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=corp-2023-03-30;
 bh=qHo6HD6IQpDmGKNE3TcdJa8nh2PcQNGbpHYeW1kK60Y=;
 b=qpxQRez1qbwLoXNg7bX2bnv14rDFK2TZuQ7OXqQ9pPVbccLeo8bIPWYvDWbUHlAjk5L9
 cDvzeTd3LSKvXdVC0Ru55jG2YtF/G56SxmrXJOXYkGnQTKuKrn8cnn29pNZV2PYIjghT
 O1nR3b8BNlmsTmx2RS7sd85EMenboFU4N+xRtLNif/hhT+U60orn1vRTLZcp6jBdIM1U
 +REQ2eLU7K+BrXfWF//aVyKuFxLcAa73YqEdOVbb7DzyUDfSgAsV0sljp+KpiJv+0rkC
 goeAuqi6jMlF66OkX5YXBeTQTial0W44S5En1SC2a7j+4AP4RbcxPDG+sSRqA4LuNU4Y Iw== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3r93e1j0gk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Jun 2023 15:08:31 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 35MEFNFm008401; Thu, 22 Jun 2023 15:08:30 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3r9397yukj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Jun 2023 15:08:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDLuc4x9b2PnULYp8TZkpAYnpuvFJyVh+wgLPi/04/wM9w5EQVGpw/HlHXsxiFi557astOK8pNXx3ZpL45RKpsPnayG3eY9Tv2BKXboOhr7DC9a2RzxShxWN5haLWcg/RSJY4pQiStuqPKV8sO+2/LJgZvlvmmNVqf2hWvNzTfb1h7J+hKs/P40QG7nc4AiAQw3rqO2xfGzxOrmTZvFSaJJECqv8qlocQHPSrsEP250zIDQEvD7e4KYu5CKKTr/Eo0qaEwgGcI4EBdjxDxPRmD5GKv6AHfEsJ4/oGCCAXFVEPfvHBlI4+ZuOnoXulSLMZzo9w85UMa1S4LerwCYNMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHo6HD6IQpDmGKNE3TcdJa8nh2PcQNGbpHYeW1kK60Y=;
 b=FekJQZtIXlMZNvM2bkqa2use9arjaG3EYL0ODeHnzhzAtImIhvZCFyF2DaVkXJH3rVr1qkhQ2hdLqB5pV4DT/Z9zCZzvmHFMH8zbnM+f72D6qRv04zhxAHUflHHWK5Kja1vgHqf9mNMd3aLj8z+QAnk2NJXTIMOLGxDKD00Miuw9Ee/OPAFDRVLfmjCpR8nL5FwI1muTUxAF+z+vdsBpsdG3QYeH63aaUVtislnJnZjr/uHs+HhgdQaqxeUKkIFet1CqxoiubCgoKVSZj0zrCXCUuLUhm+bnMWCQOV/3I7qDA4dfk1lbyGQlzQ7CwLRXl/G6CUOt0laqN99DC6oIPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHo6HD6IQpDmGKNE3TcdJa8nh2PcQNGbpHYeW1kK60Y=;
 b=PTiA/R7eZOvsUCll9R0yFrS5KerQNSxjjAhdTKBj7m8BjiUxIr9SJHrqM1V5M1RFM2EVUUuKtgJ7wAC3vxS0FuxkzQ94K8kaQE2+tGIrek6OwI8Xy4qTbMl4fC+9Hv0kY5xv8AKpBx8xe6cLfV0kcmPtIht9d4xwVf7fScSoqFs=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DS7PR10MB6000.namprd10.prod.outlook.com (2603:10b6:8:9c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 15:08:27 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96%5]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 15:08:27 +0000
Message-ID: <a0493c88-358a-9d77-110a-18449314193b@oracle.com>
Date: Thu, 22 Jun 2023 10:08:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Immad Mir <mirimmad@outlook.com>
References: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
 <CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com>
X-ClientProxiedBy: CH2PR20CA0007.namprd20.prod.outlook.com
 (2603:10b6:610:58::17) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DS7PR10MB6000:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f815e30-9ba0-4209-fa68-08db73328852
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GYBWA+8rLqJIfA7aG4Lzs5s4zPt2gN7Aaj2b7XMDTapEcA4EzqDnK3x/9VKMS+WrNMPiPwZWtGrMNI5oAV8TTJbMiFdCseMYpcHISSN4nee4AL+5H2Nr+hZRzPJD3OhL707PHiRqhIg+smN3LgRxBfiD3y6taS0jPp1QUgu54jPmMiDvo8mTvuJ5h4iiB4Ay2ovbW3oygkkKaA2ZCqjtQVe3B6HiAPDiq3fkf4RMrASIWiFh/72ZkAJNsfhNgXfot7r2ECIYY3kaXEKMz6Ca8dJgOMiYPm5iFVyJrUjwC80g3D11urDRA/JNSEZxhkgIk/q5YIRkLHCA1hbewwSqCerUpczO43lnNexbYdVGmZ6JO8x1szZyP1oY7TWGxeH/fBygVorQ9psMCDtPZkppzQc+dVi5k0frDGsm90kkekQU4FMk5ul/C6eG2EOjNfSHATy9PzQ4hLNNcFK7oxXtJr2DcXY4DRI9lCrLIkCbUxBiMdiBX9o0R6665jYtYNsZNtMkDDwi/bTbuPQOMRQ96hE8SaZmFQiFNj8vdbEoJUw4v/FLAK8nNNz3mBwN8hkvFRaApg75tO7Z0LcReWeGmIDNqbdmGG5z+9M7OdyfB3Ujtz6nGNEwDq6EkNmif+FcDVaTPjmacy/2IcySm4IVaLY42tk+xi42NeqYoLfIKOA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199021)(31696002)(6916009)(4326008)(66556008)(66476007)(36756003)(6666004)(2616005)(316002)(54906003)(66946007)(83380400001)(44832011)(6506007)(86362001)(31686004)(2906002)(966005)(33964004)(6486002)(5660300002)(8936002)(8676002)(45080400002)(6512007)(186003)(26005)(41300700001)(478600001)(166002)(38100700002)(99710200001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjJjNlg2MG4zemIxSmx5eXJTaWx4cVNRUkoxM2dJQnVxcXA5bFRHS1ZoR3ZQ?=
 =?utf-8?B?VFlSZ3Fvdjh1dlRnYnROaW1URzZUSVo3ekphNytIaWgwOXRFVisyZEVRbTh5?=
 =?utf-8?B?T3RvbTY0NTR1MnJtbWJNMzRzOWQ5VTdSZ3h6d2F4b3BGbGs3VUd4eVZzTU9J?=
 =?utf-8?B?dEFvUThIZ1lXK051R3dNNDAvZ2xiSndtN0VvNmZDQWtqVVFwaHo1WldJbENk?=
 =?utf-8?B?blFYT0JQWnR3SFZxcW9pd1RJeVU3TUlBMksrWWE3Qkcwa0lOOUJ6Y092cDNx?=
 =?utf-8?B?YWlVWlN0UGJrVk9Pdk56VTh2TFh4NkZOS3JWY2htdlNsZGQ5emhLN2ozc1VX?=
 =?utf-8?B?WExyWnc1dnExQXNmWTFwM2RuQkFKK04wRHRyUGsyM01wWXN5UXlkT294cTh0?=
 =?utf-8?B?Q3p6elQzV0M4aFZISkl0cDZoY2dZSnFMNUhnU3poSGVadXN3MUFod3FjWmRO?=
 =?utf-8?B?SCtSL25wSDRjNjNTb1FXMGxzMWdEaG5QK3Q4Uk5KLzhGSVhEY2x6cE1Kb212?=
 =?utf-8?B?M1EwRU1PeGl2Q0lJbUVSeGNBSUdCdld4K2FySi9xcVVBQXlNYkp6N2R3NkY2?=
 =?utf-8?B?T3VTK2J5RFhmeVVraWFBZmU3czN0YTFERHg1Q0lVdXB2RlBma1A5NVFlUk1h?=
 =?utf-8?B?TXhuKzd4S21QdTU3THA3MUJYVE01TGMzL294Wm1xbHdITjE2aklWZU9jdnlF?=
 =?utf-8?B?Zjc4alRiQ0JaZ2J0MCtOQVB4NkNuUWlmdkNYYTRiZmk2WEdJd2J6c0grWWRR?=
 =?utf-8?B?NXZWSXdkdGpHbEtzTURGZ1hDc25PU2dTNURKbUExZ0VnYWVVcjk0eGNNVCtu?=
 =?utf-8?B?Uk5mOFRtSGtRRFp0K2tnR3U0TFFBNHZhT2FsTjZObDJ3eHY1TWh4UDYxR0NC?=
 =?utf-8?B?OXJBVElnS3g0MzdMcUg2QjB6R3N1TUVXeDRTNWRMM2FnNklxSmF5ZmFSeVQz?=
 =?utf-8?B?dmZvNFdnSGdaU09MaFdqdGNtN2k2V002R25TWkpvd083OUUyS0JXc0tacjA2?=
 =?utf-8?B?Tmh2T3N1Y0xRTnZSYUVxOWpzMXRZVm41WElsVXA1VVh6LzdkNjBOVXhTekxh?=
 =?utf-8?B?VVpGNkdRVCtzQ28vRmRWRVZNL0puQklidHVYcHVwbUhJRmM5MEV5Um4yZ3J6?=
 =?utf-8?B?MUR3U3hUNzY2OVhOTU9jNFl6N1J1Nlo1OTlDakx4UHVVQ0lPdWxzZnMrei9G?=
 =?utf-8?B?cjR6YUZUZmloM1hYNEQrazRzMmxES1RhNG5zQVk0K2krMGxtZWpyY1ZxbHNh?=
 =?utf-8?B?bWwweVlnbXM0bGZGZkJhcGs1NnRQU09IcjZCRnpVb0I1UXZFdFFiY3B1emIr?=
 =?utf-8?B?THgxSTZsTjlkQmgyeEJVY01aTU5DOEF0d251dlk1M1dwNmpxTjd3d01mMWJU?=
 =?utf-8?B?V3dpZG9DbnZtMFdGUk9WWitQUXhvcWZPdjhFQmVmTm00SVBtd21xWkM2L081?=
 =?utf-8?B?UGF6Qm5qQ1kwS3JvaWI0RnA5Z2VSLzFabXk2cFM0Y3JQL0xhQ2d0S0NMZ1JP?=
 =?utf-8?B?UHNxRHY3a20xbmtTQi82dTU5OWVTOThxdENGNXpPUmNlZjR2a0dNVmRWQUtx?=
 =?utf-8?B?SU5IRGt3M0pnaU0rZjgrVlY4N0x6bGFINDFiSzV2UUFLdG11TVQ2enJVRzFh?=
 =?utf-8?B?NFFGU1VsMjQ4dDVlRHBZU2kwNWJQYmtDTHg5a0J0U2Jhdys3SmJhbW9QY0tE?=
 =?utf-8?B?UUoxRGR1TW9hRllIWUR2K3gzWmw3a0dwQU1tbG95RWhLa1orWU50eGhzSnNQ?=
 =?utf-8?B?ck94aEMrYVNlaVdWd0lTajlmVUpjU2VQRGhkUDBNOHh6emZ6Ti9zWUdUZmNF?=
 =?utf-8?B?NWUzSHkrRHI3SHdRRFNhcXlJazArYkJMNzdlUE9IRXQ1WWErZ1dlV2RPRDU5?=
 =?utf-8?B?eTBiK1FhMDRNc1NFV1lIQjlhdVh5SXgxa1dVMC9WOUFXUVhpZDBRQXVpT3BZ?=
 =?utf-8?B?SVprOFI5L1dGdlJNOGVmVnlBK05YQzlmejlUY2JPbStReVp3R2hWT2xRV1Zs?=
 =?utf-8?B?M3BMUDh1UmJ5Mzd6cXEyS1dacXkzZHI4MFJOc0l2Q1kyVWZwR1BZNzVQNG1h?=
 =?utf-8?B?M0M3L0RzVERHTytFVWIreE9tWkZVTHNIQWwyVUtSK1ZRTXBaRnpjbW9ZMmV4?=
 =?utf-8?B?UXJHU09HczU4YWJaVjlYeTA0WWdTU3ZlUUNsM0o1K0FNOWFrKzA0TW1NTHRa?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?WTRqdUNGQ25iNEt0YnAyLzZXNENURDJlZHNvMEdlY2trdjVmdDNFZ2lTRnM5?=
 =?utf-8?B?V2lBRGRrRzZOcGpXK0dpcHY3dGMzUjZZVVViaUM5NjcxZit5cXpvamczMlY4?=
 =?utf-8?B?d1pudHpqWVFkcFB2M1hoSnhCMW5pQjlXWi85dkt3cDBhWllyeWJpSExScG00?=
 =?utf-8?B?blY0RVpnZEVlMm41M0hrSU9weEYzY053NE94Mk40alUycnl2bmpkSktDOXM3?=
 =?utf-8?B?dTRKMGZHWm1sQlJTMTc5S0tYTjZNWk5RSmVPamF2ZmhjeGdkNExLdVRZeG0y?=
 =?utf-8?B?SU9FVXQ2c0ozOTlRdTUveS9jQUxtT0ltWWlIUE5Zdy9aNVpTcXlicTRBa0gy?=
 =?utf-8?B?bjducmhjZmJUd1RHbUJRUktwQUl2dlRzOHZqVlcwUDNscFkvdUErd0hZQm4v?=
 =?utf-8?B?NWZZRXhycXE4OWZxbmloMW03VTJGbzJldVNwdWlxcXRCTnNkVzY3U3gyNFpJ?=
 =?utf-8?B?MGE1SFJMQkw2WDNZeW10bVM5Y3pWY2V4cElFdXd6WHovSE92cXJVd3pZdytm?=
 =?utf-8?B?bm5HMGZ4TS9XUjdEL2Nsc2xDejZnMmI0ZnpMN1p3dXZ2OUtxVWhUVnFJNUpW?=
 =?utf-8?B?N3VPdVdHSm40c2FlM2F0ZWI4ZGl2SGs2eSsyWUJ6VjJpZ0xnL2M4bEdJeGRQ?=
 =?utf-8?B?eEw0aGwwdVZXREhwQU9INlpQNUxvZEtWYWdtYWJucnNLZWloSjdYRjZkTTda?=
 =?utf-8?B?cXFpUmlyYkwzMURLNXVBeDZuS2Urdlk1aTQzKzVFN1RoTGloWmN6MDBFUWFD?=
 =?utf-8?B?cjJCWEdSM2JDOHNCQlNrSmVxamsveVk1UklXWWRzRnVlZnhaY1lVbG4xSm92?=
 =?utf-8?B?SUI0VFlHb1ZHZ0dJaFJiRTE5a3lzbURCR2RKcm9yU1Z1U1ZSTStBWFpFQzRr?=
 =?utf-8?B?dUZXNGEweG5Bd04yM1h5Zm5RcEVHMHV1WVV4cGk3OEloNDd1bS9rTkYrVndN?=
 =?utf-8?B?MXR6U2laYWZiSWJReDZZei9rSTJMd2lHN0NES3FCcENYMkY1UkY5VjFRclFy?=
 =?utf-8?B?L2J0MG5yWGtHVlRCS2pzTzNJcHkxREtLRGhLTTdZbzFqS3hWRVJwZ3gveGkr?=
 =?utf-8?B?aU1LNkc1UzZsWm1jYmFqOTVEanpHYXNNUWtnMHdJSTMwRTRDM0t3b3JlMktL?=
 =?utf-8?B?b1JZaDIyMFNYZjB1T3F5QnhTSnROL0dzTGlTRm5NYllPZEYzVmpoekF1bzhU?=
 =?utf-8?B?REp0MUZVY0VVMDFXNlRoV3d4VTFxUEY3eUw2bVRlaC93WFdOaFRFU0tFNlRK?=
 =?utf-8?B?ZTlqck9CTGs0aGpVYUxQcHBhMkVaUXMvOHZlT213Nmx4TTZiTG5zZVRHRDZx?=
 =?utf-8?B?eVE4dHZ1WU0xSVFRSklHR09TVXZFVTh3Z2VBUTRDTHl3ZnZ3Z2tZZ3BhQWZn?=
 =?utf-8?B?bkwyL0Z1NmdDUVE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f815e30-9ba0-4209-fa68-08db73328852
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 15:08:27.6971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuzlyT05lodn1WOVMWV+dMdBpqt+LGBjGRlL73KgkEszzoGqRJCYgth6KxtRgs5q+fFwmHm3YVHuHdYPVwsDp8P7mE/1zyeL+BYzx4oxGAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB6000
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-22_10,2023-06-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306220128
X-Proofpoint-GUID: rWUvf-_m1b5NXGvUppuHgWjBxkikiSPm
X-Proofpoint-ORIG-GUID: rWUvf-_m1b5NXGvUppuHgWjBxkikiSPm
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/20/23 10:53PM, Immad Mir wrote: > > > Hi. May I please
 request a review on this patch. Sorry for the delay. See below. 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qCLvO-00Bafc-23
X-Mailman-Approved-At: Fri, 23 Jun 2023 01:15:16 +0000
Subject: Re: [Jfs-discussion] [PATCH] FS: JFS: Fix null-ptr-deref Read in
 txBegin
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
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com"
 <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 Immad Mir <mirimmad17@gmail.com>
Content-Type: multipart/mixed; boundary="===============4265444472146781201=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============4265444472146781201==
Content-Type: multipart/alternative;
 boundary="------------Q7JO5iczxGwRxkXujd0qUZqz"
Content-Language: en-US

--------------Q7JO5iczxGwRxkXujd0qUZqz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/20/23 10:53PM, Immad Mir wrote:

>
>
> Hi. May I please request a review on this patch.

Sorry for the delay. See below.

>
> Thanks,
> Immad
>
> ------------------------------------------------------------------------
> *From:* mirimmad@outlook.com <mirimmad@outlook.com>
> *Sent:* Sunday, March 26, 2023 9:51:15 PM
> *Cc:* mirimmad@outlook.com <mirimmad@outlook.com>; 
> skhan@linuxfoundation.org <skhan@linuxfoundation.org>; Immad Mir 
> <mirimmad17@gmail.com>; 
> syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com 
> <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>; Dave Kleikamp 
> <shaggy@kernel.org>; jfs-discussion@lists.sourceforge.net 
> <jfs-discussion@lists.sourceforge.net>; linux-kernel@vger.kernel.org 
> <linux-kernel@vger.kernel.org>
> *Subject:* [PATCH] FS: JFS: Fix null-ptr-deref Read in txBegin
>
> From: Immad Mir <mirimmad17@gmail.com>
>
> syzkaller reported the following issue:
>
> BUG: KASAN: null-ptr-deref in instrument_atomic_read 
> include/linux/instrumented.h:72 [inline]
> BUG: KASAN: null-ptr-deref in _test_bit 
> include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
> BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
> Read of size 8 at addr 0000000000000040 by task syz-executor.0/5098
>
> CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted 
> 6.3.0-rc3-syzkaller-00005-g7d31677bb7b1 #0
> Hardware name: Google Compute Engine/Google Compute Engine, BIOS 
> Google 03/02/2023
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>  print_report+0xe6/0x540 mm/kasan/report.c:433
>  kasan_report+0x176/0x1b0 mm/kasan/report.c:536
>  kasan_check_range+0x283/0x290 mm/kasan/generic.c:187
>  instrument_atomic_read include/linux/instrumented.h:72 [inline]
>  _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 
> [inline]
>  txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
>  jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802
>  vfs_link+0x4ed/0x680 fs/namei.c:4522
>  do_linkat+0x5cc/0x9e0 fs/namei.c:4593
>  __do_sys_linkat fs/namei.c:4621 [inline]
>  __se_sys_linkat fs/namei.c:4618 [inline]
>  __x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>
> The issue can be resolved by checking whethere "log"
> for a given superblock exists in the jfs_link function
> before beginning a transaction.

I'm not sure how we got here. log should only be null if the file system 
is mounted read-only. Does this test case attempt to remount a read-only 
file system as read-write? I see a potential bug there.

>
> Tested with syzbot.
> Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
> Link: 
> https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3
>
> Signed-off-by: Immad Mir <mirimmad17@gmail.com>
> ---
>  fs/jfs/namei.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> index b29d68b5e..cd43b68e2 100644
> --- a/fs/jfs/namei.c
> +++ b/fs/jfs/namei.c
> @@ -799,6 +799,8 @@ static int jfs_link(struct dentry *old_dentry,
>          if (rc)
>                  goto out;
>
> +       if (!(JFS_SBI(ip->i_sb)->log))
> +               goto out;

Should be setting rc to an error here. I suggest -EROFS, but anything is 
better than returning zero. Calling jfs_error() might also be in order, 
as that would explicitly mark the file system to read-only. (The default 
behavior at least.)

>          tid = txBegin(ip->i_sb, 0);
It'd be nice if we could move the check to txBegin(), but it is assumed 
to always succeed, so there's no good error recovery there without 
changing all of the callers. Maybe we can call jfs_error() there in case 
we get there from another syscall.
>
> mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
> --
> 2.40.0
>
>
--------------Q7JO5iczxGwRxkXujd0qUZqz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>On 6/20/23 10:53PM, Immad Mir wrote:<br>
    </p>
    <blockquote type="cite" cite="mid:CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com">
      
      <div style=""><br>
      </div>
      <div dir="auto">
        <div><br>
        </div>
      </div>
      <div id="ms-outlook-mobile-signature" dir="auto">Hi. May I please
        request a review on this patch.<br>
      </div>
    </blockquote>
    <p>Sorry for the delay. See below.<br>
    </p>
    <blockquote type="cite" cite="mid:CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com">
      <div id="ms-outlook-mobile-signature" dir="auto">
      </div>
      <div id="ms-outlook-mobile-signature" dir="auto"><br>
      </div>
      <div id="ms-outlook-mobile-signature" dir="auto">Thanks,</div>
      <div id="ms-outlook-mobile-signature" dir="auto">Immad</div>
      <div dir="auto">
        <div id="mail-editor-reference-message-container" dir="auto"><br>
          <hr style="display:inline-block;width:98%" tabindex="-1">
          <div id="divRplyFwdMsg" style="font-size: 11pt;"><strong>From:</strong>
            <a class="moz-txt-link-abbreviated" href="mailto:mirimmad@outlook.com">mirimmad@outlook.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:mirimmad@outlook.com">&lt;mirimmad@outlook.com&gt;</a><br>
            <strong>Sent:</strong> Sunday, March 26, 2023 9:51:15 PM<br>
            <strong>Cc:</strong> <a class="moz-txt-link-abbreviated" href="mailto:mirimmad@outlook.com">mirimmad@outlook.com</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:mirimmad@outlook.com">&lt;mirimmad@outlook.com&gt;</a>; <a class="moz-txt-link-abbreviated" href="mailto:skhan@linuxfoundation.org">skhan@linuxfoundation.org</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:skhan@linuxfoundation.org">&lt;skhan@linuxfoundation.org&gt;</a>; Immad Mir
            <a class="moz-txt-link-rfc2396E" href="mailto:mirimmad17@gmail.com">&lt;mirimmad17@gmail.com&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com">syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com">&lt;syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com&gt;</a>;
            Dave Kleikamp <a class="moz-txt-link-rfc2396E" href="mailto:shaggy@kernel.org">&lt;shaggy@kernel.org&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:jfs-discussion@lists.sourceforge.net">jfs-discussion@lists.sourceforge.net</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:jfs-discussion@lists.sourceforge.net">&lt;jfs-discussion@lists.sourceforge.net&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:linux-kernel@vger.kernel.org">&lt;linux-kernel@vger.kernel.org&gt;</a><br>
            <strong>Subject:</strong> [PATCH] FS: JFS: Fix
            null-ptr-deref Read in txBegin<br>
          </div>
          <br>
          <meta name="Generator" content="Microsoft Exchange Server">
          <!-- converted from text --><font size="2"><span style="font-size:11pt;">
              <div class="PlainText">From: Immad Mir
                <a class="moz-txt-link-rfc2396E" href="mailto:mirimmad17@gmail.com">&lt;mirimmad17@gmail.com&gt;</a><br>
                <br>
                syzkaller reported the following issue:<br>
                <br>
                BUG: KASAN: null-ptr-deref in instrument_atomic_read
                include/linux/instrumented.h:72 [inline]<br>
                BUG: KASAN: null-ptr-deref in _test_bit
                include/asm-generic/bitops/instrumented-non-atomic.h:141
                [inline]<br>
                BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0
                fs/jfs/jfs_txnmgr.c:366<br>
                Read of size 8 at addr 0000000000000040 by task
                syz-executor.0/5098<br>
                <br>
                CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted
                6.3.0-rc3-syzkaller-00005-g7d31677bb7b1 #0<br>
                Hardware name: Google Compute Engine/Google Compute
                Engine, BIOS Google 03/02/2023<br>
                Call Trace:<br>
                &nbsp;&lt;TASK&gt;<br>
                &nbsp;__dump_stack lib/dump_stack.c:88 [inline]<br>
                &nbsp;dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106<br>
                &nbsp;print_report+0xe6/0x540 mm/kasan/report.c:433<br>
                &nbsp;kasan_report+0x176/0x1b0 mm/kasan/report.c:536<br>
                &nbsp;kasan_check_range+0x283/0x290 mm/kasan/generic.c:187<br>
                &nbsp;instrument_atomic_read include/linux/instrumented.h:72
                [inline]<br>
                &nbsp;_test_bit
                include/asm-generic/bitops/instrumented-non-atomic.h:141
                [inline]<br>
                &nbsp;txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366<br>
                &nbsp;jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802<br>
                &nbsp;vfs_link+0x4ed/0x680 fs/namei.c:4522<br>
                &nbsp;do_linkat+0x5cc/0x9e0 fs/namei.c:4593<br>
                &nbsp;__do_sys_linkat fs/namei.c:4621 [inline]<br>
                &nbsp;__se_sys_linkat fs/namei.c:4618 [inline]<br>
                &nbsp;__x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618<br>
                &nbsp;do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br>
                &nbsp;do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80<br>
                &nbsp;entry_SYSCALL_64_after_hwframe+0x63/0xcd<br>
                <br>
                The issue can be resolved by checking whethere &quot;log&quot;<br>
                for a given superblock exists in the jfs_link function<br>
                before beginning a transaction.<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <p><font size="2">I'm not sure how we got here. log should only be
        null if the file system is mounted read-only. Does this test
        case attempt to remount a read-only file system as read-write? I
        see a potential bug there.</font><br>
    </p>
    <blockquote type="cite" cite="mid:CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com">
      <div dir="auto">
        <div id="mail-editor-reference-message-container" dir="auto"><font size="2"><span style="font-size:11pt;">
              <div class="PlainText">
                <br>
                Tested with syzbot.<br>
                Reported-by:
                <a class="moz-txt-link-abbreviated" href="mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com">syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com</a><br>
                Link: <a href="https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3" moz-do-not-send="true" class="moz-txt-link-freetext">
https://syzkaller.appspot.com/bug?id=be7e52c50c5182cc09a09ea6fc456446b2039de3</a><br>
                <br>
                Signed-off-by: Immad Mir <a class="moz-txt-link-rfc2396E" href="mailto:mirimmad17@gmail.com">&lt;mirimmad17@gmail.com&gt;</a><br>
                ---<br>
                &nbsp;fs/jfs/namei.c | 2 ++<br>
                &nbsp;1 file changed, 2 insertions(+)<br>
                <br>
                diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c<br>
                index b29d68b5e..cd43b68e2 100644<br>
                --- a/fs/jfs/namei.c<br>
                +++ b/fs/jfs/namei.c<br>
                @@ -799,6 +799,8 @@ static int jfs_link(struct dentry
                *old_dentry,<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (rc)<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
                <br>
                +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!(JFS_SBI(ip-&gt;i_sb)-&gt;log))<br>
                +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <p><font size="2">Should be setting rc to an error here. I suggest
        -EROFS, but anything is better than returning zero. Calling
        jfs_error() might also be in order, as that would explicitly
        mark the file system to read-only. (The default behavior at
        least.)</font><br>
    </p>
    <blockquote type="cite" cite="mid:CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com">
      <div dir="auto">
        <div id="mail-editor-reference-message-container" dir="auto"><font size="2"><span style="font-size:11pt;">
              <div class="PlainText">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tid = txBegin(ip-&gt;i_sb, 0);<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <font size="2">It'd be nice if we could move the check to txBegin(),
      but it is assumed to always succeed, so there's no good error
      recovery there without changing all of the callers. Maybe we can
      call jfs_error() there in case we get there from another syscall.</font><br>
    <blockquote type="cite" cite="mid:CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com">
      <div dir="auto">
        <div id="mail-editor-reference-message-container" dir="auto"><font size="2"><span style="font-size:11pt;">
              <div class="PlainText">
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                mutex_lock_nested(&amp;JFS_IP(dir)-&gt;commit_mutex,
                COMMIT_MUTEX_PARENT);<br>
                --<br>
                2.40.0<br>
                <br>
              </div>
            </span></font><br>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------Q7JO5iczxGwRxkXujd0qUZqz--


--===============4265444472146781201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4265444472146781201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============4265444472146781201==--

