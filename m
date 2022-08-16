Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD98C5965C3
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Aug 2022 01:01:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oO5YJ-00012n-De;
	Tue, 16 Aug 2022 23:00:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1oO5YH-00012g-L4
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 23:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Uwi0AjOd+BUCbQ5EFKaVcYyqsN0PvU3/YuRCxGxtiv8=; b=lihVaAeqgCYEM+gTYcs0N3wu8+
 qwdvsSrd9kK1A1k5X7oFYuH9KBPS+yJTWjMTx1bOQN6MBPMcypefS8P5rWKxwBgVjyXgT+yZGyLHd
 bGv2EGMlpKzlrgXsw7hPEOJT/EuWd9NfmS4N1SpIjpDyfdCO+JiFXREgnbX9VkMk0naI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Uwi0AjOd+BUCbQ5EFKaVcYyqsN0PvU3/YuRCxGxtiv8=; b=aD4hPalFEoMm3UEHdkputWwYDm
 EqmJTSJ2KfXoXOHTMMz9daqOBbvg1hrHiFvCLZGhQeF5nVbIZNjAnVqJrM40wEWVnlhhWBfu5Co16
 uj6LIq/oXMIIYuXnwLfQbUpF8pTEXMf3cwcsoPWIz4pkmAb3mmmnJiVvbT19ynZtsgVg=;
Received: from sonic306-28.consmr.mail.ne1.yahoo.com ([66.163.189.90])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oO5YG-0003Mm-8j for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 23:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1660690842; bh=Uwi0AjOd+BUCbQ5EFKaVcYyqsN0PvU3/YuRCxGxtiv8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=ksFPhhKCj9pyEXurh4Q/4WjClvyT1BjpUguSM2JedK1z7wZg/C4wu+yGk0/0bQHYsNSuIYJJVOWUAIUcTp/oKVtwSXsa6NEWe9cLr5QTTmoNsNk4hk1x3+XlwTClIlkkaXGH5d7x5RlMTBTNVnxXCV+DZIVwvj9Pts62a2Z4cZs+c/xz6Fz1JWX8r8Y1L0tKQI8t4ruJ9+08zzbHfyDswYdwq/uwW3f4R6B42bg2d4Xndk/MzgxAHjVRjDs0HZHzpnE+XK+b0oJ0Yjc/jE4o68xAFAM9hiwyHv6Oa5uUKpB63C0gDrkvklkCKJxZL554Rz0Fzxn8KWOwjzgKE80Wjw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1660690842; bh=i05Sazly7xJhGilpHCVvHaROC1t65CIU4gqjGRDFfGd=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=tCoRbR4bT9VjWHU3UCmekWPN6rdahoVKA8QMgnd5L3vVClHIvKRSdjZdGI/C54Fk29l7ETq1ihIvY2cZEfGoN0k8unGG3g5o6t6DkvERn9bklcN7jTylXEDU3S4ipwYeAshDiW24/C71Heba8yfLumB/4rl5v92nwYPEc0/DYjhbGOnclrtSYr8tdsTWoD3EJQPrsWPCqa/Mlm607tCR2kX05vpd0wHAPfVfxBQgzkbyEANUnzesZN208Xqai5FN8hJtxQoZ/WIkCfGD5vF/rWY3/ptUL8gw1a3MTy3clsUpYj+mmL1YRLHyPOpOW/dWywACRMM5dgJxodfAWj6ZhQ==
X-YMail-OSG: 23.PvCwVM1k1.Y5WVt9ruQrpMW6tE8J5qcxcl8osV_JGIYlbxBEuWWQ7kyr7kc8
 xGpGF5wIpIwnETVA1Kx5VXzc49m1wqOyHwb1Myxdt3Z9Lf_GyWDaJrS9p4KfPTeKV3cU.ejmyF4y
 eP_81AEbFciQ.KWsDOWOmKQQNiupft596D0ywMiUtGQ9cVB55aZ5cteG_7yxsaHrCeVPTtKRhtAG
 rgPV8NQUxtx6jbBXQ_LocYE4m.2gz0I3MWO14QnOLJ7A1umRhEfo2hxGQeY67z0eAVsH7_se7oda
 1RzzNDTPRrc5oSXbNtwLgWa.T9GssCfgfwLQwf_J60_iBV.Vv7A8PO3ZwMwJvQltuRBJ7m6B.v7u
 CFKVXtPU43SCnZXI2_fjWJhilYUvXtPupx6LoANrrVf6CJtyO2E58jljFrL3yuLIcbt3EQLJcHoh
 2nPpgoFl34nqYGpER8vRyFoqfpuk0BBHNi9GbpNb0emxf2pD0Qdwn03JEmGIFozi6eqyM8sFf5LL
 sDfMDbjn9GU4CxaZlU9ppG1M30RQK147VKh9a5BbbBuwHmOgpTi_HYyl9bYaMVFgSExBobmOzmno
 zikeFPDwpcyTgt4t_R4APcpq0HD3I4HoBJETfW1XpXmBDDKeGPiEKqKC_c1Vl7KeqkdOg1RCacxZ
 pdELmj74_Q8fpFr_Y_wSiAVXXAhnjxIXPUIhZhP1haLJksDhPhvEx1rxpXeh4VNzVXt0bsQo7gmt
 cV8hlSozTBbWvCAl6304JTyphIhsLL0iayuOKamYKGxFM8P8cwcp3JJCqJFsHJmOYtD7rt6uUOra
 bl2.xcvSi51XdwvlA63RnchfHVIO.8MvK7_1YYvS6dmRB4MOSNEL9Aw9wIzt9idhSAugoKWMFDcV
 I0mNsLEYhFMREOfDWZ5duWrTqdB7K_vuf.M4eWeCASIdf7xUxhGbzUXPecVOFrs6sLpfrnpcZ4Nu
 2Dhwg5lHdVdEpydcWty5JWks3jdmpffkhpnZ57e_2aAWI29ym3WnahPO7jtza_dpBqpXDlfLRAp_
 qdvAzf0Xyr4sbhXNK0Dn0INsLEFc9d.v7VOOLXg76E4B6FKRvhfxfUE9HaQpNXVyHg7DQj188rL4
 3.jNDw4gqqWnOlfNkciVS73iwXLDIrJYRdiTPaSCnTHMH3LmclRuz2t6h_JOJ2vOg8eNNn5mtAss
 5EowhVxXaHCzjlkDny4xF5pn3cx45bUxlQgB6hHXa0bc_SzlnDgI2bCXDzdMG9iLI54JRxSYNxTI
 czQpdDPkhXSOLSzsu9z9AYRZixuFmdChTrXE1incTmB9ch9YYbJwxkQkZ1C.fLifdQ6ENZP2pO1F
 IfndtLGo919uTdh1GNLE9HOZFF6FRnHOYabTwLy4XsPXf2Nb0r4969fJzVqWwKRZMOKxXTE8PDd2
 GGpcjeDfcHPhFlN_50EsnRKksW4.GwK8OPaRwppqhFLNL_zSBOVGgGlTpbCbN71aGqELA62kTAZV
 OYsBOhFLYP4om5dteCrS7XX3MsfMV05L5ZmbiKPb0vHkyJt3ROt8gnoc.buBIVEtpFpVKdK0EMq3
 gLEyLMcdKpY8f5sJy2lYuKfsUkdg656_MyKe2IsSdq1ni6pINFcj1rsE1YRf1qPNrPRl4BUeunHM
 oFvKz7CEUlNfRmYAI01lpfv3vuj0xwhBvPZnTBl5Xr4SMsPkd3_esqkVo5o5qXZ.O.P_03mWD.Aa
 NWC3JIoF8NOCvUMmz9Vvc7E1SjxuV6hUHeSluyYrkq6ASDX0g.HVcwzHyA8WBmSA42QbflrsMuy2
 2QtOz4DTAIaK3oPda6TSf_WS5ki8EPxGQKniVz1KiNCneEVvfqGJ.6CEvffsS8jZDxYTj8DJcESn
 DJ5XIhgMwq7k3U90w.CQbDbC5iBDyrxBIXIQ2gPd3xGWuucmLlhedZFiDeALSQtwuzpE2m1SmEVp
 b0.9jQRJlFAocjLtojKh9k8cp.r0VileD5MZzqi6DNd8pKPyTrRfGRWSImAPiObXRN5dVM8bCYLa
 RuKwrHxalDYRGzUsrvGu7MNQXHxCbnVHPiduJaxkNf1MDq1fhyFxH.49jOfOiwyw5x465SkJVJMw
 j9iOc2MrT0A0hVZYQDx8nZ0LGDroWVYnl9XXU1Nm2IxE3qvlMrZqAHlvb2RFJ9uiA5gBW6wZ8B14
 l_4j7jzGrTad5QUJsvsFlkVL8JnlhVay8fOtD74tY6ty_gFxjETKWGorzcuU5CFMg_KRvAppb6Df
 UX2wgL75UdBL3ByEJGvPLeiNS6VBNgO.4dDWcpiiRvlPj.5bYrQY8nB7U5pI8lg--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ne1.yahoo.com with HTTP; Tue, 16 Aug 2022 23:00:42 +0000
Received: by hermes--production-bf1-7586675c46-6jlzf (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 7d324c8a8c222550f8eec5b283a6b7a3; 
 Tue, 16 Aug 2022 22:30:16 +0000 (UTC)
Message-ID: <b05cf115-e329-3c4f-dee5-e0d4f61b4cd5@schaufler-ca.com>
Date: Tue, 16 Aug 2022 15:30:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <YvvBs+7YUcrzwV1a@ZenIV>
 <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
 <Yvvr447B+mqbZAoe@casper.infradead.org>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <Yvvr447B+mqbZAoe@casper.infradead.org>
X-Mailer: WebService/1.1.20531
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/16/2022 12:11 PM, Matthew Wilcox wrote: > On Tue, Aug
 16, 2022 at 11:58:36AM -0700, Linus Torvalds wrote: >> That said, our filldir
 code is still confusing as hell. And I would >> really like to [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.189.90 listed in list.dnswl.org]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oO5YG-0003Mm-8j
Subject: Re: [Jfs-discussion] Switching to iterate_shared
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
Cc: jfs-discussion@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 casey@schaufler-ca.com, devel@lists.orangefs.org, apparmor@lists.ubuntu.com,
 linux-unionfs@vger.kernel.org, codalist@coda.cs.cmu.edu, coda@cs.cmu.edu,
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/16/2022 12:11 PM, Matthew Wilcox wrote:
> On Tue, Aug 16, 2022 at 11:58:36AM -0700, Linus Torvalds wrote:
>> That said, our filldir code is still confusing as hell. And I would
>> really like to see that "shared vs non-shared" iterator thing go away,
>> with everybody using the shared one - and filesystems that can't deal
>> with it using their own lock.
>>
>> But that's a completely independent wart in our complicated filldir saga.
>>
>> But if somebody were to look at that iterate-vs-iterate_shared, that
>> would be lovely. A quick grep shows that we don't have *that* many of
>> the non-shared cases left:
>>
>>       git grep '\.iterate\>.*='
>>
>> seems to imply that converting them to a "use my own load" wouldn't be
>> _too_ bad.
>>
>> And some of them might actually be perfectly ok with the shared
>> semantics (ie inode->i_rwsem held just for reading) and they just were
>> never converted originally.
> What's depressing is that some of these are newly added.  It'd be
> great if we could attach something _like_ __deprecated to things
> that checkpatch could pick up on.
>
> fs/adfs/dir_f.c:        .iterate        = adfs_f_iterate,
> fs/adfs/dir_fplus.c:    .iterate        = adfs_fplus_iterate,
>
> ADFS is read-only, so must be safe?
>
> fs/ceph/dir.c:  .iterate = ceph_readdir,
> fs/ceph/dir.c:  .iterate = ceph_readdir,
>
> At least CEPH has active maintainers, cc'd
>
> fs/coda/dir.c:  .iterate        = coda_readdir,
>
> Would anyone notice if we broke CODA?  Maintainers cc'd anyway.
>
> fs/exfat/dir.c: .iterate        = exfat_iterate,
>
> Exfat is a new addition, but has active maintainers.
>
> fs/jfs/namei.c: .iterate        = jfs_readdir,
>
> Maintainer cc'd
>
> fs/ntfs/dir.c:  .iterate        = ntfs_readdir,         /* Read directory contents. */
>
> Maybe we can get rid of ntfs soon.
>
> fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,
> fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,
>
> maintainers cc'd
>
> fs/orangefs/dir.c:      .iterate = orangefs_dir_iterate,
>
> New; maintainer cc'd
>
> fs/overlayfs/readdir.c: .iterate        = ovl_iterate,
>
> Active maintainer, cc'd
>
> fs/proc/base.c: .iterate        = proc_##LSM##_attr_dir_iterate, \
>
> Hmm.  We need both SMACK and Apparmor to agree to this ... cc's added.

Smack passes all tests and seems perfectly content with the change.
I can't say that the tests stress this interface.

>
> fs/vboxsf/dir.c:        .iterate = vboxsf_dir_iterate,
>
> Also newly added.  Maintainer cc'd.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
