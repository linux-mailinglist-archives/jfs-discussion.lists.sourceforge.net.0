Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CBE3F4404
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 05:54:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mI10H-0001CF-29; Mon, 23 Aug 2021 03:52:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mI10F-0001C6-8s; Mon, 23 Aug 2021 03:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YXggvvJGU/2niaUKbO0v/QADh07U6yAQkyzAsFT18iI=; b=B8E0po+VDFaTuaHLAP2ETEBj1A
 3UNldYnrUuN5zcD8H1dhChIDKQOsmnj2ufMXgxvD3rPn1hDeUNIn3vVFZ9Quvygeqn0kGlGavDEo+
 zEyyvHQt0JRXnZw9SEMMQHSuY+SXtTp4LrZEiKTypbGRmM4u+1bF2di5XQYPF7g5y3IE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YXggvvJGU/2niaUKbO0v/QADh07U6yAQkyzAsFT18iI=; b=PgwdHPpxnhU3uUmlieAbU0l5GX
 RPzXi8NvVOWk3ykfnBSZN1rYGs+Eg+Kupo4K/ehQnSpLGUnvUKkE5LZt6SBJx59/6FtKkj2BqRynW
 f/kSv5YhMsl9y+36DqVs7YGyvWjgRBoO9o9fm73tJuF3eWYhcRy+ZC9J17y6VAPVUgeA=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mI10B-00FSvr-Ua; Mon, 23 Aug 2021 03:52:03 +0000
Received: by mail-lj1-f169.google.com with SMTP id h1so744702ljl.9;
 Sun, 22 Aug 2021 20:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YXggvvJGU/2niaUKbO0v/QADh07U6yAQkyzAsFT18iI=;
 b=pZP32dTVrxV6d9QTUL+O9qckLk62N9IB+Val0/rPOQR1n1iYwfJAB+oL5QQa+x7yia
 8sudterClxPPFYXYbjKVOiYQBJODWiEdMuEsZMG/95XGDieLJnC4GjUOPwnP2CUNQvni
 Mn3rX1lneiCluNph40bxp13w/LdlrFvtWKFORgR+V527c9LGpGI59VL7PuivrwP2wZI6
 Yklk3W7p+MFAyFXWlOLJaD4OpiD6zm/i7aWuDvuh+gSMXAu1yTHRnDv0IRwKyNm9CZKi
 SX9iNiLzvyRPZBFhsAcVz2VkypwASBts7PVFUB0OqezRk0mXX9a6sp8pIjfU4yNJLUFz
 v9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YXggvvJGU/2niaUKbO0v/QADh07U6yAQkyzAsFT18iI=;
 b=RRePI6c/ObOIIlGS3XE8aR1sE9yGeiFiwrUMiROi0gJd+ukau1Jwu7lCHLkS3N2ozY
 2u/YJEq4XVVKwQ7nAnnPo0fIIc151z/ZxOSxbbTvogEHYcKZF+9kuwaLBE4gxErN2ohw
 G9JO3r66fVoOvj+qsUHdzZe7BskJFIDnAmJ6SwpQ9eDrJ5rgiuJaiTO22IaAiGDhkFJ5
 v6pgLS4MHWHFhiw7ZE2bHEXqe9s9RlwEucSEDROwGiD5LmeWhtxTkyv0nm2HT5xnlZz2
 2jiuYpadMGFv8W66FCMK8+umR59VF+t2JJRC4NNjf7/ADJPksUGk4Jlv1HpJn65R+1eg
 YHkg==
X-Gm-Message-State: AOAM530iRv/CflXagYv1vjuUhkQwwIepyTckNMR4Ep19RrkKn0H/XS5H
 e+4jr/JogdTJALytZbOkpBs=
X-Google-Smtp-Source: ABdhPJxQkUy2TQf5bz8oPZZ/nk5Fv18rLXSwVovzoQWSVZCQ8h0Lla97sc/Sn/YkZYvNkwf86SIemQ==
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr26341146ljj.321.1629690713320; 
 Sun, 22 Aug 2021 20:51:53 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id n18sm1313191ljg.40.2021.08.22.20.51.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Aug 2021 20:51:52 -0700 (PDT)
Date: Mon, 23 Aug 2021 06:51:50 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210823035150.h3dor7hanhzua7lh@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-2-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-2-pali@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Aug 08, 2021 at 06:24:34PM +0200, Pali Rohár wrote:
    > Currently iocharset=utf8 mount option is broken and error is printed to
    > dmesg when it is used. To use UTF-8 as iocharset, it is required [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [kari.argillander[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.169 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.169 listed in wl.mailspike.net]
X-Headers-End: 1mI10B-00FSvr-Ua
Subject: Re: [Jfs-discussion] [RFC PATCH 01/20] fat: Fix iocharset=utf8
 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Aug 08, 2021 at 06:24:34PM +0200, Pali Roh=E1r wrote:
> Currently iocharset=3Dutf8 mount option is broken and error is printed to
> dmesg when it is used. To use UTF-8 as iocharset, it is required to use
> utf8=3D1 mount option.
> =

> Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8=3D1 mo=
unt
> option and remove printing error from dmesg.
> =

> FAT by definition is case-insensitive but current Linux implementation is
> case-sensitive for non-ASCII characters when UTF-8 is used. This patch do=
es
> not change this UTF-8 behavior. Only more comments in fat_utf8_strnicmp()
> function are added about it.
> =

> After this patch iocharset=3Dutf8 starts working, so there is no need to =
have
> separate config option FAT_DEFAULT_UTF8 as FAT_DEFAULT_IOCHARSET for utf8
> also starts working. So remove redundant config option FAT_DEFAULT_UTF8.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> ---
>  fs/fat/Kconfig      | 15 ---------------
>  fs/fat/dir.c        | 17 +++++++----------
>  fs/fat/fat.h        | 22 ++++++++++++++++++++++
>  fs/fat/inode.c      | 28 +++++++++++-----------------
>  fs/fat/namei_vfat.c | 26 +++++++++++++++++++-------
>  5 files changed, 59 insertions(+), 49 deletions(-)
> =

> diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
> index 66532a71e8fd..a31594137d5e 100644
> --- a/fs/fat/Kconfig
> +++ b/fs/fat/Kconfig
> @@ -100,18 +100,3 @@ config FAT_DEFAULT_IOCHARSET
>  =

>  	  Enable any character sets you need in File Systems/Native Language
>  	  Support.
> -
> -config FAT_DEFAULT_UTF8
> -	bool "Enable FAT UTF-8 option by default"
> -	depends on VFAT_FS
> -	default n
> -	help
> -	  Set this if you would like to have "utf8" mount option set
> -	  by default when mounting FAT filesystems.
> -
> -	  Even if you say Y here can always disable UTF-8 for
> -	  particular mount by adding "utf8=3D0" to mount options.
> -
> -	  Say Y if you use UTF-8 encoding for file names, N otherwise.
> -
> -	  See <file:Documentation/filesystems/vfat.rst> for more information.
> diff --git a/fs/fat/dir.c b/fs/fat/dir.c
> index c4a274285858..49fe8dc6e5f0 100644
> --- a/fs/fat/dir.c
> +++ b/fs/fat/dir.c
> @@ -33,11 +33,6 @@
>  #define FAT_MAX_UNI_CHARS	((MSDOS_SLOTS - 1) * 13 + 1)
>  #define FAT_MAX_UNI_SIZE	(FAT_MAX_UNI_CHARS * sizeof(wchar_t))
>  =

> -static inline unsigned char fat_tolower(unsigned char c)
> -{
> -	return ((c >=3D 'A') && (c <=3D 'Z')) ? c+32 : c;
> -}
> -
>  static inline loff_t fat_make_i_pos(struct super_block *sb,
>  				    struct buffer_head *bh,
>  				    struct msdos_dir_entry *de)
> @@ -258,10 +253,12 @@ static inline int fat_name_match(struct msdos_sb_in=
fo *sbi,
>  	if (a_len !=3D b_len)
>  		return 0;
>  =

> -	if (sbi->options.name_check !=3D 's')
> -		return !nls_strnicmp(sbi->nls_io, a, b, a_len);
> -	else
> +	if (sbi->options.name_check =3D=3D 's')
>  		return !memcmp(a, b, a_len);
> +	else if (sbi->options.utf8)
> +		return !fat_utf8_strnicmp(a, b, a_len);
> +	else
> +		return !nls_strnicmp(sbi->nls_io, a, b, a_len);
>  }
>  =

>  enum { PARSE_INVALID =3D 1, PARSE_NOT_LONGNAME, PARSE_EOF, };
> @@ -384,7 +381,7 @@ static int fat_parse_short(struct super_block *sb,
>  					de->lcase & CASE_LOWER_BASE);
>  		if (chl <=3D 1) {
>  			if (!isvfat)
> -				ptname[i] =3D nocase ? c : fat_tolower(c);
> +				ptname[i] =3D nocase ? c : fat_ascii_to_lower(c);
>  			i++;
>  			if (c !=3D ' ') {
>  				name_len =3D i;
> @@ -421,7 +418,7 @@ static int fat_parse_short(struct super_block *sb,
>  		if (chl <=3D 1) {
>  			k++;
>  			if (!isvfat)
> -				ptname[i] =3D nocase ? c : fat_tolower(c);
> +				ptname[i] =3D nocase ? c : fat_ascii_to_lower(c);
>  			i++;
>  			if (c !=3D ' ') {
>  				name_len =3D i;
> diff --git a/fs/fat/fat.h b/fs/fat/fat.h
> index 02d4d4234956..0cd15fb3b042 100644
> --- a/fs/fat/fat.h
> +++ b/fs/fat/fat.h
> @@ -310,6 +310,28 @@ static inline void fatwchar_to16(__u8 *dst, const wc=
har_t *src, size_t len)
>  #endif
>  }
>  =

> +static inline unsigned char fat_ascii_to_lower(unsigned char c)
> +{
> +	return ((c >=3D 'A') && (c <=3D 'Z')) ? c+32 : c;
> +}
> +
> +static inline int fat_utf8_strnicmp(const unsigned char *a,
> +				    const unsigned char *b,
> +				    int len)
> +{
> +	int i;
> +
> +	/*
> +	 * FIXME: UTF-8 doesn't provide FAT semantics
> +	 * Case-insensitive support is only for 7-bit ASCII characters
> +	 */
> +	for (i =3D 0; i < len; i++) {
> +		if (fat_ascii_to_lower(a[i]) !=3D fat_ascii_to_lower(b[i]))
> +			return 1;
> +	}
> +	return 0;
> +}
> +
>  /* fat/cache.c */
>  extern void fat_cache_inval_inode(struct inode *inode);
>  extern int fat_get_cluster(struct inode *inode, int cluster,
> diff --git a/fs/fat/inode.c b/fs/fat/inode.c
> index de0c9b013a85..f8c8a739f8f0 100644
> --- a/fs/fat/inode.c
> +++ b/fs/fat/inode.c
> @@ -957,7 +957,9 @@ static int fat_show_options(struct seq_file *m, struc=
t dentry *root)
>  		/* strip "cp" prefix from displayed option */
>  		seq_printf(m, ",codepage=3D%s", &sbi->nls_disk->charset[2]);
>  	if (isvfat) {
> -		if (sbi->nls_io)
> +		if (opts->utf8)
> +			seq_printf(m, ",iocharset=3Dutf8");

checkpatch will probably warn you about this.

WARNING: Prefer seq_puts to seq_printf

> +		else if (sbi->nls_io)
>  			seq_printf(m, ",iocharset=3D%s", sbi->nls_io->charset);
>  =

>  		switch (opts->shortname) {
> @@ -994,8 +996,6 @@ static int fat_show_options(struct seq_file *m, struc=
t dentry *root)
>  		if (opts->nocase)
>  			seq_puts(m, ",nocase");
>  	} else {
> -		if (opts->utf8)
> -			seq_puts(m, ",utf8");
>  		if (opts->unicode_xlate)
>  			seq_puts(m, ",uni_xlate");
>  		if (!opts->numtail)
> @@ -1157,8 +1157,6 @@ static int parse_options(struct super_block *sb, ch=
ar *options, int is_vfat,
>  	opts->errors =3D FAT_ERRORS_RO;
>  	*debug =3D 0;
>  =

> -	opts->utf8 =3D IS_ENABLED(CONFIG_FAT_DEFAULT_UTF8) && is_vfat;
> -
>  	if (!options)
>  		goto out;
>  =

> @@ -1319,10 +1317,14 @@ static int parse_options(struct super_block *sb, =
char *options, int is_vfat,
>  					| VFAT_SFN_CREATE_WIN95;
>  			break;
>  		case Opt_utf8_no:		/* 0 or no or false */
> -			opts->utf8 =3D 0;
> +			fat_reset_iocharset(opts);
>  			break;
>  		case Opt_utf8_yes:		/* empty or 1 or yes or true */
> -			opts->utf8 =3D 1;
> +			fat_reset_iocharset(opts);
> +			iocharset =3D kstrdup("utf8", GFP_KERNEL);
> +			if (!iocharset)
> +				return -ENOMEM;
> +			opts->iocharset =3D iocharset;
>  			break;
>  		case Opt_uni_xl_no:		/* 0 or no or false */
>  			opts->unicode_xlate =3D 0;
> @@ -1360,18 +1362,11 @@ static int parse_options(struct super_block *sb, =
char *options, int is_vfat,
>  	}
>  =

>  out:
> -	/* UTF-8 doesn't provide FAT semantics */
> -	if (!strcmp(opts->iocharset, "utf8")) {
> -		fat_msg(sb, KERN_WARNING, "utf8 is not a recommended IO charset"
> -		       " for FAT filesystems, filesystem will be "
> -		       "case sensitive!");
> -	}
> +	opts->utf8 =3D !strcmp(opts->iocharset, "utf8") && is_vfat;
>  =

>  	/* If user doesn't specify allow_utime, it's initialized from dmask. */
>  	if (opts->allow_utime =3D=3D (unsigned short)-1)
>  		opts->allow_utime =3D ~opts->fs_dmask & (S_IWGRP | S_IWOTH);
> -	if (opts->unicode_xlate)
> -		opts->utf8 =3D 0;
>  	if (opts->nfs =3D=3D FAT_NFS_NOSTALE_RO) {
>  		sb->s_flags |=3D SB_RDONLY;
>  		sb->s_export_op =3D &fat_export_ops_nostale;
> @@ -1832,8 +1827,7 @@ int fat_fill_super(struct super_block *sb, void *da=
ta, int silent, int isvfat,
>  		goto out_fail;
>  	}
>  =

> -	/* FIXME: utf8 is using iocharset for upper/lower conversion */
> -	if (sbi->options.isvfat) {
> +	if (sbi->options.isvfat && !sbi->options.utf8) {
>  		sbi->nls_io =3D load_nls(sbi->options.iocharset);
>  		if (!sbi->nls_io) {
>  			fat_msg(sb, KERN_ERR, "IO charset %s not found",
> diff --git a/fs/fat/namei_vfat.c b/fs/fat/namei_vfat.c
> index 5369d82e0bfb..efb3cb9ea8a8 100644
> --- a/fs/fat/namei_vfat.c
> +++ b/fs/fat/namei_vfat.c
> @@ -134,6 +134,7 @@ static int vfat_hash(const struct dentry *dentry, str=
uct qstr *qstr)
>  static int vfat_hashi(const struct dentry *dentry, struct qstr *qstr)
>  {
>  	struct nls_table *t =3D MSDOS_SB(dentry->d_sb)->nls_io;
> +	int utf8 =3D MSDOS_SB(dentry->d_sb)->options.utf8;
>  	const unsigned char *name;
>  	unsigned int len;
>  	unsigned long hash;
> @@ -142,8 +143,17 @@ static int vfat_hashi(const struct dentry *dentry, s=
truct qstr *qstr)
>  	len =3D vfat_striptail_len(qstr);
>  =

>  	hash =3D init_name_hash(dentry);
> -	while (len--)
> -		hash =3D partial_name_hash(nls_tolower(t, *name++), hash);
> +	if (utf8) {
> +		/*
> +		 * FIXME: UTF-8 doesn't provide FAT semantics
> +		 * Case-insensitive support is only for 7-bit ASCII characters
> +		 */
> +		while (len--)
> +			hash =3D partial_name_hash(fat_ascii_to_lower(*name++), hash);
> +	} else {
> +		while (len--)
> +			hash =3D partial_name_hash(nls_tolower(t, *name++), hash);
> +	}
>  	qstr->hash =3D end_name_hash(hash);
>  =

>  	return 0;
> @@ -156,16 +166,18 @@ static int vfat_cmpi(const struct dentry *dentry,
>  		unsigned int len, const char *str, const struct qstr *name)
>  {
>  	struct nls_table *t =3D MSDOS_SB(dentry->d_sb)->nls_io;
> +	int utf8 =3D MSDOS_SB(dentry->d_sb)->options.utf8;
>  	unsigned int alen, blen;
>  =

>  	/* A filename cannot end in '.' or we treat it like it has none */
>  	alen =3D vfat_striptail_len(name);
>  	blen =3D __vfat_striptail_len(len, str);
> -	if (alen =3D=3D blen) {
> -		if (nls_strnicmp(t, name->name, str, alen) =3D=3D 0)
> -			return 0;
> -	}
> -	return 1;
> +	if (alen !=3D blen)
> +		return 1;
> +	else if (utf8)
> +		return fat_utf8_strnicmp(name->name, str, alen);
> +	else
> +		return nls_strnicmp(t, name->name, str, alen);
>  }
>  =

>  /*
> -- =

> 2.20.1
> =



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
