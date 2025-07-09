Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CDAFF4BB
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Jul 2025 00:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hxXg6z9rkNzNdgIUBTOhtIG7QJdOJD1r9x19EUyJHZk=; b=fGfNspWYrZuIf3Nt22hBLJf+tg
	nnyX0wOIJpAjEsQ8Ky7CdPD+NhuISBT+K3yS5MpLAVNI4MuETLgDoZo2tIJRzdXLeZ1jOwmbQp82e
	1VDpqEs6LJyiZeVXCI+avfz6nWjsQXUGYw3Jfea0Rg6oCnkWuIamnGP0A8YCFNgOdlac=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uZdKl-000281-RS;
	Wed, 09 Jul 2025 22:32:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1uZdKk-00027k-Bf
 for jfs-discussion@lists.sourceforge.net;
 Wed, 09 Jul 2025 22:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X0vCCNe1kaK9nYgw+uNh0fKsxB1qET3iJlussJtaUx4=; b=Wk6jkkFHV2+caK9vfT+2oBTcei
 fnuWIBUgbRDa3DjuV29I5F8VHZKHD4l3GCWfvCyPBsL5Lc0EUsp0r6CNMdj2trf1YbRmIQVEa1//M
 0xsR8o+y7wVBEvQ6sakepoK/wfkgFTzXkSlLqmc6TPISicWRDgeb6LylU2g9//BDv5fI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X0vCCNe1kaK9nYgw+uNh0fKsxB1qET3iJlussJtaUx4=; b=D2dCpzBwvL1Ey5L6NBNLjcZIwU
 D/5zkHiHfoF194aDflPVcjDsfXhXuI4K9jMYG378PGRHJX3CoauYH75DsLry9t0HU/rS0pf13i+gU
 r7cd0CVA5iKXwdbNCGc6LtegyVCbFp7L+6SxMV4RkWvP8MQIV34renzJfymkriJEW1Cw=;
Received: from mail-lj1-f178.google.com ([209.85.208.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZdKj-0005U0-TC for jfs-discussion@lists.sourceforge.net;
 Wed, 09 Jul 2025 22:32:10 +0000
Received: by mail-lj1-f178.google.com with SMTP id
 38308e7fff4ca-32cd499007aso2349521fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 09 Jul 2025 15:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752100323; x=1752705123; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X0vCCNe1kaK9nYgw+uNh0fKsxB1qET3iJlussJtaUx4=;
 b=Fx+2MAM0YYqaJPJdjsJ+I3Q91KPx7dFm0Zq1dkHpWM5wzLQotRPlv8vTBZUJ31eSiK
 M5GGe4MJDOOnzZms2Bf6qw2/KzwZUEbJmAxy2+LsfiaFvtijMq/UU2UZLT8e17ijKaSE
 PmFiY839MkgCKSo3uBFcC0VBZFGo/A5t9ta6UgVxfXPCxw0JXjbosBxp2QEGquUmBbVm
 WiR32pXZuWiy/e3SUjdDpnZNv5ptaK4ELEBym77vcxVR+pFJyYxq6XSbkWw2xInoZxo8
 mDYRoVouTf+E0kh8C3H/zuT2yTPDc6A1XHLJfxHkb1DUBsH2zETqV8yUJKFHSrAQx4T8
 RVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752100323; x=1752705123;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X0vCCNe1kaK9nYgw+uNh0fKsxB1qET3iJlussJtaUx4=;
 b=ewxi11iXS2ACZyUvGJXsmdcVraQ3+md/dm0SMPf3aEDPn8G/YkDJy9bSEclqUm2hPU
 9qxHw1bDlbJb0tGUEVvCBfKVwa7jvhXbljqH4a4+27F3+qTtbnryvCl9YdiRssu04E88
 uOVfJGXQm7+8dSSSUVuhVWSTqUOh20G4SA9gj+PVtWwAO9cT8u0BfnT/whz0RdP28AWj
 Iq/o9DNeR5RIxCAKC/YSVO5JVER2/7nIYbD35kJ0/VljHHVxtvZMZeaSTz7xeAmwdA37
 GXUcEqMXbsrY9nkEFXmrF2iOrII+IaIPXECu+QzH7nqtRVg+z5v363On53S/I/yHBlrN
 tqtA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKG4Vx/rdaGGr0DI6FlGi+fEo1nCDvC8mALof+dFgwDmZGOMqWvm8Y+DHVNqykqtzdwdLVv971DQ9YMTNW6g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwGydwO+mJMaB6yHO6Vs/XprGBs7gW8aqtW7e5G943kd+ti3OaK
 qiQmF7BbLxcM4Yj8ghjCCx8wvjbBcHPc8Jm8zFJH0f1PKEx99YRk4G4AGUH/7KiDOYtkW2f4ig7
 VnCOJVWrzEPwX9MMgKGgsfPt6ZZGByAY=
X-Gm-Gg: ASbGncudCe7Cho6h76UjB+THa/Ea4FDaefDsD+kNaVRS9OVNJhZg8QGTPKWOlS6OC04
 OcydKAD4UoPTsmu0xXRY19t3pdQfr71KX+ScnQkPmln210/Hkb07YH4ePn98HyrHXtjnxB3XVQd
 7pz4KvQTVuY+/OZzbff/MuCqmLHu0MO+OqamV45IE99UIOcqaWcYN8jRKj5ENxonEA/TZfKVb8S
 Q3p
X-Google-Smtp-Source: AGHT+IFbXOlgT4ROOR21178XUwTpOomY4dhNIM2pkgyDfppMb4TnPhF1NlbJSd0RbHs++YsgJzW/IrfJpyvZLzydKWc=
X-Received: by 2002:a2e:a917:0:b0:32a:7dd7:ff47 with SMTP id
 38308e7fff4ca-32f485853d4mr15492511fa.30.1752100322919; Wed, 09 Jul 2025
 15:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <686d5a9f.050a0220.1ffab7.0015.GAE@google.com>
 <xrpmf6yj32iirfaumpbal6qxph7mkmgwtra7p4hpbvzozlp4zr@2bzl4p5ejgfj>
In-Reply-To: <xrpmf6yj32iirfaumpbal6qxph7mkmgwtra7p4hpbvzozlp4zr@2bzl4p5ejgfj>
Date: Thu, 10 Jul 2025 07:31:46 +0900
X-Gm-Features: Ac12FXw4eCeHGhJ1kXZFIcDPr8OZWRZX-aSMKBRl9njt_so4dWb4RcvDCVUSRDA
Message-ID: <CAKFNMomH8Ur3gOvps_vdbs3BU4C6UZBL7tDYxjPUG_29_Bo-8w@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 9, 2025 at 5:30 PM Jan Kara wrote: > > Hi! > >
 On Tue 08-07-25 10:51:27, syzbot wrote: > > syzbot found the following issue
 on: > > > > HEAD commit: d7b8f8e20813 Linux 6.16-rc5 > > git tre [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [konishi.ryusuke(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.178 listed in wl.mailspike.net]
X-Headers-End: 1uZdKj-0005U0-TC
Subject: Re: [Jfs-discussion] [syzbot] [nilfs?] kernel BUG in may_open (2)
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
From: Ryusuke Konishi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, brauner@kernel.org,
 linux-nilfs@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 mjguzik@gmail.com, viro@zeniv.linux.org.uk,
 syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKdWwgOSwgMjAyNSBhdCA1OjMw4oCvUE0gSmFuIEthcmEgd3JvdGU6Cj4KPiBIaSEK
Pgo+IE9uIFR1ZSAwOC0wNy0yNSAxMDo1MToyNywgc3l6Ym90IHdyb3RlOgo+ID4gc3l6Ym90IGZv
dW5kIHRoZSBmb2xsb3dpbmcgaXNzdWUgb246Cj4gPgo+ID4gSEVBRCBjb21taXQ6ICAgIGQ3Yjhm
OGUyMDgxMyBMaW51eCA2LjE2LXJjNQo+ID4gZ2l0IHRyZWU6ICAgICAgIHVwc3RyZWFtCj4gPiBj
b25zb2xlK3N0cmFjZTogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9
MTA3ZTcyOGM1ODAwMDAKPiA+IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94Ly5jb25maWc/eD03MmFhMDQ3NGUzYzNiOWFjCj4gPiBkYXNoYm9hcmQgbGluazog
aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPTg5NWMyM2Y2OTE3ZGE0NDBl
ZDBkCj4gPiBjb21waWxlcjogICAgICAgRGViaWFuIGNsYW5nIHZlcnNpb24gMjAuMS43ICgrKzIw
MjUwNjE2MDY1NzA4KzYxNDZhODhmNjA0OS0xfmV4cDF+MjAyNTA2MTYwNjU4MjYuMTMyKSwgRGVi
aWFuIExMRCAyMC4xLjcKPiA+IHN5eiByZXBybzogICAgICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94L3JlcHJvLnN5ej94PTExMzA1NTgyNTgwMDAwCj4gPiBDIHJlcHJvZHVjZXI6ICAg
aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5jP3g9MTA5NTJiZDQ1ODAwMDAK
PiA+Cj4gPiBEb3dubG9hZGFibGUgYXNzZXRzOgo+ID4gZGlzayBpbWFnZTogaHR0cHM6Ly9zdG9y
YWdlLmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvNjA1YjNlZGViMDMxL2Rpc2stZDdiOGY4
ZTIucmF3Lnh6Cj4gPiB2bWxpbnV4OiBodHRwczovL3N0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vc3l6
Ym90LWFzc2V0cy9hM2NiNmYzZWE0YTkvdm1saW51eC1kN2I4ZjhlMi54ego+ID4ga2VybmVsIGlt
YWdlOiBodHRwczovL3N0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vc3l6Ym90LWFzc2V0cy9jZDllMGM2
YTk5MjYvYnpJbWFnZS1kN2I4ZjhlMi54ego+ID4gbW91bnRlZCBpbiByZXBybzogaHR0cHM6Ly9z
dG9yYWdlLmdvb2dsZWFwaXMuY29tL3N5emJvdC1hc3NldHMvMmE3YWIyNzBhOGRhL21vdW50XzAu
Z3oKPiA+Cj4gPiBUaGUgaXNzdWUgd2FzIGJpc2VjdGVkIHRvOgo+ID4KPiA+IGNvbW1pdCBhZjE1
M2JiNjNhMzM2YTdjYTBkOWM4ZWY0Y2E5ODExOWM1MDIwMDMwCj4gPiBBdXRob3I6IE1hdGV1c3og
R3V6aWsgPG1qZ3V6aWtAZ21haWwuY29tPgo+ID4gRGF0ZTogICBTdW4gRmViIDkgMTg6NTU6MjEg
MjAyNSArMDAwMAo+ID4KPiA+ICAgICB2ZnM6IGNhdGNoIGludmFsaWQgbW9kZXMgaW4gbWF5X29w
ZW4oKQo+ID4KPiA+IGJpc2VjdGlvbiBsb2c6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNv
bS94L2Jpc2VjdC50eHQ/eD0xN2Y5NGE4YzU4MDAwMAo+ID4gZmluYWwgb29wczogICAgIGh0dHBz
Oi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTE0MDU0YThjNTgwMDAwCj4g
PiBjb25zb2xlIG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0
P3g9MTAwNTRhOGM1ODAwMDAKPiA+Cj4gPiBJTVBPUlRBTlQ6IGlmIHlvdSBmaXggdGhlIGlzc3Vl
LCBwbGVhc2UgYWRkIHRoZSBmb2xsb3dpbmcgdGFnIHRvIHRoZSBjb21taXQ6Cj4gPiBSZXBvcnRl
ZC1ieTogc3l6Ym90Kzg5NWMyM2Y2OTE3ZGE0NDBlZDBkQHN5emthbGxlci5hcHBzcG90bWFpbC5j
b20KPiA+IEZpeGVzOiBhZjE1M2JiNjNhMzMgKCJ2ZnM6IGNhdGNoIGludmFsaWQgbW9kZXMgaW4g
bWF5X29wZW4oKSIpCj4gPgo+ID4gVkZTX0JVR19PTl9JTk9ERSghSVNfQU5PTl9GSUxFKGlub2Rl
KSkgZW5jb3VudGVyZWQgZm9yIGlub2RlIGZmZmY4ODgwNzI0NzM1YjgKPgo+IEZXSVcgdGhlIHJl
cHJvZHVjZXIganVzdCBtb3VudHMgYSBmaWxlc3lzdGVtIGltYWdlIGFuZCBvcGVucyBhIGZpbGUg
dGhlcmUKPiB3aGljaCBjcmFzaGVzIGJlY2F1c2UgdGhlIGlub2RlIHR5cGUgaXMgaW52YWxpZC4g
V2hpY2ggc3VnZ2VzdHMgdGhlcmUncwo+IGluc3VmZmljaWVudCB2YWxpZGF0aW9uIG9mIGlub2Rl
IG1ldGFkYXRhIChpbiBwYXJ0aWN1bGFyIHRoZSBpbm9kZSBtb2RlKQo+IGJlaW5nIGxvYWRlZCBm
cm9tIHRoZSBkaXNrLi4uIFRoZXJlIGFyZSByZXByb2R1Y2VycyBpbiB0aGUgc3l6Ym90IGRhc2hi
b2FyZAo+IGZvciBuaWxmczIsIG50ZnMzLCBpc29mcywgamZzLiBJJ2xsIHRha2UgY2FyZSBvZiBp
c29mcywgYWRkZWQgb3RoZXIKPiBmaWxlc3lzdGVtIG1haW50YWluZXJzIHRvIENDLgo+Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIEhvbnphCgpUaGFuayB5b3UgZm9yIHRha2luZyB0aGUgaW5pdGlhdGl2ZSEKSSdsbCBkZWFs
IHdpdGggdGhlIG5pbGZzMiBpc3N1ZS4KCkZvciBjb252ZW5pZW5jZSwgdGhlIGNvcnJlc3BvbmRl
bmNlIGJldHdlZW4gdGhlIHJlcHJvZHVjZXJzIGFuZCBmaWxlCnN5c3RlbXMgbGlzdGVkIGluIHRo
ZSBzeXpib3QgZGFzaGJvYXJkIGF0IHRoZSBtb21lbnQgaXMgYXMgZm9sbG93czoKCkRldGVjdGlv
biB0aW1lICAgICAgRmlsZXN5c3RlbQoyMDI1LzA3LzA4IDEzOjAzICAgIGlzbzk2NjAKMjAyNS8w
Ny8wOCAxMjozNCAgICBudGZzMwoyMDI1LzA3LzA4IDEyOjA0ICAgIG5pbGZzMgoyMDI1LzA3LzA4
IDA0OjA2ICAgIG5pbGZzMgoyMDI1LzA3LzA4IDAyOjM5ICAgIG50ZnMzCjIwMjUvMDcvMDggMDE6
NDEgICAgamZzCjIwMjUvMDcvMDggMDE6NTYgICAgbmlsZnMyCjIwMjUvMDcvMDggMDE6MjEgICAg
bmlsZnMyCjIwMjUvMDcvMDggMDE6NTcgICAgaXNvOTY2MAoyMDI1LzA3LzA4IDAyOjE1ICAgIGpm
cwoyMDI1LzA3LzA4IDAxOjM0ICAgIG50ZnMzCgpUaGFua3MsClJ5dXN1a2UgS29uaXNoaQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
