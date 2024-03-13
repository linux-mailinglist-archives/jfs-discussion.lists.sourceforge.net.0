Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D65C87DA1D
	for <lists+jfs-discussion@lfdr.de>; Sat, 16 Mar 2024 13:18:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rlSyu-0001Ki-TJ;
	Sat, 16 Mar 2024 12:17:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mforney@mforney.org>) id 1rkWui-0004tl-80
 for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Mar 2024 22:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:In-Reply-To:References:From:Subject:Cc:To:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JrhTyp84sWHbOiBAqJX2C5jIkkkaEpg/S6Nrn3IynAs=; b=j5kbuBXlHmXFT3lJP63j3TwRvr
 SqwhGnO0Q4vGqFyBbqMpk2N4gj3qC/NAEpzh2dC5Ta0Xo8fKXFGykGQleXHordbL+5VdbNYf2DzGO
 YhtkUHrqMzhPc+ZjpF3VGEv75HQzJEewbnwcKTmkb2Zolu7wSMt6AaytIxEfS/vguEOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
 In-Reply-To:References:From:Subject:Cc:To:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JrhTyp84sWHbOiBAqJX2C5jIkkkaEpg/S6Nrn3IynAs=; b=Y3dXLJQzKxZddtiWlEfEs8QJ1h
 hstvxws0tYRUq+V28VPuUGNmdiOYmR21V30XSsGgRkVrBZMva9Zv9mySZuBR0MV1ukME18fauZIxx
 Ur+/XUiynexAqnavDOW439PY1BzjdD9e8Xbf35lW8d0dsZ8nENhxI3za4eSM0lUdpF1E=;
Received: from mail-vs1-f54.google.com ([209.85.217.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rkWuX-0004WQ-FL for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Mar 2024 22:17:32 +0000
Received: by mail-vs1-f54.google.com with SMTP id
 ada2fe7eead31-47341f709c6so164731137.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 13 Mar 2024 15:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mforney.org; s=google; t=1710368236; x=1710973036; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:user-agent:message-id
 :in-reply-to:references:from:subject:cc:to:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=JrhTyp84sWHbOiBAqJX2C5jIkkkaEpg/S6Nrn3IynAs=;
 b=lFqNqpOp78TkI+ZemZ8sHbmX/H7CbxUPhPqoMXa4DPoaC/OOzXfacymERE+APQCRRI
 sI6ELrFAwjmzU1z1aOzLDDpII2IOobi7VqGTIycLyLOBII+v0gkfvAoK+wdzdnIitJJQ
 V0hhaioYouy9stCa9cm6DIWBoV+LZqsgTfYVbdpo1CH1PTVcLs2zAvdViq7USHNCLZeq
 shFdGZgoyYJ6cL/WngCUtRsGryDHrY++jzUmtX0WxaW56PuC1C3HheJVIoPprLhc2WVQ
 TBLbRYa1NMtHeEfDPsD/k6iUlkVhDa4/Ri22aRhDHkp9j1EGwts/+mCkQBRaPJpDfoCP
 rJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710368236; x=1710973036;
 h=content-transfer-encoding:mime-version:user-agent:message-id
 :in-reply-to:references:from:subject:cc:to:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JrhTyp84sWHbOiBAqJX2C5jIkkkaEpg/S6Nrn3IynAs=;
 b=OL4v/6GIlyEa6G99yflm+m1dkiH894PDGoiVSkG3KZj/HetLvvT0JfUIAM9Rj/8/5l
 sYycG2HO2v6XDtF4XGi1mVJxwXN+vlDLVVKharaI1DS9zytULxlDPQPMtvFJMAIFaqt/
 UpWJwlm6PstmiJCvz7haECq9cMTuYgpMViGYKNn3Hh8CMitiBrTcIPalGM5lh2r352dV
 BHPl02tXAP7pedjJ1ihgglepE7CFbnzhuULn8y+qvGyExeNvzvhW+aYCs1ElbRK7oj3y
 QgcIdBHBOme7pu3o6BbSVg4D7A+80UqYIQHV6eNjbGHp2fbN7x+4Mv9StdOceNRLw8DM
 ltnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUw9kWCQ+eeN+MTMdJ5R5llEmqr5QpeF0Kwv+hYlAcBgp1Y/i4J4lsDi/0eB1jhjguLpaF5w85LLLiW0r2/zKi6WUpox9p7+RQFpJEAqB8kHol9Vf4=
X-Gm-Message-State: AOJu0Yyqmx8jH7VHjlM5OxPffnEJYCFV9jdck+BqKZmoWZ3Qy8I2Pw3x
 pH21GeA2cQ8MJ4yeCOAiw7Gchpb6pdeAeHWmr2P0/H4xqfaFgFj+rzWlCprmFtNKNJD/VzLVyER
 Nf1ItVw==
X-Google-Smtp-Source: AGHT+IE/KQaRwJCmaxE7HGMWWWwC9HUvtwPSaTkkWMsQzRjSycKrqz980rtkW102JSTf6os/v9ns7A==
X-Received: by 2002:a17:902:ea05:b0:1dd:a12e:15c8 with SMTP id
 s5-20020a170902ea0500b001dda12e15c8mr5302773plg.33.1710362380873; 
 Wed, 13 Mar 2024 13:39:40 -0700 (PDT)
Received: from localhost ([2601:647:6400:20b0:16dd:a9ff:fee7:6b79])
 by smtp.gmail.com with ESMTPSA id
 b6-20020a170902d50600b001db693d89fdsm22392plg.179.2024.03.13.13.39.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Mar 2024 13:39:40 -0700 (PDT)
Date: Wed, 13 Mar 2024 13:40:46 -0700
To: Jan Kara <jack@suse.cz>
From: Michael Forney <mforney@mforney.org>
References: <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011170042.GA267994@mit.edu> <20231011172606.mztqyvclq6hq2qa2@quack3>
 <20231012142918.GB255452@mit.edu> <20231012144246.h3mklfe52gwacrr6@quack3>
In-Reply-To: <20231012144246.h3mklfe52gwacrr6@quack3>
Message-Id: <28DSITL9912E1.2LSZUVTGTO52Q@mforney.org>
User-Agent: mblaze/1.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jan Kara <jack@suse.cz> wrote: > On Thu 12-10-23 10:29:18,
 Theodore Ts'o wrote: > > On Wed, Oct 11, 2023 at 07:26:06PM +0200, Jan Kara
 wrote: > > > I don't think this is accurate. posix_acl_create() n [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rkWuX-0004WQ-FL
X-Mailman-Approved-At: Sat, 16 Mar 2024 12:17:44 +0000
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
 linux-ext4@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Jeff Layton <jlayton@kernel.org>, Max Kellermann <max.kellermann@ionos.com>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Jan Kara <jack@suse.cz> wrote:
> On Thu 12-10-23 10:29:18, Theodore Ts'o wrote:
> > On Wed, Oct 11, 2023 at 07:26:06PM +0200, Jan Kara wrote:
> > > I don't think this is accurate. posix_acl_create() needs unmasked 'mode'
> > > because instead of using current_umask() for masking it wants to use
> > > whatever is stored in the ACLs as an umask.
> > > 
> > > So I still think we need to keep umask handling in both posix_acl_create()
> > > and vfs_prepare_mode(). But filesystem's only obligation would be to call
> > > posix_acl_create() if the inode is IS_POSIXACL. No more caring about when
> > > to apply umask and when not based on config or mount options.
> > 
> > Ah, right, thanks for the clarification.  I *think* the following
> > patch in the ext4 dev branch (not yet in Linus's tree, but it should
> > be in linux-next) should be harmless, though, right?  And once we get
> > the changes in vfs_prepare_mode() we can revert in ext4 --- or do
> > folks I think I should just drop it from the ext4 dev branch now?
> 
> It definitely does no harm. As you say, you can revert it once the VFS
> changes land if you want.

I've been debugging why flatpak was always considering its database
corrupted, and found this commit to be the source of the issue.

$ ostree --repo=repo --mode=bare-user-only init
$ mkdir tree && umask 0 && ln -s target tree/symlink && umask 022
$ ostree --repo=repo commit --branch=foo tree/
c508e0564267b376661889b9016f8438bd6d39412078838f78856383fdd8ac2f
$ ostree --repo=repo fsck
Validating refs...
Validating refs in collections...
Enumerating commits...
Verifying content integrity of 1 commit objects...
fsck objects (1/4) [===          ]  25%
error: In commits c508e0564267b376661889b9016f8438bd6d39412078838f78856383fdd8ac2f: fsck content object a6b40a5400ed082fbe067d2c8397aab54046a089768651c392a36db46d24c1cd: Corrupted file object; checksum expected='a6b40a5400ed082fbe067d2c8397aab54046a089768651c392a36db46d24c1cd'
actual='6bdc88f9722f96dbd51735e381f8a1b0e01363e1d7ee2edbb474c091f83c3987'
$

Turns out that symlinks are inheriting umask on my system (which
has CONFIG_EXT4_FS_POSIX_ACL=n):

$ umask 022
$ ln -s target symlink
$ ls -l symlink
lrwxr-xr-x    1 michael  michael           6 Mar 13 13:28 symlink -> target
$

Looking at the referenced functions, posix_acl_create() returns
early before applying umask for symlinks, but ext4_init_acl() now
applies the umask unconditionally.

After reverting this commit, it works correctly. I am also unable
to reproduce the mentioned issue with O_TMPFILE after reverting the
commit. It seems that the bug was fixed properly in ac6800e279a2
('fs: Add missing umask strip in vfs_tmpfile'), and all branches
that have this ext4_init_acl patch already had ac6800e279a2 backported.

So I think this patch should be reverted, since the bug was already
fixed and it breaks symlink modes. If not, it should at least be
changed to not to apply the umask to symlinks.

> > commit 484fd6c1de13b336806a967908a927cc0356e312
> > Author: Max Kellermann <max.kellermann@ionos.com>
> > Date:   Tue Sep 19 10:18:23 2023 +0200
> > 
> >     ext4: apply umask if ACL support is disabled
> >     
> >     The function ext4_init_acl() calls posix_acl_create() which is
> >     responsible for applying the umask.  But without
> >     CONFIG_EXT4_FS_POSIX_ACL, ext4_init_acl() is an empty inline function,
> >     and nobody applies the umask.
> >     
> >     This fixes a bug which causes the umask to be ignored with O_TMPFILE
> >     on ext4:
> >     
> >      https://github.com/MusicPlayerDaemon/MPD/issues/558
> >      https://bugs.gentoo.org/show_bug.cgi?id=686142#c3
> >      https://bugzilla.kernel.org/show_bug.cgi?id=203625
> >     
> >     Reviewed-by: "J. Bruce Fields" <bfields@redhat.com>
> >     Cc: stable@vger.kernel.org
> >     Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
> >     Link: https://lore.kernel.org/r/20230919081824.1096619-1-max.kellermann@ionos.com
> >     Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> > 
> > diff --git a/fs/ext4/acl.h b/fs/ext4/acl.h
> > index 0c5a79c3b5d4..ef4c19e5f570 100644
> > --- a/fs/ext4/acl.h
> > +++ b/fs/ext4/acl.h
> > @@ -68,6 +68,11 @@ extern int ext4_init_acl(handle_t *, struct inode *, struct inode *);
> >  static inline int
> >  ext4_init_acl(handle_t *handle, struct inode *inode, struct inode *dir)
> >  {
> > +	/* usually, the umask is applied by posix_acl_create(), but if
> > +	   ext4 ACL support is disabled at compile time, we need to do
> > +	   it here, because posix_acl_create() will never be called */
> > +	inode->i_mode &= ~current_umask();
> > +
> >  	return 0;
> >  }
> >  #endif  /* CONFIG_EXT4_FS_POSIX_ACL */


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
