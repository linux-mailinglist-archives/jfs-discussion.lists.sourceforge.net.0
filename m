Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 599287B74C9
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 01:23:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnoj7-0007Ip-3G;
	Tue, 03 Oct 2023 23:22:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qnoj5-0007Ij-Ux
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 23:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X8UeJfPlGgEooasWfuAYGIj/2KRAUGdoAy1aMkgSjnQ=; b=mgHPTvDmRkWZudlGaDsuNv2I7o
 Cq6qKl2T1cgdSQpwILCU0Dsqcm+nkpaAQ050KFYZ13qIVcGRF/h+ZtyVFLmvxNWCXQ5udZuL4sOES
 eSZZkTiHNi7o4Sys84KvT7cgcEZVkil96hZvw2JFgzyidurSj6nr2hYgPb1j0muR0RJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X8UeJfPlGgEooasWfuAYGIj/2KRAUGdoAy1aMkgSjnQ=; b=exu88ggDjiuChmywhI6x5/AuqI
 HOJtQw81c8S2QMFXFE4RRKzSrGNpzPJV8sfP/sG22EZ85hmblQpBW4qax7vWDOy+czvwVk9aiWD8R
 kLvERQAnb29NAHfK1oA1osCjJ8UoreMdFvM9YTO5blLQguR7TRHIB/fqpVeCqMGcytbY=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnoj0-0001OY-M8 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Oct 2023 23:22:52 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 393I4N55004021; Tue, 3 Oct 2023 23:22:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=X8UeJfPlGgEooasWfuAYGIj/2KRAUGdoAy1aMkgSjnQ=;
 b=SBUAz5YiZ+Twxk/4j09V7gjidX60sP1e6suNzCHHiSgD7gQCajWVU0au7dLClvJWJpRk
 BwpuccqRbifmihY/oVj4Om6JrxzSNmo2fAWokMOI+o716VSf006ywr55u3QcawTP3HvX
 PA1c66zDrMMACR8wHEOjvmrBID0Zw91yD/fWCf31/ATcjfZ0oUw6uCUUpDmXPcPg6+4P
 V64G1nbx5SRvc4N51W3aKvx5u84QEVZwF7HlowRBW9my5ZtdLVY7xeoCG25AXvx0QXbN
 UehiCZbDJt0TFq032diEP+lW6XL18Fa3iEquI1y4WPNkdxbDtdYi0K6PaY1NWSuGyjSa Pw== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3teb9udw9h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 23:22:34 +0000
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 393M0wur025724; Tue, 3 Oct 2023 23:22:33 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2109.outbound.protection.outlook.com [104.47.58.109])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3tea4d5sm5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Oct 2023 23:22:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wn7EZDH1Oo0pyhnyOnA6tMDlY5QUEBl4NwfGj5s7kNg+kBHgi33E/ZHabL7ODLmXNBYYxwe5mjVB/WDbvyRO+BmKxFCzFjw9iVbYr9Zxp3qKYw8aAxOaHFry1fmxmKpkDkz0GFvNfOF37QkDRIk1uUvTc73vHxwq0whssjP+47eDfdxAHUAGp/pNEO5/3Cr4M17XDwxj1wZjWz2PVzAZ0Ex7LXnk8ASIZEeSVSJbw1S0i2cVAjHJGs4GOIx+lNASMsZQItFVzjFdtiGOj3YCJMZL4GdVWZyFVzp2kMI/LjJVMei4xOH3eQiAyaUCff7Sa4dGlCDzERGsFOB324DsGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8UeJfPlGgEooasWfuAYGIj/2KRAUGdoAy1aMkgSjnQ=;
 b=CzlA8K0lnQjo8/5V8LIiWOrqFyQlUjxXC4R29CeM/BoGZ/lAWfo+Q+euqqDQdoMlJqoWuH8gKhj5efo40WnwC2PwdSKW7A3MJdHTxkFa274ENnzM1ftrYik/YNm1C1EE+tudXtokjBKRyZNN+lMpNHVvpCLBqxu8m3ZNM/72Nbv0QeA2B4PKL/+D2RzzlkeSfCkZN+cqUMhcctHdqhXBO0WWBUSVIcpcoYiVu0Yu6j5RxIsiRH16ghxMAgiYQ6HpAAt5tD3fadgPjOTPxyV81qDiFewoSdA9jfif0sB0q0AJ151kqo9y8pveUgnryIZlVbZkoh56c0wKqjxyHyHf/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8UeJfPlGgEooasWfuAYGIj/2KRAUGdoAy1aMkgSjnQ=;
 b=QIk9lcO4UrcKZ8H5VLfMRnRjihB61W/hRDqUsAWo4dJkTjkRgixegHXcJPyRQ5n34IPpJVmGbuBeCYfxEAgt1HQvRHZ7E0lkOwys9sbFNUQrP/DI7ryhEcqhR7Zj1aln1c8jFZlBqHl2nsDYBdq9xwDD5x32pHp1KlyHG65959g=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM6PR10MB4396.namprd10.prod.outlook.com (2603:10b6:5:21e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Tue, 3 Oct
 2023 23:22:32 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6792.024; Tue, 3 Oct 2023
 23:22:31 +0000
Message-ID: <727579ab-94d5-49d5-aee0-23e69b9472ad@oracle.com>
Date: Tue, 3 Oct 2023 18:22:28 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>, shaggy@kernel.org
References: <20230926071312.14086-1-ghandatmanas@gmail.com>
In-Reply-To: <20230926071312.14086-1-ghandatmanas@gmail.com>
X-ClientProxiedBy: CH0PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:610:e5::19) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM6PR10MB4396:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b979484-26fb-40a2-845d-08dbc4679e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n/oz2Z0upipP5fJjP/1uYi0fqYg40Fn+Gyyy76jCpktcCZHk1ZYLTk95HUdyllR3ptQiFhtSTkoQ01iVH84QgVmPEgNJwnnjxKO2wZe//OhYPiCWR0gVcDGuOC6+0vVpYRHbnpfRtoqAYn4vjTPbWaq0Fy4hYFKLbay52a+v4jsUnSmmYpQUKTGRLnqe8olPTz1BGJXOYXmloZH5+60Vpj51mK+qpLuAMPokMA1aBoDulVOv0r/ENrJxKnqOPDad61bh3El5/zY8DQgeH783jFYbWnYAvQKoQdRUs5bKKrM1jJ1TDP1zuJNQ0SSCc1TvFm2ZoEq5vybJdgsC0KxIVN6uB8y/E89vVVZbb+Nrpy635zylW1WqNnvhEX+joI1o/rIEAM6EfDaT529CtYiKBAWnqPnTbX6FDAPW3inyhS4oRnjAg2mVKS9ugC6g8w+XvCtF93hvh30MKOBbZUB7MVAx47vM6d6oxs35vPhPDmTpEOLAjbnytz/kMCv63e1siJbPo8m8oGpN03zKMRrlwJB5Xbz3JlRPidqY6HjMzYa7/cCle7jKgpicSbJgj+z9X1WBniNkS1FsPaonKEH6Pa9ntpdFsUeoFdq8kAVHTZOzQL0Um7yiku9UltuXy3iMkorZ7C3TaEfAn/OggJa8aA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(136003)(376002)(396003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(2616005)(26005)(5660300002)(6666004)(8676002)(4326008)(8936002)(86362001)(31686004)(478600001)(31696002)(6486002)(66556008)(38100700002)(66946007)(66476007)(316002)(36756003)(2906002)(6512007)(4744005)(83380400001)(6506007)(41300700001)(44832011)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2RkSU5sSXp5RW85dlR1cHh5ck9FR3d6TFBtMUVZMWNjOHJkZFI2bEorc1h0?=
 =?utf-8?B?alhtaEpyMmQ2UVIwRHN2SGw2Mk11VTRPbXZjcTdsMGJHbWdqV0lhYjcva0RG?=
 =?utf-8?B?c0xkNmdZdzBwRjRQS3lxYitQKzBhZWRpcXFWemZ1RmwyS21rcU95aDc4Wnhs?=
 =?utf-8?B?T1pXYWlFQ09JWWRwTGJ0WVJLa0RyNlRsdnJoT0tIOG92ZnlpbDBRWC9ZYTB5?=
 =?utf-8?B?L0NOdXBhdzcxaVJDWm5reWhsN0Z3L2xkZzRzT29xZ05ZZXBsaDFFbXJGdWRC?=
 =?utf-8?B?cWVqN3BVSlhLNExhQWJES2tuQ2xPZFVBRkNJVnV5VWhKUVY4MUpDQzBVd0VS?=
 =?utf-8?B?dWt3RWRRQmJxSWJuQ1d2OWJya1JKOFc0QnBwYlArRHJlTzVhQ3czUlZCYm5m?=
 =?utf-8?B?d3NRckMxREhib1k0NDBXMWZKNmxqc0tzY3NIdkNiWlBJQXRkNTVxeHhyZnY1?=
 =?utf-8?B?Y1pKSU9Pclhwd0gySzJPeXdSTm16MEhkbTVqQzhCVFcvbEdrMnhQS1NVUEZI?=
 =?utf-8?B?cVluWmxaTUZkaTNWTm5IS1lYS21nV3J0TWszZm02MWxvQ3pvTGNLcDJOcHg4?=
 =?utf-8?B?dklseWlkbENpYksrZTBRTklyWFBkRUFzZUlUdStUa3ZlcE9RN1REb2tGSFBv?=
 =?utf-8?B?TGM5cS9NNHkrRmN3SUlUOXVjdnVuMHE0SHVoUDlWRTYzUlNIbXF4a0gvRjN5?=
 =?utf-8?B?bGNYOXZmWFBCazdKbmh3ckNvVSsvT0w1T1N4bGE1Vm40dG1LeFRaMmZ2VW0w?=
 =?utf-8?B?dkpwZzhJdkRlWENNa1BlRHFBTHFwOTlqdEpTZjlnQ3RNNkFQMUQ0eHR5S1BH?=
 =?utf-8?B?VjZpbjBIRDN1ZC9mdkVSV1ZERlQwbDYyVmdoajlyN3hSKzFubjF5QS9xeXJ0?=
 =?utf-8?B?UWRLMnJsSDRiZjZFR3dCSnFNeXpQMGxORzQxbTE0Y3Y0SXBGRFBLbWgzSlZ3?=
 =?utf-8?B?TncvbEFlS25wai9obDRwVHo5aTRLQzJocjJ4L2t0UGF4LzRNZk1QUUp0UlQy?=
 =?utf-8?B?dWw5NENINXo0dkZML0VITjJ1Vjl1WUJrNUFlSFhWbC9kR2k2UjcwRHFkNWNG?=
 =?utf-8?B?Yko5MDB6YWxsV3Bnd2dNb2wyZG5LdWpna0VyRmpsZWQyNEtjS0JRN2FuODJJ?=
 =?utf-8?B?dDJjTktBdHAwZFNKeUNodlBYV1Y2MjZxVldLVk5EZE80b2UveE1URDNOV29x?=
 =?utf-8?B?OW5Sa3dHQ2piZlYxVEpKSWpVanFYc2QzbXB5OEgyYkVQSFZ6WklEUmRxMTFV?=
 =?utf-8?B?aTNsRW81UElhTmtYc1V6VnZNYitPeEludjR4emJJdmhKT2VJVGVySkNLb044?=
 =?utf-8?B?S0srUTV4UFdIblRkTnVtaVBWSGwwSXgrbFVZSUZSUEFDUkl1QXpyYkVLNmZu?=
 =?utf-8?B?aHhBKzQ1YjJPZVhISFh1V2FMVWpvS1ZFVVYwd0ZySXd2SE5ERnBYQi9wZHJq?=
 =?utf-8?B?QUNsUkkxZmdzOWhvQlA4czhsdkN0b0YvNW5Qc2lsSTNrUVhUOHZXVllRc05y?=
 =?utf-8?B?NVphbkI1SzBET1lsOFkzRzdQaWJ3R1BkUHVqWmxTdTR3MkgxKzFXTjBOdFlY?=
 =?utf-8?B?OWwwZ0ZNb0h2MzlBRjhoaXdNUmZqallUNUhYUGkzcEZ2SEJJOGx6eUJYNnNz?=
 =?utf-8?B?dThxVnpielVJb0NDV3gzMzdFaGJHd1doVHJ3djZIVVIzOEtpTWNaTUxKK2hi?=
 =?utf-8?B?cmg0WjcvM2pZZkF3UHZYU2hncXM2NzFqK3JjdVBkb2NYMDNGS1R1MWhjK3A5?=
 =?utf-8?B?ZDRWNzFXb2I2a2JmTlY5dFFlQkpWRnJwSmIyaHF4a0ZLdGZXaGVkSStQWG9t?=
 =?utf-8?B?amxma1A1WjFiWktPY2lWYWRuUldlVzVWVjQzVHhDeHdubmcyN1FVT2MzS0Jt?=
 =?utf-8?B?cFZVMVlyVDBrRG9uL1RTSWRZNjRIZVB3ZFF5TTNTUlZSbGozQ3VKeHd2VzFU?=
 =?utf-8?B?Wkd0azcwOTZBM0RrdTFPbHNmTVprTXh6TWZlYWJSTSt2eHF0eW5UZkZqZXZ2?=
 =?utf-8?B?QlRxQjNFc1NkVlRNK2djTDZmaklJbEMrWS8rcGgrNFdOMmF4ZHp5b2hGVWNP?=
 =?utf-8?B?Ym9iZnJtcFc4bURXVFhzMlIwWE5QaWVhT01LbEFVN2JoUTJRREIrMVpuanRa?=
 =?utf-8?B?WkN1SEJMZlFnMHhPSmI5RGZNYUlHRnQzWFphOWFza0doQmc1TGVtK1dzRmtO?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?UjFWTEtPa1BRRkY0ZzVmK2ovdHMrNnh5K3NSR2hpOEd0Z0hvVUhWY0pwaW0y?=
 =?utf-8?B?QW9oUlgrU1p3cXpRTnlVMzdQbmFZUmErcjhQelRBWllJU3RIYTFERmxPa0ZE?=
 =?utf-8?B?N2tScGxhdFN2RklLNVVKOXJoa3g5QnNVOFlxSGM2OFlvTE5TTXFQZXVFTkM0?=
 =?utf-8?B?V29VMnZENG5heXJsUDZKSTV6N0hJQllFaHNVSTRidUFvWkxNWWVLbTNNOWVu?=
 =?utf-8?B?RmN6RWN5Q1dvUFVZdUhCMmpxT1AwUUxWRkZBSnlqNVJDQ3FQcVN5THJNcWs3?=
 =?utf-8?B?UlRCUVlmMmdLT1pYNEFzNnBmclZUdVdFcUpwbCtaOTZ3UWhHdHM1QnFrTmN0?=
 =?utf-8?B?WUx2ako5eERTR1cyaUZvcUNHbTZMSjlla1U2VHphRUtRSXFSUlpKRzh5aThQ?=
 =?utf-8?B?cDdKOTUwdXhQM01JcTlvUjFBWTQ2RFNKQXlZamdJdE5LempWL0tmNkpsUkNz?=
 =?utf-8?B?SnpqdlBNajJOWVQ4YVFoampsZlRySDZScUgxTWtleU5UVWFxQkcwS2p3WEx6?=
 =?utf-8?B?cG5BejBMWmVmcnVPVFZ3T3B3MkJWMkJxYUZTM2NUZTEycisvT1NYZytpWnRy?=
 =?utf-8?B?VFdhTVF1TEM0NFNKejJZSjI1a3ErN0Z6VzNOU2RDMkxwanVodDhGNmtiV2pn?=
 =?utf-8?B?V08yYVJnc05ET1JTdi9zTWpDR3pvMXBnWThGM0hwTTBPUGMwQ1puMUVYSWhM?=
 =?utf-8?B?UW93VThhT25sVERhem9QK05vNW5PWTk5ckNLQ05GVjdsYlBEK1J6OGRKNVVq?=
 =?utf-8?B?Y2Q2SGR5MTl2MW50MjY5SlV1dWxUSjRFc1NYWnlrd0dXUUpxeDM0TWtaYVZR?=
 =?utf-8?B?dHAwVjc5K2Z0T0E4SUdUaisvaklMSHdMWjladUZRbVFXYXh2QlVYREVIZkVz?=
 =?utf-8?B?UlpLbTFOZ2g0UXlwN29BaWVoejVwZWFwdUQwdG9uczN3ajlreVpmZFBWSkw1?=
 =?utf-8?B?cUxDN0svcWJpcHZvZXhCQkNBaHBYUFpBbG16VmVCYkxHbmdBSUFMSUhBd3oy?=
 =?utf-8?B?SXBrcnEwVHZUa1R4QlE2L0RRcUc0dWFPOHZNUlVsaDFtSmtIQmhhN0pEVmhC?=
 =?utf-8?B?MVJBUFF1emNhZXRlaFFhQXVWWjFqbHdFNHNXS2hyU0MzbjJwQUVwU3ZPakJ0?=
 =?utf-8?B?dTBXcGdjWHFDTlVoR0ordGxEMEpCdExGNTFZWWlNQkxxcVZ5TnFUMjcrZkNR?=
 =?utf-8?B?M2k5Z00xNWVYTTZQdW9xT3c3WmpSamV4V2pYRFlFamN4TFVCSms1SFBpOGhB?=
 =?utf-8?Q?oWlpokuZ21SHf8A?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b979484-26fb-40a2-845d-08dbc4679e18
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 23:22:31.8331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NDNSstA7xBG0hiDE+fqVPgHzG3QTR7MkdjJnysrgyeFd3Dwnzmh1TZJVG14TPMNPgcI0OK9ytV00tJCLpvKc189sSm0IH0XP2hAWTsUj4Bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4396
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_18,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0 spamscore=0
 mlxscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030177
X-Proofpoint-ORIG-GUID: 8_-6KmTYhlgGfQdpAXu8Jx4FHTptc7kf
X-Proofpoint-GUID: 8_-6KmTYhlgGfQdpAXu8Jx4FHTptc7kf
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/26/23 2:13AM, Manas Ghandat wrote: > Currently there
 is not check against the agno of the iag while > allocating new inodes to
 avoid fragmentation problem. Added the check > which is required. Does this
 fix an observed problem? It seems reasonable and if we add this we may also
 want to make sure that agno doesn't exceed db_numag,
 (JFS_SBI(pip->i_sb)->bmap->db_numag) (yuck). 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qnoj0-0001OY-M8
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diAlloc
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
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 9/26/23 2:13AM, Manas Ghandat wrote:
> Currently there is not check against the agno of the iag while
> allocating new inodes to avoid fragmentation problem. Added the check
> which is required.

Does this fix an observed problem? It seems reasonable and if we add 
this we may also want to make sure that agno doesn't exceed db_numag,
(JFS_SBI(pip->i_sb)->bmap->db_numag) (yuck).

> 
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>   fs/jfs/jfs_imap.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 799d3837e7c2..ace8a1506380 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -1355,6 +1355,8 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
>   
>   	/* get the ag number of this iag */
>   	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
> +	if (agno < 0)
> +		return -EIO;
>   
>   	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
>   		/*


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
