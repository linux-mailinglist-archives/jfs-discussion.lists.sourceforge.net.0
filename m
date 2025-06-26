Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCE9AEA447
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Jun 2025 19:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u+fITb/7E3pBqK7SahR1cV5bYPPRTxylN5Bipl4JJ30=; b=nGENzq8ZaGkPN812mbZOQv1RTB
	Ng95kdWSTXbJiLMvthi/5DyKjwBBDtW1Lz7TAXQHptmMKb73Zl1eMwDJcXtFnbcxpPjvrM6Bbr/7f
	LKqecla/CADqdCLEJq60v1E7mkarJtiGRkRiuG87xfuOmEpOltjQ0rEV4hFmOH37l+4s=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uUqD4-0001fS-6w;
	Thu, 26 Jun 2025 17:16:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <frank.li@vivo.com>) id 1uUq7E-00016T-AZ;
 Thu, 26 Jun 2025 17:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rmYVQNU2DXX8cxu/IfAvuzqp02Ybqd4zVBjOeUXs1tA=; b=YqOJZnA5JcAr249dLR//HVLWTS
 jPlBnwxPzkLQ+XI1jjqliOorjf2sXYBMgMxAsLSQJLGrzJ3DmU4q7A/CZs16hFMHT4Tm8Fw3ssO+7
 xMsxCxZcbW0yMB7xliqzBfmOHk56SuCyvQZ7xtm7b6ssoF8pTJ8fIQ20p67exsLI/bkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rmYVQNU2DXX8cxu/IfAvuzqp02Ybqd4zVBjOeUXs1tA=; b=C
 E5DZI4U1ShH8quHFf+xWI4BR9fX2PgHuEm8iVDRkqDsr+8JoiXJi05oKvChCEKs9K4gyBwZLAhiP6
 vMt3aWeccNS7LcTEMs3/cwxaeBwAxidt5HCXAM9TUYLDSh7sivsv7IPuEIa+ArdSSctSPjiHMI0qB
 J7VRUUVaZnLiSstg=;
Received: from mail-japanwestazon11012028.outbound.protection.outlook.com
 ([40.107.75.28] helo=OS8PR02CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUq7D-0007cQ-HS; Thu, 26 Jun 2025 17:10:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KnUwErZ4YGKlgnTmee6e9pvl48EUjoZe2b49pnUF/895vsEHHMaqa/YIMPVGqWSEIV9VsW0ClzpAjqRx7XUXASfDGbQoLhY/RrozI16eC5mN3vtArv21YazqbtH6bwq+qHom9eSrTxzTC1T1/HkFmkspAgLB06ZfCuPlQlz9ZaRHM9XNXgzXF+6kqFAxTVYjmSxgKu4E2flSQRBhHz/fq+AQZnoPokguUp7iOhZsTEWTdix2Wio4HpYDBSVkjTwbyq2+mjrawBUonj/jPPyFWQAH2mFq2IpEA/FE7hLJkD95SrE3ogUZiIpUPZJTsh0WPW8TmTlRdFPSanvQ8qXiKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rmYVQNU2DXX8cxu/IfAvuzqp02Ybqd4zVBjOeUXs1tA=;
 b=Z8xn4rAM77O8sa43NjUa+RIniyXH68oochyVAfkS7i1yRnwYh2PNIPkawu0WsFllXY5PHnIMQGVU5GgyUSimNl6n4IVko0ZqX9E0zZuXRAMuc/9qnHZ0Uq6nRASmtuPUAKosIJzIZwT4nkRl0i90E+GHhET3JgCZd52u5R6lTkgjxJCPn6EnrRUj9GscRT8FrdUkp5Pvj/rVDeCP9gh683KFs5nMsi50Dkl2+l18vBZFPWolrk7ZRkxQSvBzVdWg0WWcjwaRW9Z8J3oSLRMGjRoMJ/92ihAacRR5iAcQpvjHy2txWL92pwgKgNVeo0R2KwWKdfuiNWsepIXVlXwUQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmYVQNU2DXX8cxu/IfAvuzqp02Ybqd4zVBjOeUXs1tA=;
 b=REMqDf32WLV1KQCLW702/ca0suUex22PY4TkfTxKUq45OLpUmYgIhftLlPKRDiax+BFOGaR0SVEp8g9IG00SC7oaKvYDIT3fk2IZWamBjEcG6I8PnCWyFhRf7xcO6bdQNDd9JoXYoE6OAj3642mGTFhxqboYEPAiHnpYeESzWFQCJVqamnVvi1sI0U0e93rSdDB3x868l4BZCkPh5pslTHgFet2WOpFyALJ0bZbaqeTxFFp0IBXzgyAKxshMknJTEM+hmaFBMX7+StCg4Kk06IAzPOCNvWTZDZxhOKMri9aXD944qZWTuJDxCtOLLfYYCyaRy0Jjk0LNLtlzpK4X7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TY0PR06MB5610.apcprd06.prod.outlook.com (2603:1096:400:328::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.18; Thu, 26 Jun
 2025 17:10:09 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::8c74:6703:81f7:9535%7]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 17:10:08 +0000
To: axboe@kernel.dk, aivazian.tigran@gmail.com, viro@zeniv.linux.org.uk,
 brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org,
 sj1557.seo@samsung.com, yuezhang.mo@sony.com, slava@dubeyko.com,
 glaubitz@physik.fu-berlin.de, frank.li@vivo.com, shaggy@kernel.org,
 konishi.ryusuke@gmail.com, almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Thu, 26 Jun 2025 11:30:19 -0600
Message-Id: <20250626173023.2702554-1-frank.li@vivo.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TY0PR06MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: b99d971c-4b95-4e28-66e9-08ddb4d44d47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lP0XEJzRFMDGOXAAnsEWHG4RPipkGoA3f7qS3kKmhXN6o3JGgkusOymSpx8a?=
 =?us-ascii?Q?kIqnuYjHjtq3XTUnk8hfEen9rrCthm41o0sfG7duuFdIgk+evLsJT8/3mfi7?=
 =?us-ascii?Q?pX2Mwhg2hQkU1QaaSxuECmVDySvQD0kFecbsglDr6/02RR7W6heyAIjlq5ux?=
 =?us-ascii?Q?pSMvC3c4qgw5PG14yjNOLlKnS8rRqtCkzJFXdlIvyIPz7ItN2S0FFB2QWWnP?=
 =?us-ascii?Q?upvjkYo3VnECC8JsnGIWnkgViZmFJYVhZJFDw1UkPwhMaHSgmW2s6qwxyLu9?=
 =?us-ascii?Q?Y+n4oQcjoFAY6+aJbYHkp8/zZ1obOXSShJ0jqgOb+BOqsUsO+iESaWkSKZ80?=
 =?us-ascii?Q?dO+RFWZaJ9l/nUtYo825foJvh21jWa2CG1aUgl1daNK39sidrZ+qFZZO/6BJ?=
 =?us-ascii?Q?QpXC9PnkMXuL11G2c4dWTnoZEFYVrrQW+F3PGqqj7FVEd3ieHbEeG4ngTMeY?=
 =?us-ascii?Q?T1xwPP6cDT1SAdor3WoNkC8helOmJRVWg75vvDK6nDKX0ZsZBxbh8oqTREfb?=
 =?us-ascii?Q?aPi6h9E35hvoED6CUYOxW5tJsGrQehn0fFb6KfLCZaFEfWbVDV43noPO1Wc9?=
 =?us-ascii?Q?r/nMRPMezW4Rq54YcdT45dgXxEBPyOYEynzQ9Q86EPdH01nOQRj6zTYxiJlP?=
 =?us-ascii?Q?tqtaRjcEANy54PS3/zP3eJ7lP1/gGdUCYxpG8FhBHq+pj0WJT93a4IVZxWo8?=
 =?us-ascii?Q?v9FoVce1iAZ1TytX8XzpArJlEqNjNA4D4gtVw2yIPTeIyiDe1/2uW8ITqxaV?=
 =?us-ascii?Q?FXgYVTEZYSUwwZxhM0BcBp8SDZfJQpoHUbSM6AJR3gaT3MQn1IC3yuVh7/lO?=
 =?us-ascii?Q?gYqDvvRXoMBSTw0DNS9UhPXGS2j30EfswKiveR7yEDd69B9Yd52lKQzbkOJ+?=
 =?us-ascii?Q?ZW2lZRaL+54UNv33OJ0h3/KuxHq4ON+QaIzHZj8WeGvGyvw5CIqi4mEBt42H?=
 =?us-ascii?Q?ap9ySfapUNBLijZ/d/NsNkg1UQ991wmLU5oOb3x7IVMCfNsMw8s7wCAWmUxs?=
 =?us-ascii?Q?yto8hJUrO8Gd0jtT2axJt7OstD7eWTswQJPxo9MYv1hkaDIMtrRwO9CL76PK?=
 =?us-ascii?Q?Nr5D/ILiMcUyo62Mrlsywhx0rpHGkBcVvYttlrTIieUNruU+UjhqFwq8uFSg?=
 =?us-ascii?Q?osx08FXzQA3UvmxPmtk6fGvKDOeJukJdUzdKXaIx16ibSejFdeJIc47MSnGT?=
 =?us-ascii?Q?8rJ1+6qm0l/80a51BENpSQaxXxZxKDxW9kg5hXMiib3HS4SgTZFVseaf531u?=
 =?us-ascii?Q?pr6dqN2jtBjNDRASWDfQEjAQwYjcl3Gv3wDkDD5nqjqsi0I+5iGbfv+BOtPX?=
 =?us-ascii?Q?W0c/JrC5N2pft9E68x51zfKFBGR/vNReF2QXFhcXAnfof/LWmWmOl+T+vLlw?=
 =?us-ascii?Q?JvN89NhMIVTkh1omce/3WBFN+I3jVtad9GQygP9sbVYFMOE8LsJ16tWl8BL8?=
 =?us-ascii?Q?2s6u4AYM4e+dViWR3FGPJGojkuXolReJleRWL9XevQzLpxF5na92G1sa9uld?=
 =?us-ascii?Q?NlHIJDMlfEAlaQs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR06MB5269.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ySK/GLbqHpiCg/NkWJZubmly88Uxn9WvHH7dJCuElAcI5SrLQ6JE3+9gaSQB?=
 =?us-ascii?Q?GoYwSF9r5heWmqbojEUwne+hWh4a7nx0Yhvd912hKTlwNQZhNjDcfC6qHZSU?=
 =?us-ascii?Q?aK+BR0QmUM1Cf9qDqr7bKja0r9PinciP2TJ5LYWNUMHT0XPsJc101XKxSfZS?=
 =?us-ascii?Q?cb7KxKTuDIakTAuscoWxbPrVJgXe3/lB70g00t3wsYGeird6kNA+6tD/cXtD?=
 =?us-ascii?Q?yh2TQu3r7MCl1UI3ZcDFjN7qGvZaQh2bEo9HuWuMt32kf8GbGydU6hzRhpxe?=
 =?us-ascii?Q?F5GJ/QoYf6Ludmh9JMxxe/FRyP/D11T6PUIPvgTr60cDW29lGuw7ik1/yLCV?=
 =?us-ascii?Q?gcZfSSytVzPxdVxT3XdXB+zTBF8uQcm1D7/Ehe/m1XPDyctkXrHuxhoPjyVS?=
 =?us-ascii?Q?oesN0iL2cRLYDc4rzgvGP1wB55NYaFDJzjhKP7DyDnGwr04C3XZVN6o1wEbB?=
 =?us-ascii?Q?qi2y1GYop5BBAjIb/Hd7RXUHQzEKbCcDZ0++5+ob8KY6cIMVFt/cRpZ4Cy0Y?=
 =?us-ascii?Q?1M2o6g1VaxLxgo3txnxnDR/1o/CP54RACoOu6UFXRcb2XM7Tg1oK3vPR5/fQ?=
 =?us-ascii?Q?tYedNXIaDSmFzbZQhERgYcmRZR0lAomJuxhnEhacrKrhl5CDiqBK9jFgHsg6?=
 =?us-ascii?Q?8VA/iGBA7zz/nvOvwKG3tEhm7/5KuyktdO7xhHhecYSUyUgd+FUvmjOWGgB7?=
 =?us-ascii?Q?MJFxuR1PAQTSGXzXUks0NL1zpYm6AJVi3zxzkAgWwAFRPeJsOXnZ5pXZ1nee?=
 =?us-ascii?Q?bs5IOh66xDDsd1Pb5OVE4AcQRNaG/SJ9HTy2xfWpVN+kClX0Ch1se5EpnHou?=
 =?us-ascii?Q?VdMi+PbHGPrNKJasu/09nv3ND1vYvvOaIMPdh9ZRt/nTZJhAWqbwbrDgqJhr?=
 =?us-ascii?Q?ihCIoGBpD6s+3C7aGwjotOJrPVxccsP38XX1i+t1c/e3RhW5CGy01iaLT3Zl?=
 =?us-ascii?Q?1nCU2GkPaTr5XDHq38/ys7LXfw2rm+JnTgZkwAo/UVxZh7a5k0lsoyKRCdEg?=
 =?us-ascii?Q?1ws1bKHHfwsqm//6/2Q2BYUNl5Hjcl4diydMbcOJzat2RqnCj0A3QfIEjGmj?=
 =?us-ascii?Q?zfy9GYRqDJNo1sGMzK5bZ54lKErtAGX37wV+SVpoRNQeuNx7SminWhvez9gO?=
 =?us-ascii?Q?ebBlTGZu5lqJwV3EHdHBRqkJUMdOFbULjbrBziCK2ZP9CZhNSJ1AGiE7TSbT?=
 =?us-ascii?Q?K8zzdaoeXHNEfmFh+BXP4H8dV9nu8vqEBONtor090sE+lK4UzT/HCCdYpVb6?=
 =?us-ascii?Q?guZFKMwHDF0pOyWLmqlULmqWnjlMdhLqoCxkZhrSoOx/wyDxaPebrt8uRIrI?=
 =?us-ascii?Q?BZIl4ibZJiwiIXxj20g4jMV24nebSx21HC3XtfG5Y23IAsGbAy5ZzGlupdh3?=
 =?us-ascii?Q?SII1Fow6NxpHmyE0UeZKmCriXn3DKEI6V80eJexr9xvzlEmtOFoFB27kDdxB?=
 =?us-ascii?Q?ErLSHVeHszh2tSibGEKWmrhp9xy8oacCbbcx/4+recl+3/Zv0gFWIt4CSrDH?=
 =?us-ascii?Q?ulZxvZhB1KnwJ+3NtfuldMUBEHSIfaojDJCPltzX2WJZE1hKBQ/sGLwULbSf?=
 =?us-ascii?Q?M2eY93MyaYCOUoLM/hjc090seyp5DObKklJ1kWx1?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b99d971c-4b95-4e28-66e9-08ddb4d44d47
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 17:10:08.3116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sNHMNzkJxWdv/HesB/s4a1v6eaTSwSmDaBV520iXtSncWl2qBb8ZZfc7FIbCIfCc4hpsypP2Z41tg3lecm+SAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5610
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset based git [1], and w/ patchset [2]. [1]
 kernel/git/torvalds/linux.git commit
 id=5e9388f7984a9cc7e659a105113f6ccf0aebedd0
 (selftests/bpf: adapt one more case in test_lru_map to the new target_free)
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
X-Headers-End: 1uUq7D-0007cQ-HS
X-Mailman-Approved-At: Thu, 26 Jun 2025 17:16:24 +0000
Subject: [Jfs-discussion] [PATCH 0/4] hfs/hfsplus: add uncached buffer io
 support
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
From: Yangtao Li via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Yangtao Li <frank.li@vivo.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

This patchset based git [1], and w/ patchset [2].

[1]
kernel/git/torvalds/linux.git commit id=5e9388f7984a9cc7e659a105113f6ccf0aebedd0
(selftests/bpf: adapt one more case in test_lru_map to the new target_free)

[2]
https://lore.kernel.org/all/20250624121149.2927-1-chentaotao@didiglobal.com/

Yangtao Li (4):
  block: Add struct kiocb pointer to block_write_begin()
  fs/buffer: parse IOCB_DONTCACHE flag in block_write_begin()
  hfsplus: enable uncached buffer io support
  hfs: enable uncached buffer io support

 block/fops.c                |  2 +-
 fs/bfs/file.c               |  2 +-
 fs/buffer.c                 | 13 ++++++++-----
 fs/exfat/inode.c            |  3 +--
 fs/ext2/inode.c             |  2 +-
 fs/hfs/inode.c              |  1 +
 fs/hfsplus/inode.c          |  1 +
 fs/jfs/inode.c              |  2 +-
 fs/minix/inode.c            |  2 +-
 fs/nilfs2/inode.c           |  2 +-
 fs/nilfs2/recovery.c        |  2 +-
 fs/ntfs3/inode.c            |  2 +-
 fs/omfs/file.c              |  2 +-
 fs/udf/inode.c              |  2 +-
 fs/ufs/inode.c              |  2 +-
 include/linux/buffer_head.h |  4 ++--
 16 files changed, 24 insertions(+), 20 deletions(-)

-- 
2.48.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
