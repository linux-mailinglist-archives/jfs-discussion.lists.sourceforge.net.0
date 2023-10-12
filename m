Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 353007C704E
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Oct 2023 16:30:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqwhG-0007hB-TJ;
	Thu, 12 Oct 2023 14:29:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tytso@mit.edu>) id 1qqwhE-0007h4-8X
 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 14:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fmcr5RwuJwayVhUbngXLq3LrYuBYwHACNuwCZH5c+28=; b=dAR8vQA0dfwFmz7fUmzaTKzQmN
 GqHl09qiDYj5u3D0mZ6C61bdyEgfEI1a5yfkkMayEQM4P1TjqG0tchPmgJJBU4AelRyt5rqRJ8156
 71izKsotjLYFYhbmH2dJqaQOKXxxmf2TOnE6q9IRiPlmyyUqr0xEskXushMucvStYzSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fmcr5RwuJwayVhUbngXLq3LrYuBYwHACNuwCZH5c+28=; b=bGyOlmaSlh72c+9GfAuzreNa6a
 fSRbcOfkrFLG9JUv9IiKxdKMHF7x5Kk2Wgbhnxty+DnANCylqblogT3BHnYxATZ/aTfOfD02vtPT6
 gp5HzhuW8/L/IAK0AkbxMcCmBg58UT1IzbmFpLW/JtEzQeX9PZF3ddfRGRRZkCpFgZAU=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qqwh8-00Cosg-Pz for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 14:29:51 +0000
Received: from cwcc.thunk.org (pool-173-48-111-200.bstnma.fios.verizon.net
 [173.48.111.200]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 39CETIWq012545
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Oct 2023 10:29:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1697120962; bh=Fmcr5RwuJwayVhUbngXLq3LrYuBYwHACNuwCZH5c+28=;
 h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
 b=W081j5tW+M3CusLvAKm2TNgPiad4Xmuv60pn0cMLFB5AjiGc2JttGCMCA8KlhNMHs
 5C3mCxqhrtR3ekKhhrFTa5qaG9CfpP5HcM0G4rq6Gl4pq5y3M6bUR5tEf+pJaboBZt
 qWn7L6TFYnvU7ekPCViU9Zt/keviwUbXxICidUBi3Rb/Qn/aprQmoDzfYMaWVRh7UQ
 PJDpC0wVBpFM+lxuvMUnfUoexvBEBGwXf4UWADRqQVePUiVW8bQ78sfaFC1Okx50/5
 70AuQDIZz+2Cx7LWvQwUuEuV4LXzBHztnowIu6BW5vFGriao3e79YYlcOaNfKO1dKh
 G/9xFBApDA+rQ==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 6BF5215C0255; Thu, 12 Oct 2023 10:29:18 -0400 (EDT)
Date: Thu, 12 Oct 2023 10:29:18 -0400
To: Jan Kara <jack@suse.cz>
Message-ID: <20231012142918.GB255452@mit.edu>
References: <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011170042.GA267994@mit.edu>
 <20231011172606.mztqyvclq6hq2qa2@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011172606.mztqyvclq6hq2qa2@quack3>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 11, 2023 at 07:26:06PM +0200, Jan Kara wrote:
 > I don't think this is accurate. posix_acl_create() needs unmasked 'mode'
 > because instead of using current_umask() for masking it wants to [...] 
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
X-Headers-End: 1qqwh8-00Cosg-Pz
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-ext4@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Jeff Layton <jlayton@kernel.org>, Max Kellermann <max.kellermann@ionos.com>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 11, 2023 at 07:26:06PM +0200, Jan Kara wrote:
> I don't think this is accurate. posix_acl_create() needs unmasked 'mode'
> because instead of using current_umask() for masking it wants to use
> whatever is stored in the ACLs as an umask.
> 
> So I still think we need to keep umask handling in both posix_acl_create()
> and vfs_prepare_mode(). But filesystem's only obligation would be to call
> posix_acl_create() if the inode is IS_POSIXACL. No more caring about when
> to apply umask and when not based on config or mount options.

Ah, right, thanks for the clarification.  I *think* the following
patch in the ext4 dev branch (not yet in Linus's tree, but it should
be in linux-next) should be harmless, though, right?  And once we get
the changes in vfs_prepare_mode() we can revert in ext4 --- or do
folks I think I should just drop it from the ext4 dev branch now?

Thanks,

						- Ted

commit 484fd6c1de13b336806a967908a927cc0356e312
Author: Max Kellermann <max.kellermann@ionos.com>
Date:   Tue Sep 19 10:18:23 2023 +0200

    ext4: apply umask if ACL support is disabled
    
    The function ext4_init_acl() calls posix_acl_create() which is
    responsible for applying the umask.  But without
    CONFIG_EXT4_FS_POSIX_ACL, ext4_init_acl() is an empty inline function,
    and nobody applies the umask.
    
    This fixes a bug which causes the umask to be ignored with O_TMPFILE
    on ext4:
    
     https://github.com/MusicPlayerDaemon/MPD/issues/558
     https://bugs.gentoo.org/show_bug.cgi?id=686142#c3
     https://bugzilla.kernel.org/show_bug.cgi?id=203625
    
    Reviewed-by: "J. Bruce Fields" <bfields@redhat.com>
    Cc: stable@vger.kernel.org
    Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
    Link: https://lore.kernel.org/r/20230919081824.1096619-1-max.kellermann@ionos.com
    Signed-off-by: Theodore Ts'o <tytso@mit.edu>

diff --git a/fs/ext4/acl.h b/fs/ext4/acl.h
index 0c5a79c3b5d4..ef4c19e5f570 100644
--- a/fs/ext4/acl.h
+++ b/fs/ext4/acl.h
@@ -68,6 +68,11 @@ extern int ext4_init_acl(handle_t *, struct inode *, struct inode *);
 static inline int
 ext4_init_acl(handle_t *handle, struct inode *inode, struct inode *dir)
 {
+	/* usually, the umask is applied by posix_acl_create(), but if
+	   ext4 ACL support is disabled at compile time, we need to do
+	   it here, because posix_acl_create() will never be called */
+	inode->i_mode &= ~current_umask();
+
 	return 0;
 }
 #endif  /* CONFIG_EXT4_FS_POSIX_ACL */


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
