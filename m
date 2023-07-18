Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DC875866C
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Jul 2023 23:04:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qLrrE-0007e2-Fk;
	Tue, 18 Jul 2023 21:03:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qLrqy-0007dj-QF
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 21:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NN8G0XwCRPtpwFuHCUVPBJcQ9zxa1UboDxvX4keZ6QI=; b=Fq/Vx3wp21WN8htK2wDIxxqT13
 ipcfycvZWv/CQ8x7tX291azEUZ7aIAUlxPcsPeHvPKv1I4yr2R9/0GcgMx4iARwXEVo3uLt3Dw+yu
 mYzPxcuOyQTL12SSdZms7q+P2eYq1OGMVxFJ0b7d4cxEnENV9w+Hsfawr4pn3N7GcB9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NN8G0XwCRPtpwFuHCUVPBJcQ9zxa1UboDxvX4keZ6QI=; b=eW6bFBmTkNhIY6nm3DjitFgmLR
 AKfbXaQFndrgzn3+DStgx2XvxoXiB/+1I0lKDYMlT+oD/kLvVW4dzdlTDnbjUxzFlEOGaeIr/u0th
 VlA6AX0Q7D7zH2Nur9IZPA9b81rNga9vsMoYQ/gb/5zBtwc19cbVagb0Y8B+8nrcWdcY=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qLrqq-0004tl-Ai for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Jul 2023 21:03:24 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 36IIDxD9018766; Tue, 18 Jul 2023 21:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=NN8G0XwCRPtpwFuHCUVPBJcQ9zxa1UboDxvX4keZ6QI=;
 b=FKq2ApWACfgt3bcuayqslyClIbjEPXSVtsK/OgkCOUcMLz4f4EGtDm1GpL4zTjMF65ni
 4lhUmEdfVvHx+qhWopCzgftJnGOGy7ykFDkZe92b2xv3FdA1dQtXv56idisyr7gzrmDK
 TrKbS9WfRfkZeTSIZg8DFC5fX6mo/DJbv4G0eNtYsJWzQ2I97fuL9mC8ECHOWuC6btfP
 R4uDPq3CdNsNQq/ktZkxOWHszpD14cn9dKXtGVjsizrL9Z6NYmMMCWYBRMOn8rkhHANo
 70lQlhKX7wegnKbsgEC49TRYeg4bKgOe2/cHJByCHEm7g354pLqyZYENY5cKBMkNERE1 Lw== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3run8a6635-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jul 2023 21:03:00 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 36IKb6Np019218; Tue, 18 Jul 2023 21:02:59 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3ruhw673d9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jul 2023 21:02:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WN9nE1+3rl037sqZ7+nkln1FGzCvf9k9qDTFOylECwFNnZEQO5WsO+RF+781t50pWRAOqzr+FVyQWbUT/NUo/py9u38dITx0AaRGe/9zFsB5l2OEnxffJcguk3MQq63/4ikP2fTI8pVn3ipfmLERliLQ7EjP7AKMVdIu8Ru24O0fAsLnf+SrLEqLCPaSde66Fw0vl684SXeihnCQkKAuUL+oWCFdkzcmidCJhRzcGkeVh14BbVHVge+ARhuFnfe2Sfx8JpJ0Ud27dbL7vfenv2s+p1hJ4s/AO0jkhS4rTSft/efpnZaKOvCi79sB0L8BAz6JLpawCpwP1QdNqLZ+QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NN8G0XwCRPtpwFuHCUVPBJcQ9zxa1UboDxvX4keZ6QI=;
 b=lGBCrWnn5Qnkste82mIYFrTiOL7KSN68P+vrBslWHAYpxxBGcT1+8HBgMSoEXbLUkXSq3zlXQZ/KVH1Se5zL6Ul8J72r593o8miErykUANtMKlQfxwnKpa5eQXbp0n6zVFDniK6narM+8b6rW69hYYxlgdXYfgU6ecl8XmPE2ophk56FiSd3ytXR/tIIRv+NHQb4NH/iLlCJCOfN+rqSi6Uk4Lf8cy00mpILZthAy8Z6Yrr3zNBg+c3CPoSF4GaEteNBIjzrog5msSFIRKeZhqjIbhqmFvHq2ufd2CHkTRkqJlnORRM99kqizg3T4XjafztDzs5k4hT4EhUjP3TKXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NN8G0XwCRPtpwFuHCUVPBJcQ9zxa1UboDxvX4keZ6QI=;
 b=c0cNPWnEohck9FvOWz7TVpksJ0r9AifSfQI1yHE20jw1+aWB0LqXxT/4YUQZbVQtSUivatIqjkoaYAc6wSfn6L7YjbUjrVBtq6MTkeap2btjQjpGKjUucPDlYR/Ge9WRcM0Ps0gLW9uoZFVJXbMkmZCwFugI6XrLKdCDgNul53g=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CY5PR10MB6023.namprd10.prod.outlook.com (2603:10b6:930:3d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 21:02:57 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1ad9:6eeb:6c8d:27d3]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1ad9:6eeb:6c8d:27d3%6]) with mapi id 15.20.6565.028; Tue, 18 Jul 2023
 21:02:57 +0000
Message-ID: <97a9c205-2074-07f8-ae9d-9f2b4aebbf9a@oracle.com>
Date: Tue, 18 Jul 2023 16:02:53 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 syzbot <syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com>
References: <0000000000002bfa570600c477b3@google.com>
 <CAHmME9reBny-ufJp58uOg+KdMptircBRhLFd-N2KwxNUp6myTA@mail.gmail.com>
In-Reply-To: <CAHmME9reBny-ufJp58uOg+KdMptircBRhLFd-N2KwxNUp6myTA@mail.gmail.com>
X-ClientProxiedBy: CH0PR03CA0276.namprd03.prod.outlook.com
 (2603:10b6:610:e6::11) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CY5PR10MB6023:EE_
X-MS-Office365-Filtering-Correlation-Id: 616da5ea-75aa-4739-8484-08db87d25c70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iuvy15HYKVdHINpbUUFneQIVdRt9mjT05QYj5yhMTH0/PTI/0Sq3Ggk4b7Xuryym1uh4XdxusqghQT8I6fA2LlWInYUBOTHSOZCtihcAFVMVBsDqI4FmdZNDfRDs2s26D7HlceqGxK3W6/IPAfdozTsvRRhxbInsr/lECPy7+P8ejqzeK6CRrhFGt53pZ4FXada7s6Fy2smVOL89QouqxZ8UQSD8jpxzXq0qHO6hsVMadpF+BUFVZ9aioz9b4BbjZmoHaiDsQgGsnw+k6VTtI9PtZ/vrL+tGMx327dDa8GiereJmvXXCm2vvG7wrfHFNN8esRBMeBPvFWdMrYR6EpNR8Awj2M/wk+vH074U4FsD/jvWeO2qInZ8NVi5w2/lbKim48qGqSCsOPV2nFR/DUkJp5ac7N9W/QRFA6DVINgnfDdV16URVRuXTk08MhZ+UudJ3Cxbu1r/MjhAx8/5MNNsMRIbiGJWB4gifABj4bjLh6UfFUxBpwZSRFd3WshXnNaWq+p6x7JZlGyfS8L9eZQcZxMHWMW23oghjLLymIF/WnqKcodaXMzyllv5YTZjgmeFUATxgLqauiionLUwVtRLMB8H98q/hxZMbEqZJJByZDDOzH5tWZ7EUBQfQgElh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(366004)(376002)(39860400002)(451199021)(8936002)(8676002)(38100700002)(4744005)(2616005)(2906002)(31696002)(36756003)(5660300002)(6506007)(26005)(186003)(66476007)(86362001)(7416002)(66556008)(44832011)(66946007)(4326008)(110136005)(31686004)(6486002)(6666004)(41300700001)(478600001)(966005)(6512007)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVBVL2NNOS80ZUZYRW9qQ1MyTStGR0pOV0Y3MHhlakdtRUwvNkdDTVg0ZDhu?=
 =?utf-8?B?QVNCRDhKSCtKb1d6aWU4SDZsZHEwcVF2NTNJcGFSZlA4bmJ5Qkc5SkM0TVhE?=
 =?utf-8?B?K0UrT2RLOTNnVnNvNkh5cGZYUlphaFJveVhqL0dVWjFKYnhTc3dGd1ZTQ2Rm?=
 =?utf-8?B?enFhc24rYWhRclVEZTVWZ3JTNzJFUEx5QTkzK1g4bzFTR1VwdjFBb1lxUm5j?=
 =?utf-8?B?dlVQWUVrdVU5VE1ZWHlTNVQvSHJHTGpQRnV1cXVBWTA0UlFwYUxBK3IxTmI1?=
 =?utf-8?B?UGwzYjBlUWc3bitQZGFOL2hieHNuY0hoVnVwVGZoNFJ6K3VpREk1R3hFYzlO?=
 =?utf-8?B?TnprN1dmaElkcTFkMnVaenZPVHA4Z0EweURoUXdkamUxRFRYWUpjdEZuR0hp?=
 =?utf-8?B?RW9EWmRwN3YyeFdPMS8rL09ZdVczT21uVW5qSWl2bUFGZWRlbkFPRXFSbThY?=
 =?utf-8?B?WnJmbGNjM1B2YlNVa09sbTIyT0Z0Q0ZtZk9yVDhLR3NjcXhyaUtpaStZWXJy?=
 =?utf-8?B?SUNVS2JBRnBrRlpXV3NRTS9vRklsRVJpSjVVcGRISTdPRWwyL25WengyYld5?=
 =?utf-8?B?bWdpTkJ5a2lhT3RqZGVLU01kRnlkbk9kNEFPbWNKMWdnYU8vRDQ2VjlKcG15?=
 =?utf-8?B?QUcvdW9rcFlhaVRLRWRpcVd5NFdQVmxFTVB3MldiNnRKMDNlaUMySHpScVlQ?=
 =?utf-8?B?cjJoN1FOS3l3SVFDeFc0eHhyZTF0QTNIdytZSjFOdjV4TEs5YmswdXR3OGJY?=
 =?utf-8?B?cmhqWEdvN3c0a2s5K0dBT2N4Y3E5VTJOVVRydjZxWXZwVjlKNTVNTXRDcmdj?=
 =?utf-8?B?c1ZBL1BwZGE2WERyeS9jQkNiZlVXUDZMVXpUdlJNYWQ2RHBhYWc5Z3RJOFAw?=
 =?utf-8?B?YVBjM3J3a2RoYzlYUTVFVWcxZUZWWVdFTDVYVVEyWGR2YmdCcDhUR1JrOGtj?=
 =?utf-8?B?MHptMDhrNWhYRktDUElNOG5wRFFpUUp4STJSb1ZlVGxtNHU3WTFVZmR6Y0kw?=
 =?utf-8?B?eVA5enE0N0J5YytwaWpzTW4ybmlta2RRMWJXaWVtNlhQZTlHVTBYWWZ1T3Qz?=
 =?utf-8?B?MldzTkd3dU51c0pJNGMwWXhNZGJpQVRoazBlbUV5MWtWb3hENk9KT1ltZmc5?=
 =?utf-8?B?dW1tcFBZSjJVZGZCanNPVmJkd1RmWXhZbVEvSHdUcTdKMlRMR0daZzNtRktR?=
 =?utf-8?B?VkVzVnRuZnIzSTJNU2hBVmV6NmVWa0t0dE8wbGp3UytrOFZpL1k5RGpTYUVa?=
 =?utf-8?B?Y25hT0VlNzlNdnp4eE8xQ3Erb3R1b0R2N3JtMmdKN1VzdkZXdHNzL3dyTkYw?=
 =?utf-8?B?SS9vTnBBdUlvdjNjc3ZQczBYU0FnTEpmbWd3NVZBU3psV0xLNC90RmhRa3dP?=
 =?utf-8?B?SW9HVUhmdHRYVDc3M1QvcWFxcTg0aUIxUlFXbElVNFgvTXRvRUxrTkhLTzU2?=
 =?utf-8?B?dFFtOTlBd0tNNHIxR2l6S3NmUldHL0ZGeEZNNkNJYjhteERWRThNR3dWQll3?=
 =?utf-8?B?VnM1M1VESXB5RmNmaWJCZmxSNG9oQ2p6emdnLzU2RXhVNFVVb0ZyaS80RnFJ?=
 =?utf-8?B?cFJPVXYySUhzblRFTlppSW5kMzRWNXExdExoaDgzdTVDYXh5UWJlbzhUTTNT?=
 =?utf-8?B?VW45N2ZRczd2bHB1dDkyeWxhWTJlYmFFZFRBb0Q3UFNwaDZqNndCTGhYcHFD?=
 =?utf-8?B?Zmx5SUNDZDYrWVFMdkNSREJ4RmdWNHlvT3lmeXJ5dUxDaW1odmdVMlRwbDRV?=
 =?utf-8?B?K2NoTVNUTjZHWGZjVTRZV0p1M3VqS20yNWllVUhZWVFuQmdtQk9JZzRvNmts?=
 =?utf-8?B?NEhMM0NzS0JpeHFwb1RGdmptaDVlWGZIbG40am9zS01tVGRIUlgvUm9XQXVk?=
 =?utf-8?B?YkgwOGdUQ1FvdkZ0Q2ZRSGNpRkFOOHErSFhLWjl1R2lBZ1BycHdKYnVoaDhX?=
 =?utf-8?B?YzBJYWdka1RtVDQwcTlsVnVLSDNGQUYvVStEOXR5UUxZdXkyT1JJVTZ4RGJq?=
 =?utf-8?B?QWVybnNvUmJiekVrQlBtQUZsY2RmRU5qQ3l6MTRVT3MxWklTSmRqdTM1cmI2?=
 =?utf-8?B?b1k4NWRyWWVXQ2tNdlpUanlXcWovUVJjMVJpd1BpNGhER2dXVFlPRVNqVlVt?=
 =?utf-8?B?ZFhCQ0FMYk5tYUpTbzVFK21QOS9acFU4dzBUZlhtQ2F3RmpFQWUweVJOWmpO?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?SGgwNDY3SEtGMm84aWoybmhvWEZLeGFoL0lSb0tIS2tlRDc3NmtETFBIWGdw?=
 =?utf-8?B?aDZHSy9JeTAwWmFNandTdCtmeFp6QTVuQ2lrLysycjRqT1ZMam04bC9VSE1C?=
 =?utf-8?B?b1BZWHNTTTU1NzhOMlE5RmxXbXcxNEF6WHZSMGp5ei8xYTZwRkFPZ0NqcDQw?=
 =?utf-8?B?WGxCODRibkZIVlVmd3BKNzYxanNEODE4ZUlEbHlseWN3Q2tKYTcwYStmVHQ5?=
 =?utf-8?B?NWF1NXN5UDdWZ25vbGtvQmxzWEhUQkdrUEJ1SDJGUjlaNGNBUnVRNkVVMk9o?=
 =?utf-8?B?czA4VmFsbW5SeGg3Wms0L1NvWDZKbVB1dC9scEVRU3JZMVBXZGJSNVVUTWRn?=
 =?utf-8?B?KzNCTGplQTd4dW43VldobGVWWTdSVzdNTTJ3aFdyNXYwTFB5NkE5b0NVNU94?=
 =?utf-8?B?Zy90d013Tmg1aTd4dmlHeCtqTkNhY1VBVGZtWHRNRGJvcDNGTXJ0SC9NaXNt?=
 =?utf-8?B?a0o1Zlp3eGZFVTJsZFg3cE04bWMvbUNMc0ZMdFJBK3NnVkpvNTJGSE8xS1Ro?=
 =?utf-8?B?TFRlNUx3bzVxM0E1K0s4TjhEUzUwZUtEK2YrbXdKU1BXbldnd3RmaWkxKzFn?=
 =?utf-8?B?Yk9pOWMxaVZJTzRFQ1Azc1BlS2hnVXBVZFRZdGxXRnRtL1E0aFRJQmhLOXVV?=
 =?utf-8?B?MjFpTmlLUWJDdGVobGUydEZqV0VIWnFZa3M1Titld2ZkczZLUlFoRmprOW1r?=
 =?utf-8?B?YnNtRS94d21uWDROV2cxOEtUWTFHNDRsZUNCMytuMEFBMDExUnVCWGhzNGdM?=
 =?utf-8?B?VGdVeHFaR2NXRmpaZTBoZ3N6cFliZHg4S1hMMkIxWW01bFhDMlpVc2dRMmhH?=
 =?utf-8?B?Rm1WN3NYVzRhS2ZKNWJVcnNSK0JzWndYcnFidVVjMmMxWnBPZkRWalA0dkhp?=
 =?utf-8?B?UnJCRG1OL2FodWhwYmxXbHhDVUdWSFRBY0NNU2p1QXhqYUJZYTF3MHZxM2h4?=
 =?utf-8?B?bnVEdnZuNEUzREFndGdSUGlxWDNMakFnOW5mREVTdVNZUkVZWk9TY3JVSVZU?=
 =?utf-8?B?VFg4aDcvS1YzM3c0MjVEZFlyTHZqQWNDWUlNOFNveWFBWlhOMExCTGpZY2hL?=
 =?utf-8?B?OS8reUIxNElvelJONnhhVldWNkdrWlg1U3R0R042VlRYRE5paUlmeDRoaGli?=
 =?utf-8?B?ZzZCVlhJeTVSVjVuOEcycEFvMmhWbDY4SzBWcDk3K21qekUzc1pmL3ZrMnFV?=
 =?utf-8?B?bEUxUkVOaU9HYVlCRG1VdVNhZnp6UmhYZWNzVVdvMFdjUm1BVTd2WDNBTGtL?=
 =?utf-8?B?RFVaQjFPR3c2eTVoRlBiNXJ4VHhpaFlWTjhkTmFGKzJ2VDZ5OGpYTXhNU2tw?=
 =?utf-8?B?Zm1nUmRoRGRheTVuT3I1VCtPQVNmb0NWMUsrK3VkNnlMU3grdWMwSXFmUlor?=
 =?utf-8?B?eHNhKzZTSHpOZElDSnpFMHdiTGI3YnozbmM2YnpOQzdjL2t4WXpoR3ZQUEVP?=
 =?utf-8?B?TDFSb3l1RGpna3hrZHVkQUh6bkh0RG5KQVB1OWtPcmhwakF3ZmtibmRNS044?=
 =?utf-8?B?Y2J6empqWUo2Qm41eGd5Uno2djJFVzIvd2ZnZlE2VU1hN2xyVTFKZ2RtSUZr?=
 =?utf-8?Q?EX16Je5HnUaJEQfYtCs7XOgFbUoBJ/JmunJxMoOqGO0mir?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 616da5ea-75aa-4739-8484-08db87d25c70
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 21:02:57.0139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L9moOzAZxsJloIrlV+mNwsN3cv3yjiWiSM4Xoy2uJuLBTLPxzxIQjl8po3Tv9fIX1TOQNDaAPPgf2klW55vp6K4HHi9VyLoL4Ma43wLxBpg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6023
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-18_16,2023-07-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxscore=0 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 mlxlogscore=791 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307180191
X-Proofpoint-ORIG-GUID: gFF5ggmlqHNSLPIiVkGA2s5JRgvM-6mH
X-Proofpoint-GUID: gFF5ggmlqHNSLPIiVkGA2s5JRgvM-6mH
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/18/23 12:57PM, Jason A. Donenfeld wrote: > Freed in:
 > > diUnmount+0xf3/0x100 fs/jfs/jfs_imap.c:195 > jfs_umount+0x186/0x3a0
 fs/jfs/jfs_umount.c:63
 > jfs_put_super+0x8a/0x190 fs/jfs/super.c:194 > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qLrqq-0004tl-Ai
Subject: Re: [Jfs-discussion] [syzbot] [wireguard?] [jfs?] KASAN:
 slab-use-after-free Read in wg_noise_keypair_get
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
Cc: jfs-discussion@lists.sourceforge.net, kuninori.morimoto.gx@renesas.com,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, povik+lin@cutebit.org, edumazet@google.com,
 broonie@kernel.org, linux-fsdevel@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, wireguard@lists.zx2c4.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/18/23 12:57PM, Jason A. Donenfeld wrote:
> Freed in:
> 
>   diUnmount+0xf3/0x100 fs/jfs/jfs_imap.c:195
>   jfs_umount+0x186/0x3a0 fs/jfs/jfs_umount.c:63
>   jfs_put_super+0x8a/0x190 fs/jfs/super.c:194
> 
> So maybe not a wg issue?

Maybe not. It could possibly fixed by:
https://github.com/kleikamp/linux-shaggy/commit/6e2bda2c192d0244b5a78b787ef20aa10cb319b7

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
