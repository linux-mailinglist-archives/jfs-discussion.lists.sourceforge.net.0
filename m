Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB079DC6B
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Sep 2023 01:03:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qgCPe-0003U4-Ha;
	Tue, 12 Sep 2023 23:03:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Sanan.Hasanov@ucf.edu>) id 1qgCPe-0003Tx-29
 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Sep 2023 23:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nhRm5G2HvhfpBnb+W0QiHCNbfi9bZUC0lC3hiTrEGFk=; b=fm2fIWiiCtKKv/NCt/DZKu3x7V
 yXMtSmOP+6qiIldL/gxCkDr3FZaZxjb+19idhkDpyTPd0MV8nLzhZqKVMuJdcb4tCmvVL5oIMn6S2
 hfYIotjMtpovUEWH8sj4pWamH9jpjNChHgy73YfKSH03Z+abn1swwkTm4oe7EmaWob44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nhRm5G2HvhfpBnb+W0QiHCNbfi9bZUC0lC3hiTrEGFk=; b=Z
 GlS35sC83oszlpGbQUEeclJMBvh27gwvA28m2ATUK5vL9e6J5TBoyGncXvM73M/LBZnzm3fhmrGdG
 +H9sF1UAGUUyy/YO8D/Tdcr9zG6He7avTrwH1hw2tyowoaVtlreHykDNYJ1AledWMdqvDwC5e4FEY
 bnv4CNw9oOe77BKc=;
Received: from mail-bn8nam12on2133.outbound.protection.outlook.com
 ([40.107.237.133] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qgCPb-0005iP-80 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Sep 2023 23:03:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GShi+yrVhR9nihmyF1TzXz/GFzalhmjhw8wyjo2hZ49mApieenRzyDcQ5QZGDi72ZSNaUVvzy6rOoKsj+I7JI4VrnPibyKBkkbsPtOyQfxAOJIeayvUolHU7luN3+fdJJX+UIU6DnunKPUIat6u1b6hMa0jEVQdAbNwRvD0Zuis0nRp7CUeEcKmMEM2ypaTB9eAZWbILqAMYfcq7XV4FwlfcgPC1Zo40OzRye0eScWNDN8GnejVV8hVZFdB0BlJPO3Eaz/UzLpkz8yj6okCZ35wXAjLIwGF9ozUWfHCX9+4lmsUq4Jl+n8V/q6rTBM8QV3ipPWLpMUAWblsBc7IBjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nhRm5G2HvhfpBnb+W0QiHCNbfi9bZUC0lC3hiTrEGFk=;
 b=CYqMB1W/3GrTw7GZ85bsWAX6saBo04Ux5QurZcTVXrZigP+UiwdnR6oVEiHDRyj2AwejUCeTSvlNonLS98COoYn4Jh/FNxWhhfkf0YVGd6EIoxBAmjtM51E3uInO4vv3nqYnXGzZaGrqf3N3/7VgB+8KrBRK3cC3oxHI8bTius1coSOY0V9lmSlZv1DG/UGxyOmzZIjuRJQLeJ7Z0HrwoQvxNkBW+TdwuWU6yz1lJT06u4fOnHmVPMqcY83opDDFknC/Kfd3Au++sO7yIAYtpLz4HapMy5DehjxPXaEOBWc8JO3waP28S6M2lEN+9rHS2zi/FSo7V/wkrkB1+2/siw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ucf.edu; dmarc=pass action=none header.from=ucf.edu; dkim=pass
 header.d=ucf.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucf.onmicrosoft.com;
 s=selector2-ucf-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhRm5G2HvhfpBnb+W0QiHCNbfi9bZUC0lC3hiTrEGFk=;
 b=MdNYC8y3KbEnEFyWxfUzkceTZA3d8QLdcxPFI66FdYPxJKOmF0uaXEHR5x25THwOTWgm+MJ3TQu8nYQlogAJSYzSmv05x5tNtcydtvwOzGzP8OhIll30Parf/Jxwka9iji0gT+IZm/Hl5fnUNP6zJlAo622lLKVlmb2m4Id930A=
Received: from BL0PR11MB3106.namprd11.prod.outlook.com (2603:10b6:208:7a::11)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 23:03:08 +0000
Received: from BL0PR11MB3106.namprd11.prod.outlook.com
 ([fe80::713d:6260:57c8:d3ce]) by BL0PR11MB3106.namprd11.prod.outlook.com
 ([fe80::713d:6260:57c8:d3ce%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 23:03:08 +0000
To: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: UBSAN: shift-out-of-bounds in extAlloc
Thread-Index: AQHZ4dCrlVs/QxtEUUek8OvXRRl2Kg==
Date: Tue, 12 Sep 2023 23:03:08 +0000
Message-ID: <BL0PR11MB3106CA1E8C251C8B564106E4E1EEA@BL0PR11MB3106.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ucf.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3106:EE_|DS0PR11MB7531:EE_
x-ms-office365-filtering-correlation-id: e8e4d254-a92a-497e-06c3-08dbb3e46dfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OWq69bHEa2LK34CWAB2qCBkv7dEbppOz4SAqUJy/3z9I6SzomMFm+c2DxBZnoXqRHbsBQ79WBmIThH7OSG8Pul5fQ3aKO7gtXCY8QIFdR1K4npKIIifOzgIVMpjKbsEvZCdeWMsrdPmuXvjnPuGqUlHfToutJCb/liEKS/0FORgYhi5vFEglj3Q5fCKfjRcFj8An1yoG0PybmZrcnDuSArTngrt60b9KshEdYdyJKgnuf7vCAe6kJLnbVpACcmc7cNQSwbr/yr3i3zzimppTq9LYEC8TfXlq1k3U/zpIa2+rR9SnPw0sAbqglfDyVZqfHpzASG+NhFRnbqt/d+9mgEcWaJFULhlUARmGCvlGNzyVaoggxeyq/AUcR1lar28x6h9cTL+bxYs2ms2jZLuAiev5XqoPMw74DcOdpcjvTZEg5Tp0HY0E3bkYIkmPBUK1P/+Oo/hh1VnYN81va0dHrwIw4oVFXjGc8exsD7t62HfzJVGYM/NSogZGUccg+2gmkZu00vCEdkpVpDnuakXljLrhu7PvxPAhoQURwEvo6AZK17Pef9zGlqbhwV1ICXqgsbGLwehkzgcLaQyM0+vMTR8U4YWU3pf49ZhMxqLlzpCa7ozc9VGuzM8uDppjlNuQS0GP7eZL6xEFUJb40jJFSVb2e8uakLjprqq0HoRVt6M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3106.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39850400004)(346002)(366004)(376002)(1800799009)(451199024)(186009)(122000001)(5930299018)(6506007)(7696005)(71200400001)(33656002)(75432002)(38070700005)(55016003)(38100700002)(478600001)(83380400001)(26005)(52536014)(86362001)(2906002)(9686003)(41300700001)(64756008)(966005)(76116006)(8936002)(8676002)(5660300002)(4326008)(110136005)(54906003)(786003)(66946007)(66446008)(316002)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ELZqt37YyzttN/4JPFB71ZNNjTPLJ26NJf8Yca6FAujHfJS+Nk8FOy0zQ4?=
 =?iso-8859-1?Q?Q0Xx0YcmjL02IFY6XselGkls974s4CB/31oCvAgOsu4PR+sXKxULyhZHX3?=
 =?iso-8859-1?Q?3sFyi8RYNP7mtfueEl3hI4mwtq+KF1D82uqzUn0ZDSazTpJFuhTsRqCqMF?=
 =?iso-8859-1?Q?hgzfkmpU1fKd7O4+vIxE0d61N2pxSvbZ148JqnDg30DuysNDO3BWmBS1Jz?=
 =?iso-8859-1?Q?imrcHPgCz6Kfc7gUb8mFxYWvtiNLydHU2VGocG7Geh5USTSejbhkVk7wZZ?=
 =?iso-8859-1?Q?cTw0kQSSWXaQmYouBedk2a5srFrrVbJvPboAAxz+BJl/U1GNH0BJjgHQD6?=
 =?iso-8859-1?Q?kjq5y75xSk5L/vFPvggwOHzFt5S3/YTKaG1YFp3N1l2wqQWS26y5C9kNcs?=
 =?iso-8859-1?Q?n+g+j5FyN7750vlKgAbbD+WvyglOdnCulaPMYudbk19K3jMbvYr5dv9zwW?=
 =?iso-8859-1?Q?zVoTRfRy7If1Qtvq7YBL6slPWpVDnTiAgF6njZprNo6R3qgVwKHNaZ4/h/?=
 =?iso-8859-1?Q?eqTvHUz9nnXigZx5+nOVdDuUBMgPkXNvTSVtyLSnvvJbnWmZAmtmj2Ez8T?=
 =?iso-8859-1?Q?6QAmriW9Cuf87d7tC4C5u6AlRyhlNVDFYuU5lFJe75SJ97ecXmsWF0lOcJ?=
 =?iso-8859-1?Q?Irgd8+Ha2/CpemjdIea/+1afmdh7C/VzJ/bxail8nfOtTPfiXGFkK+lji5?=
 =?iso-8859-1?Q?0qTqEzw6QgoM2osFZq5D6Mlh+nYLpn42oPwebf7ZjWX7/dHzqknexxV/37?=
 =?iso-8859-1?Q?lNdE4FREb38RQ4oQXQ2djNh0dIx7o9ukxOWW6q3jyGOEfOuA+Mr3Jv1H32?=
 =?iso-8859-1?Q?+M/f0Dq/1WTh4EYqrKUk0FklV12N8yEoGn77QShxv/kJRu4A7uFPmIs/wb?=
 =?iso-8859-1?Q?YXd0FllkDtuKdJu0O9Xy0SaonI2pbNtHCSevOoBbM5fRQkWeIpUXf0d7gu?=
 =?iso-8859-1?Q?Fk2Xl9/8sPtGEafyibmCYmZ6KNck7e7bw0F7ptcjpEEhiXKU5xzjGnj+hh?=
 =?iso-8859-1?Q?c+8Y4WhSCBmgiXFxEELVxLGd4rnlcGQktNp1Ro6cdrIcLcgBvykn1IHWX/?=
 =?iso-8859-1?Q?MwrwnReS1v+Jngm+ufzEvR8Zl97k86LZmst1bi0Sup2VxMz6Dfly8dNhVU?=
 =?iso-8859-1?Q?ByCttp/PDpUrfcwwyg5+jcDx02Y1ozE5tkM5aLU6837oozwkGSi/gr4iwC?=
 =?iso-8859-1?Q?MfiLjaWOZlEPz3BRy1qdWYGgxi2kVjoyyh9o0E1dXu3LgfWTfMeOisLl26?=
 =?iso-8859-1?Q?4d4nzRZwGWsK5YL+KuXelfm+3ENZ0LslpbmdOhl0382u1ezGIQ0MtiHwyt?=
 =?iso-8859-1?Q?IZNf1+ZheTt3HsJJvqsBsnaP8NM0ZX3V7e6fOJ4vZMGzZxIPmSS9b0WV9G?=
 =?iso-8859-1?Q?g14KGVm9Yv4EYUQLibSDYvoo8rohEKw3YO1bn7YK/HKeKKZDYoclgoPb/M?=
 =?iso-8859-1?Q?k8YGIgTdUSHX++7b+Us0swE/V+yfWmKpts3ZIzMohS/cVV9Z7/8a2T/9er?=
 =?iso-8859-1?Q?phCNttJa2SASTDfMtv24jPgFlsVxb/DgHTIdNhuqyxDPPHnBwwLzFenm4W?=
 =?iso-8859-1?Q?Yl+x/SrZdS4XoGLC8P00CJ/qGvIeedelJ4IrfDVNpbg9oTv4ePxcvp5mE/?=
 =?iso-8859-1?Q?4GyjQYTF1KCOM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ucf.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3106.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e4d254-a92a-497e-06c3-08dbb3e46dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 23:03:08.1856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb932f15-ef38-42ba-91fc-f3c59d5dd1f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5K4rgnaMxCpUAfHX15+L0b3IFIMxx7iMbqUSH6DmkfclpY0CFMhRbMVvTv3/cjoJjJtbBnLJ/vBEaJHqGaalDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good day, dear maintainers, We found a bug using a modified
 kernel configuration file used by syzbot. We enhanced the coverage of the
 configuration file using our tool, klocalizer. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qgCPb-0005iP-80
Subject: [Jfs-discussion] UBSAN: shift-out-of-bounds in extAlloc
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
From: Sanan Hasanov via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sanan Hasanov <Sanan.Hasanov@ucf.edu>
Cc: "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 "contact@pgazz.com" <contact@pgazz.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Good day, dear maintainers,

We found a bug using a modified kernel configuration file used by syzbot.

We enhanced the coverage of the configuration file using our tool, klocalizer.

Kernel Branch: 6.3.0-next-20230426
Kernel Config: https://drive.google.com/file/d/1v6xpOJVgzbn78LEAq5eX9bZiPJPqhfZf/view?usp=sharing
Reproducer: https://drive.google.com/file/d/1-HrYhFL6t4xZ-fRhqo9yswIFG3Sk1FoV/view?usp=sharing
Thank you!

Best regards,
Sanan Hasanov

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_extent.c:314:16
shift exponent -1 is negative
CPU: 2 PID: 23961 Comm: syz-executor.1 Not tainted 6.3.0-next-20230426 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x136/0x150 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x21f/0x5a0 lib/ubsan.c:387
 extBalloc fs/jfs/jfs_extent.c:314 [inline]
 extAlloc.cold+0x8d/0x92 fs/jfs/jfs_extent.c:122
 jfs_get_block+0x662/0xa90 fs/jfs/inode.c:248
 __block_write_begin_int+0x3bd/0x14b0 fs/buffer.c:2064
 __block_write_begin fs/buffer.c:2114 [inline]
 block_write_begin+0xb9/0x4d0 fs/buffer.c:2175
 jfs_write_begin+0x31/0xd0 fs/jfs/inode.c:299
 generic_perform_write+0x259/0x580 mm/filemap.c:3923
 __generic_file_write_iter+0x2ae/0x500 mm/filemap.c:4051
 generic_file_write_iter+0xe3/0x350 mm/filemap.c:4083
 __kernel_write_iter+0x262/0x7a0 fs/read_write.c:517
 dump_emit_page fs/coredump.c:886 [inline]
 dump_user_range+0x23c/0x710 fs/coredump.c:913
 elf_core_dump+0x2786/0x36e0 fs/binfmt_elf.c:2142
 do_coredump+0x2ed8/0x3fd0 fs/coredump.c:762
 get_signal+0x1c11/0x25c0 kernel/signal.c:2860
 arch_do_signal_or_restart+0x79/0x5a0 arch/x86/kernel/signal.c:307
 exit_to_user_mode_loop kernel/entry/common.c:168 [inline]
 exit_to_user_mode_prepare+0x11f/0x240 kernel/entry/common.c:204
 irqentry_exit_to_user_mode+0x9/0x40 kernel/entry/common.c:310
 exc_page_fault+0xc4/0x180 arch/x86/mm/fault.c:1615
 asm_exc_page_fault+0x26/0x30 arch/x86/include/asm/idtentry.h:570
RIP: 0033:0x9800
Code: Unable to access opcode bytes at 0x97d6.
RSP: 002b:0000000020000248 EFLAGS: 00010217
RAX: 0000000000000000 RBX: 00007f7356dbbf80 RCX: 00007f7356c8edcd
RDX: 0000000000000000 RSI: 0000000020000240 RDI: 0000000000000000
RBP: 00007f7356cfc59c R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fffbb79ec8f R14: 00007fffbb79ee30 R15: 00007f7357ecbd80
 </TASK>
================================================================================


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
