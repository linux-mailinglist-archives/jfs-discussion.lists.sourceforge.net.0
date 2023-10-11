Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7627C59C4
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 19:01:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqca9-00044G-VR;
	Wed, 11 Oct 2023 17:01:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tytso@mit.edu>) id 1qqca8-000442-DJ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 17:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q/lSedKb7lshx7k2rQEAeRvB6s5o1LR/9RTjMM0Pa84=; b=W1/Uobxsl46Q9IBeWju8E4azaP
 nJDaH9L5VWnWGtvrxnuym26Whvb+xPMzSvSVXTqpI/CzhAVKFuzEuBpMP5yS/E5s1nMehKKsKAIS/
 pUt2kglhMyrOScjE7CNJ/wLh3BaI1YpH/kkf73taRsuUS9z7+isgEwmPyRqo/u03PUlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q/lSedKb7lshx7k2rQEAeRvB6s5o1LR/9RTjMM0Pa84=; b=ZiYAAMs3O8zktJ3BzGKjsUXcZ8
 Pcq0m4jdL0/7wEUC0gA0IfyGd2O7kUrQyNoOjPRFsxCJXD+DDvzDjvTCnrkzHM12qCn22HUOXRWMW
 UQIBm5YMJyhtD7utkjxp87lUkaA1UyPJi/t93/QKEui5mNKtCKu715RTp4Qdg44arozs=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qqca2-00BzG5-Ui for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 17:01:12 +0000
Received: from cwcc.thunk.org (pool-173-48-102-152.bstnma.fios.verizon.net
 [173.48.102.152]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 39BH0gc9026643
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 Oct 2023 13:00:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1697043645; bh=q/lSedKb7lshx7k2rQEAeRvB6s5o1LR/9RTjMM0Pa84=;
 h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
 b=Rc2/C7WGlgIGRQErNzCcxSMHogE9oGRHAvNB2j3dbxswtI5n+kyI7gEaZ4G3t2XYD
 vgniCaTIjxuF5Kn7l7kN/sUqVEHVEphiRz6No2c+NguixtNdFguU5pxTAVFEMmRa7L
 mozXISoF8mD2gcTwwtoeTz0QTTpMTQy1dztVf/zBgg2ojvpJ30NPfFgfDc6EY8550C
 Vm6FKhIsyR0nd2gUYgV1vJ/bziErXOw/85jjMF7e91VuNXCjdk66m8RcrcHnr/7iJ4
 FcCSVVDBDUK9Hs1TLdx1HefX/oATTG+BHWGjmGUqVFW+iTE4PM8rEmDqGvJMrxTcHh
 r5JIaMzoS4H6w==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 4C0C715C0255; Wed, 11 Oct 2023 13:00:42 -0400 (EDT)
Date: Wed, 11 Oct 2023 13:00:42 -0400
To: Christian Brauner <brauner@kernel.org>
Message-ID: <20231011170042.GA267994@mit.edu>
References: <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011-braumeister-anrufen-62127dc64de0@brauner>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 11, 2023 at 05:27:37PM +0200, Christian Brauner
 wrote: > Aside from that, the problem had been that filesystems like nfs
 v4 > intentionally raised SB_POSIXACL to prevent umask stripping in [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqca2-00BzG5-Ui
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Theodore Ts'o via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Theodore Ts'o <tytso@mit.edu>
Cc: Dave Kleikamp <shaggy@kernel.org>,
 Max Kellermann <max.kellermann@ionos.com>, linux-ext4@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 11, 2023 at 05:27:37PM +0200, Christian Brauner wrote:
> Aside from that, the problem had been that filesystems like nfs v4
> intentionally raised SB_POSIXACL to prevent umask stripping in the VFS.
> IOW, for them SB_POSIXACL was equivalent to "don't apply any umask".
> 
> And afaict nfs v4 has it's own thing going on how and where umasks are
> applied. However, since we now have the following commit in vfs.misc:
> 
>     fs: add a new SB_I_NOUMASK flag

To summarize, just to make sure I understand where we're going.  Since
normally (excepting unusual cases like NFS), it's fine to strip the
umask bits twice (once in the VFS, and once in the file system, for
those file systems that are doing it), once we have SB_I_NOUMASK and
NFS starts using it, then the VFS can just unconditionally strip the
umask bits, and then we can gradually clean up the file system umask
handling (which would then be harmlessly duplicative).

Did I get this right?

					- Ted


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
