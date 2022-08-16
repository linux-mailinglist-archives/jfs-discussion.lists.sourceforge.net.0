Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB6859633D
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Aug 2022 21:36:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oO2MS-0007ZU-Oo;
	Tue, 16 Aug 2022 19:36:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1oO2MP-0007ZO-3G
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 19:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j3XcZj58ibAYo7JZ+DBGHbio8/+pmx+vaIAoYTPhszo=; b=b4f2sJktObsFzvpSivrspCJjQ1
 IIgaudPR/nEbbzZ5BrWLmTC+humDXukqo42NYnXkV8eTvbUTYnt3Bl105njxuyjOR+CKAlNrwle3d
 kYR6ZSQXq7UPMkzuoS6zeKe8EUacBOrE5zBv2HzoanMnRgRmvNub9CQ69tSLWpIVMJyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j3XcZj58ibAYo7JZ+DBGHbio8/+pmx+vaIAoYTPhszo=; b=JMfXN90AP0aG1svCb7hZr111At
 ZizaO+IM9v6375nIkM9z1AIgmVQOeRHSeqxprZfww0fh/MMohTWqqZ515otLtGK0efR3G9awfJ+2e
 JNib/kLxBVeCOoOQJn44LvNCLu9lJWAuyGSfAML18CtqksuvcqkIXEACRoVdinvq2BJg=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oO2M2-0001UU-W1 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 19:36:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=j3XcZj58ibAYo7JZ+DBGHbio8/+pmx+vaIAoYTPhszo=; b=C3ggZZuTRiGe+co72VGz5WtuLJ
 dEtZCyVzUM/eFKokG1H5+2fq5HnCQW1/XI3EnYPaBS8QQO9lxUZ1VUrcCmag9//Qh8vNBLfpz1mMI
 wPIz1JuLFLurE6ZIBrsfqaJgC46BC+tsi/iCNppteb7Iq1x5WwTqSgflaHVjt80Oo7N5zxT3TE7ME
 D47v+hXMewesjsDdRS0l90YMCI+ctr26b2bcQMrDuMV6Ik31zqsKLqtPZE7xiBkUAxOrYhr8aM+3U
 v9TQa3ty7tM2bpDblyqo+kJk2VdOjZI+nsGlYX6risKRNaTbeuVXpiySdoN5yJ2RptQrlEc7NFx1l
 ZR3SyIng==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1oO1yO-007GSa-01; Tue, 16 Aug 2022 19:11:32 +0000
Date: Tue, 16 Aug 2022 20:11:31 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Yvvr447B+mqbZAoe@casper.infradead.org>
References: <YvvBs+7YUcrzwV1a@ZenIV>
 <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 16, 2022 at 11:58:36AM -0700,
 Linus Torvalds wrote:
 > That said, our filldir code is still confusing as hell. And I would > really
 like to see that "shared vs non-shared" iterator thing go [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1oO2M2-0001UU-W1
Subject: [Jfs-discussion] Switching to iterate_shared
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
 devel@lists.orangefs.org, apparmor@lists.ubuntu.com,
 linux-unionfs@vger.kernel.org, codalist@coda.cs.cmu.edu, coda@cs.cmu.edu,
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Aug 16, 2022 at 11:58:36AM -0700, Linus Torvalds wrote:
> That said, our filldir code is still confusing as hell. And I would
> really like to see that "shared vs non-shared" iterator thing go away,
> with everybody using the shared one - and filesystems that can't deal
> with it using their own lock.
> 
> But that's a completely independent wart in our complicated filldir saga.
> 
> But if somebody were to look at that iterate-vs-iterate_shared, that
> would be lovely. A quick grep shows that we don't have *that* many of
> the non-shared cases left:
> 
>       git grep '\.iterate\>.*='
> 
> seems to imply that converting them to a "use my own load" wouldn't be
> _too_ bad.
> 
> And some of them might actually be perfectly ok with the shared
> semantics (ie inode->i_rwsem held just for reading) and they just were
> never converted originally.

What's depressing is that some of these are newly added.  It'd be
great if we could attach something _like_ __deprecated to things
that checkpatch could pick up on.

fs/adfs/dir_f.c:        .iterate        = adfs_f_iterate,
fs/adfs/dir_fplus.c:    .iterate        = adfs_fplus_iterate,

ADFS is read-only, so must be safe?

fs/ceph/dir.c:  .iterate = ceph_readdir,
fs/ceph/dir.c:  .iterate = ceph_readdir,

At least CEPH has active maintainers, cc'd

fs/coda/dir.c:  .iterate        = coda_readdir,

Would anyone notice if we broke CODA?  Maintainers cc'd anyway.

fs/exfat/dir.c: .iterate        = exfat_iterate,

Exfat is a new addition, but has active maintainers.

fs/jfs/namei.c: .iterate        = jfs_readdir,

Maintainer cc'd

fs/ntfs/dir.c:  .iterate        = ntfs_readdir,         /* Read directory contents. */

Maybe we can get rid of ntfs soon.

fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,
fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,

maintainers cc'd

fs/orangefs/dir.c:      .iterate = orangefs_dir_iterate,

New; maintainer cc'd

fs/overlayfs/readdir.c: .iterate        = ovl_iterate,

Active maintainer, cc'd

fs/proc/base.c: .iterate        = proc_##LSM##_attr_dir_iterate, \

Hmm.  We need both SMACK and Apparmor to agree to this ... cc's added.

fs/vboxsf/dir.c:        .iterate = vboxsf_dir_iterate,

Also newly added.  Maintainer cc'd.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
