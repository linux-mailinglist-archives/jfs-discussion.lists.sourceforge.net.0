Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C13D7C5A31
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 19:26:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqcyP-0003WM-IE;
	Wed, 11 Oct 2023 17:26:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqcyN-0003WG-TU
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 17:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PfP83Apuioc6QwrQ9hjnsK+t+FQBcuvjUeVK6xfxlsI=; b=nGbEcF1aeruFHobg/Cl46czzj4
 24QOcu7z/rp/evIzogDz9DZc2o+CfNBittqcCIncxp3Dez0EgmcKPxfp00sZLNbtKcaujtFxGMQZ8
 LCAqI29wPZpdZN+6knNcva9QkQRMm5i8G4Vx7GzVLZ+XHxrIrv1+/Osl9b/qIAwG9ewc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PfP83Apuioc6QwrQ9hjnsK+t+FQBcuvjUeVK6xfxlsI=; b=fb/PkHennyX7mL3q6V19mVYYo7
 w72oPPbiRjfqTGotBoXHY8bvmwJckXm0OkGLChDhnB05doqhQGqIub1iQZVrmPjZxFjzSLlh7uvkS
 6Rvh+s3fjEX0iyO8g7ZDUfvPVccr+B5rVh/AZPT4PORDTZ8BNL1kpI1nzCdipEpuvPvc=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqcyL-0001lr-9s for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 17:26:14 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 41B8B1F88E;
 Wed, 11 Oct 2023 17:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697045167; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PfP83Apuioc6QwrQ9hjnsK+t+FQBcuvjUeVK6xfxlsI=;
 b=kr/n4ozJKeSRcTxUWkUDER9ANl5ysmCMwwn5jTIuXq6Nu6vMj5OGtVTIryyeXynEv0QmeO
 Zhy+dX2NbiLj0xRMv3bNuTJxiIJCI00Tiw9klfnKBnexnxlLzGEBQtIuhmfuMsb7Thyr4o
 /FFuqr7fTzjwGe4evj+VqWiwjBiUb1M=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697045167;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PfP83Apuioc6QwrQ9hjnsK+t+FQBcuvjUeVK6xfxlsI=;
 b=vFckiP0JXcsJIYzBmUMHSKggcqEdsHzRu7vUKBWvlkifhsnhO+PiVl4DK8F327TFpVj4hK
 kaJA6pmCJtZVKrBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2D9E9138EF;
 Wed, 11 Oct 2023 17:26:07 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id hsYaC6/aJmWpSAAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 17:26:07 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id B0F75A06B0; Wed, 11 Oct 2023 19:26:06 +0200 (CEST)
Date: Wed, 11 Oct 2023 19:26:06 +0200
From: Jan Kara <jack@suse.cz>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20231011172606.mztqyvclq6hq2qa2@quack3>
References: <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011170042.GA267994@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011170042.GA267994@mit.edu>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 11-10-23 13:00:42, Theodore Ts'o wrote: > On Wed, Oct
 11, 2023 at 05:27:37PM +0200, Christian Brauner wrote: > > Aside from that,
 the problem had been that filesystems like nfs v4 > > intention [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqcyL-0001lr-9s
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Jeff Layton <jlayton@kernel.org>, Max Kellermann <max.kellermann@ionos.com>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed 11-10-23 13:00:42, Theodore Ts'o wrote:
> On Wed, Oct 11, 2023 at 05:27:37PM +0200, Christian Brauner wrote:
> > Aside from that, the problem had been that filesystems like nfs v4
> > intentionally raised SB_POSIXACL to prevent umask stripping in the VFS.
> > IOW, for them SB_POSIXACL was equivalent to "don't apply any umask".
> > 
> > And afaict nfs v4 has it's own thing going on how and where umasks are
> > applied. However, since we now have the following commit in vfs.misc:
> > 
> >     fs: add a new SB_I_NOUMASK flag
> 
> To summarize, just to make sure I understand where we're going.  Since
> normally (excepting unusual cases like NFS), it's fine to strip the
> umask bits twice (once in the VFS, and once in the file system, for
> those file systems that are doing it), once we have SB_I_NOUMASK and
> NFS starts using it, then the VFS can just unconditionally strip the
> umask bits, and then we can gradually clean up the file system umask
> handling (which would then be harmlessly duplicative).
> 
> Did I get this right?

I don't think this is accurate. posix_acl_create() needs unmasked 'mode'
because instead of using current_umask() for masking it wants to use
whatever is stored in the ACLs as an umask.

So I still think we need to keep umask handling in both posix_acl_create()
and vfs_prepare_mode(). But filesystem's only obligation would be to call
posix_acl_create() if the inode is IS_POSIXACL. No more caring about when
to apply umask and when not based on config or mount options.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
